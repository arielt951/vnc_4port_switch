import packet_pkg::*;

module switch_port (
  input  logic        clk,
  input  logic        rst_n,
  input  logic        valid_in,
  input  logic [ADDR_WIDTH-1:0]  source_in,
  input  logic [ADDR_WIDTH-1:0]  target_in,
  input  logic [DATA_WIDTH-1:0]  data_in,
  input  logic        grant,
  //4:1 mux interface  
  output logic [ADDR_WIDTH-1:0] pkt_dst, //to arbiter
  output logic [PACKET_WIDTH-1:0] fifo_data_out,
  //output logic valid_out
  output logic port_req

); 
logic fifo_full;
logic fifo_empty;
logic [DATA_WIDTH-1:0] header_out;

// State Encoding
state_t current_state, next_state;
p_type Packet_Type;
// Internal signals for Parser connection
p_type pkt_type;
logic  pkt_valid;
// internal control wire which connects between the fifo, arbiter and FSM
//logic fifo_pop , read_en_fifo;
  logic read_en_fifo;  
// Parser Instantiation
parser parser_inst (
	//inputs
	.source    (header_out[ADDR_WIDTH-1:0]), 
	.target    (header_out[DATA_WIDTH-1:ADDR_WIDTH]), 
	//outputs
	.pkt_type  (pkt_type),
	.pkt_valid (pkt_valid)
);
assign pkt_dst = header_out[DATA_WIDTH-1:ADDR_WIDTH]; //target for arbiter

//fifo instance
fifo port_fifo (
  //inputs
	.rst_n      (rst_n),
	.clk        (clk),
	.data_in    ({data_in, target_in, source_in}),
	.wr_en      (valid_in),
	.rd_en      (read_en_fifo), // grant from arbiter enables read
	//outputs
	.data_out   (fifo_data_out),
	.fifo_full  (fifo_full),
	.header_out (header_out), // for parser
	.fifo_empty (fifo_empty)
);
//assign read_en_fifo = (grant || fifo_pop);
// Implement FSM for packet flow
// -----------------------------------------------------------
// FSM LOGIC
// -----------------------------------------------------------
// 1. Sequential Logic: State Updates
always_ff @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		current_state <= IDLE;
		Packet_Type   <= ERR; // Reset packet type
	end else begin
		current_state <= next_state;
		// Latch Packet_Type only when we decide the packet is valid in ROUTE state
		if (current_state == ROUTE && pkt_valid) begin
			Packet_Type <= pkt_type;
		end
	end
end

// 2. Combinational Logic: Next State & Outputs
always_comb begin
	// Default assignments to prevent latches
	next_state      = current_state;
	//valid_out       = 1'b0; // Don't output data unless transmitting
	//fifo_pop        = 1'b0;
	port_req = 1'b0;
	read_en_fifo = 1'b0;
	
	
	case (current_state)
		
		// -----------------------------------------------------------------
		// STATE: IDLE
		// Wait for data to arrive in FIFO
		// -----------------------------------------------------------------
		IDLE: begin
			if (!fifo_empty) begin
				next_state = ROUTE;
			end else begin
				next_state = IDLE;
			end
		end

		// -----------------------------------------------------------------
		// STATE: ROUTE
		// Check Parser output. If valid -> Wait for Grant. If Bad -> Drop.
		// -----------------------------------------------------------------
		ROUTE: begin
			if (pkt_valid) begin
				// Valid packet: Move to Arbitration Wait
				next_state = ARB_WAIT;
				
			end else begin
				// Invalid packet: Drop it!
				read_en_fifo = 1'b1;
				next_state = IDLE;
			end
		end

		// -----------------------------------------------------------------
		// STATE: ARB_WAIT
		// Wait for external arbiter to grant permission
		// -----------------------------------------------------------------
		ARB_WAIT: begin
			// In Stage A (QA), you might force 'grant' to 1 in your testbench.
			port_req = 1'b1;
			if (grant) begin
				next_state = TRANSMIT;
				read_en_fifo = 1'b1; // Pop FIFO on transmit
			end
			else begin
				next_state = ARB_WAIT;
		end
		end
		// -----------------------------------------------------------------
		// STATE: TRANSMIT
		// Drive data out and pop FIFO
		// -----------------------------------------------------------------
		TRANSMIT: begin
			port_req = 1'b0;
			if(!fifo_empty) begin
				next_state = ROUTE; // NEXT PACKET
			end else begin
				next_state = IDLE; // All data sent, return to IDLE
			end
		end 
		default: next_state = IDLE;
	endcase
end

// -----------------------------------------------------------
// WHITE-BOX COVERAGE (Embedded)
// -----------------------------------------------------------
// This verification block is ignored by synthesis tools
// -----------------------------------------------------------
`ifndef SYNTHESIS
  covergroup port_fsm_cg @(posedge clk);
    option.per_instance = 1; // Report each port separately
    
    // 1. FSM State Coverage: Did we reach all states?
    cp_state: coverpoint current_state {
      bins idle      = {IDLE};
      bins route     = {ROUTE};
      bins arb_wait  = {ARB_WAIT};
      bins transmit  = {TRANSMIT};
    }

    // 2. FSM Transition Coverage: Did we follow valid paths?
    cp_trans: coverpoint current_state {
      bins idle_to_route     = (IDLE     => ROUTE);
      bins route_to_wait     = (ROUTE    => ARB_WAIT); // Valid
      bins route_to_idle     = (ROUTE    => IDLE);     // Drop
      bins wait_to_trans     = (ARB_WAIT => TRANSMIT); // Grant
      bins trans_to_idle     = (TRANSMIT => IDLE);     // Done
      bins trans_to_route    = (TRANSMIT => ROUTE);    // Next
    }

    // 3. FIFO Stress: Did we hit Empty and Full?
    cp_fifo_full: coverpoint fifo_full {
      bins not_full = {0};
      bins full     = {1};
    }
    
    cp_fifo_empty: coverpoint fifo_empty {
      bins not_empty = {0};
      bins empty     = {1};
    }

    // 4. Congestion: Are we waiting for Grant while full?
    cx_cong: cross cp_state, cp_fifo_full {
      bins cong_wait = binsof(cp_state.arb_wait) && binsof(cp_fifo_full.full);
    }
  endgroup

  // Instantiate the covergroup
  port_fsm_cg fsm_cg = new();
  
  // Optional: Print coverage at end of simulation for debugging
  final begin
      $display("Port FSM Coverage: %0.2f %%", fsm_cg.get_inst_coverage());
  end
`endif

endmodule

