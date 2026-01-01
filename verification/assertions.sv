import packet_pkg::*;

module fifo_sva #(parameter DEPTH=8, parameter PACKET_WIDTH=16) (
	input logic clk,
	input logic rst_n,
	input logic rd_en,
	input logic fifo_empty,
	input logic [($clog2(DEPTH) + 1) - 1 : 0] fifo_count, 
	input logic [(PACKET_WIDTH >> 1) - 1 : 0] header_out,
	input logic [$clog2(DEPTH) - 1 : 0] rd_ptr,
	input logic [PACKET_WIDTH - 1 : 0] mem [DEPTH - 1 : 0]
);

	assert_header_match: assert property (
		@(posedge clk) disable iff (!rst_n)
		(!fifo_empty) |-> (header_out == mem[rd_ptr][7:0])
	) else $error("[FIFO] Error: header_out mismatch with memory!");
	
	assert_flags_consistent: assert property (
			@(posedge clk) disable iff (!rst_n)
			(fifo_count == 0) |-> fifo_empty
		) else $error("[FIFO] Error: Count is 0 but Empty flag is low!");

endmodule

// =================================================================
// MODULE 2: SWITCH PORT ASSERTIONS
// =================================================================
module port_sva (
	input logic clk,
	input logic rst_n,
	input logic fifo_empty,
	input state_t current_state,
	
	// INPUTS FOR LOGIC CHECKS
	input logic grant,
	input logic pkt_valid,
	input p_type pkt_type,
	input logic [3:0] source_in,
	input logic [3:0] target_in,
	input logic read_en_fifo  // <--- NEW INPUT
);

	// 1. Safety: Valid State when Empty
	assert_valid_state_empty: assert property(
		@(posedge clk) disable iff (!rst_n)
		(fifo_empty) |-> (current_state == IDLE || current_state == TRANSMIT)
	) else $error("[PORT_FSM] Error: FSM is in state %s but FIFO is empty!", current_state.name());

	// 2. Wait for Grant Protocol
	assert_wait_for_grant: assert property(
		@(posedge clk) disable iff (!rst_n)
		(current_state == ARB_WAIT && !grant) |=> (current_state == ARB_WAIT)
	) else $error("[PORT_FSM] Error: FSM left ARB_WAIT without receiving a Grant!");

	// 3. Valid Packet Constraint
	assert_legal_routing: assert property (
		@(posedge clk) disable iff (!rst_n)
		(pkt_valid && pkt_type != BDP) |-> ((source_in & target_in) == 0)
	) else $error("[PORT] Error: Illegal Loopback! Src:%b Tgt:%b", source_in, target_in);

	// 4. STEP A: If Valid, Attempt to Route (Don't drop immediately)
	assert_no_drop_valid: assert property (
		@(posedge clk) disable iff (!rst_n)
		(current_state == ROUTE && pkt_valid) |=> (current_state == ARB_WAIT)
	) else $error("[PORT_FSM] FAIL: Valid Packet Dropped! (Went IDLE instead of WAIT). Packet Src:%b Tgt:%b", source_in, target_in);

	// 5. STEP B: Persistence (Don't give up while waiting)
	assert_dont_give_up: assert property (
		@(posedge clk) disable iff (!rst_n)
		(current_state == ARB_WAIT && !grant) |=> (current_state == ARB_WAIT)
	) else $error("[PORT_FSM] FAIL: Packet Dropped while waiting for Grant! Packet Src:%b Tgt:%b", source_in, target_in);

	// 6. STEP C: Output on Grant
	assert_transmit_on_grant: assert property (
		@(posedge clk) disable iff (!rst_n)
		(current_state == ARB_WAIT && grant) |=> (current_state == TRANSMIT)
	) else $error("[PORT_FSM] FAIL: Grant received but FSM did not Transmit! Packet Src:%b Tgt:%b", source_in, target_in);

	// 7. READ PROTOCOL
	// We confirm that a READ only happens when we are authorized to Transmit (Grant) or Drop.
	// Reading in any other state (IDLE, ROUTE with valid packet) is FORBIDDEN.
	assert_read_protocol: assert property (
		@(posedge clk) disable iff (!rst_n)
		read_en_fifo |-> (
			 (current_state == ARB_WAIT && grant) ||   // Legal Transmit
			 (current_state == ROUTE && !pkt_valid)    // Legal Drop
		)
	) else $error("[PORT_FSM] Error: Illegal FIFO Read! State: %s (Not Grant or Drop)", current_state.name());

