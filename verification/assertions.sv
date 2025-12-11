import packet_pkg::*;

module fifo_sva #(parameter DEPTH=8, parameter PACKET_WIDTH=16) (
	input logic clk,
	input logic rst_n,
	input logic rd_en,
	input logic fifo_empty,
	input logic [(PACKET_WIDTH >> 1) - 1 : 0] header_out,
	input logic [$clog2(DEPTH) - 1 : 0] rd_ptr,
	input logic [PACKET_WIDTH - 1 : 0] mem [DEPTH - 1 : 0]
);

	assert_underflow: assert property (
		@(posedge clk) disable iff (!rst_n)
		(rd_en && fifo_empty) |-> 0 
	) else $error("[FIFO] Error: Read Enable asserted while FIFO is Empty!");

	assert_header_match: assert property (
		@(posedge clk) disable iff (!rst_n)
		(!fifo_empty) |-> (header_out == mem[rd_ptr][7:0])
	) else $error("[FIFO] Error: header_out mismatch with memory!");

endmodule

module port_sva (
	input logic clk,
	input logic rst_n,
	input logic fifo_empty,
	input state_t current_state
);

	property p_valid_state_when_empty;
		@(posedge clk) disable iff (!rst_n)
		(fifo_empty) |-> (current_state == IDLE || current_state == TRANSMIT);
	endproperty

	assert_valid_state_empty: assert property(p_valid_state_when_empty)
		else $error("[PORT_FSM] Error: FSM is in state %s but FIFO is empty!", current_state.name());

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