endmodule

module arbiter_sva (
	input logic clk,
	input logic rst_n,
	input logic [1:0] common_ptr,
	input logic [3:0] reqs_out0, reqs_out1, reqs_out2, reqs_out3, // Fixed: Added Inputs
	input logic [3:0] grant_bus,
	input logic [3:0] port0_dst, port1_dst, port2_dst, port3_dst,
	input logic [1:0] mux_sel0, mux_sel1, mux_sel2, mux_sel3,
	input logic active0, active1, active2, active3
);

	localparam NUM_PORTS = 4;

	// FIX 1: Add ##1 delay to avoid reset glitch
	assert_ptr_rotate: assert property (
		@(posedge clk) disable iff (!rst_n)
		##1 (common_ptr != $past(common_ptr))
	) else $error("[ARBITER] Error: common_ptr is stuck! Deadlock risk.");

	generate
		for (genvar p = 0; p < NUM_PORTS; p++) begin : port_check
			for (genvar out = 0; out < NUM_PORTS; out++) begin : output_check
				
				logic requested_this_out;
				logic output_is_active;
				logic [1:0] output_sel;
				
				always_comb begin
					case(out) // Switched on 'out' to pick the correct request vector
						0: requested_this_out = reqs_out0[p]; 
						1: requested_this_out = reqs_out1[p]; 
						2: requested_this_out = reqs_out2[p]; 
						3: requested_this_out = reqs_out3[p]; 
					endcase
					case(out)
						0: begin output_is_active = active0; output_sel = mux_sel0; end
						1: begin output_is_active = active1; output_sel = mux_sel1; end
						2: begin output_is_active = active2; output_sel = mux_sel2; end
						3: begin output_is_active = active3; output_sel = mux_sel3; end
					endcase
				end

				// FIX 2: Changed |-> to |=> (Next Cycle)
				// Because grant is Comb, but Mux is Registered.
				assert_coherence: assert property (
					@(posedge clk) disable iff (!rst_n)
					(grant_bus[p] && requested_this_out) |=> 
					(output_is_active && output_sel == p[1:0])
				) else $error("[ARBITER] Coherence Fail: Port %0d granted, expected Out %0d active/sel", p, out);

			end
		end
	endgenerate

endmodule

// --------------------------------------------------------
// APPENDED FORMAL WRAPPER (Run this module as TOP)
// --------------------------------------------------------
module formal_env;
  import packet_pkg::*; // Ensure definitions are visible

  // 1. Generate Clock & Reset
  logic clk;
  logic rst_n;

  // 2. Instantiate Interfaces
  // This allows the Formal tool to "see" and drive the ports
  port_if port0(clk, rst_n);
  port_if port1(clk, rst_n);
  port_if port2(clk, rst_n);
  port_if port3(clk, rst_n);

  // 3. Instantiate the DUT
  switch_4port dut (
    .clk(clk),
    .rst_n(rst_n),
    .port0(port0),
    .port1(port1),
    .port2(port2),
    .port3(port3)
  );

  // 4. BIND ASSERTIONS
  
  // Bind FIFO (Targeting module 'fifo')
  bind fifo fifo_sva #(
      .DEPTH(packet_pkg::DEPTH), 
      .PACKET_WIDTH(packet_pkg::PACKET_WIDTH)
  ) i_fifo_props (
      .clk(clk),
      .rst_n(rst_n),
      .rd_en(rd_en),
      .fifo_empty(fifo_empty),
      .fifo_count(fifo_count),
      .header_out(header_out),
      .rd_ptr(rd_ptr),
      .mem(mem)
  );

  // Bind Switch Port (Targeting module 'switch_port')
  // We use the local 'header_out' signal which we confirmed exists in your RTL
  bind switch_port port_sva i_port_props (
      .clk(clk),
      .rst_n(rst_n),
      .fifo_empty(fifo_empty),
      .current_state(current_state),
      .grant(grant),
      .pkt_valid(pkt_valid),
      .pkt_type(pkt_type),
      .read_en_fifo(read_en_fifo),
      .source_in(header_out[3:0]), 
      .target_in(header_out[7:4])
  );

  // Bind Arbiter (Targeting module 'arbiter')
  bind arbiter arbiter_sva i_arb_props (.*);

endmodule