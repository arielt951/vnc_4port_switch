import packet_pkg::*; // Needed for state_t and parameters

// =================================================================
// MODULE 1: FIFO ASSERTIONS
// =================================================================
module fifo_sva #(parameter DEPTH=8, parameter PACKET_WIDTH=16) (
    input logic clk,
    input logic rst_n,
    input logic rd_en,
    input logic fifo_empty,
    input logic [(PACKET_WIDTH >> 1) - 1 : 0] header_out,
    input logic [$clog2(DEPTH) - 1 : 0] rd_ptr,
    // We pass the memory array as an input to check it
    input logic [PACKET_WIDTH - 1 : 0] mem [DEPTH - 1 : 0]
);

    // 1. Underflow Check
    assert_underflow: assert property (
        @(posedge clk) disable iff (!rst_n)
        (rd_en && fifo_empty) |-> 0 
    ) else $error("[FIFO] Error: Read Enable asserted while FIFO is Empty!");

    // 2. Header Coherence (Glitch Check)
    assert_header_match: assert property (
        @(posedge clk) disable iff (!rst_n)
        (!fifo_empty) |-> (header_out == mem[rd_ptr][7:0])
    ) else $error("[FIFO] Error: header_out mismatch with memory!");

endmodule


// =================================================================
// MODULE 2: SWITCH PORT ASSERTIONS
// =================================================================
module port_sva (
    input logic clk,
    input logic rst_n,
    input logic fifo_empty,
    input state_t current_state
);

    // Safety: If FIFO is empty, we must be in IDLE or finishing TRANSMIT.
    property p_valid_state_when_empty;
        @(posedge clk) disable iff (!rst_n)
        (fifo_empty) |-> (current_state == IDLE || current_state == TRANSMIT);
    endproperty

    assert_valid_state_empty: assert property(p_valid_state_when_empty)
        else $error("[PORT_FSM] Error: FSM is in state %s but FIFO is empty!", current_state.name());

endmodule


// =================================================================
// MODULE 3: ARBITER ASSERTIONS
// =================================================================
module arbiter_sva (
    input logic clk,
    input logic rst_n,
    input logic [1:0] common_ptr,
    input logic [3:0] grant_bus,
    input logic [3:0] reqs_out0, reqs_out1, reqs_out2, reqs_out3,
    input logic [1:0] mux_sel0, mux_sel1, mux_sel2, mux_sel3,
    input logic active0, active1, active2, active3
);

    localparam NUM_PORTS = 4;

    // 1. Anti-Stuck Check
    assert_ptr_rotate: assert property (
        @(posedge clk) disable iff (!rst_n)
        common_ptr != $past(common_ptr)
    ) else $error("[ARBITER] Error: common_ptr is stuck! Deadlock risk.");

    // 2. Coherence Check (Generate Loop)
    generate
        for (genvar p = 0; p < NUM_PORTS; p++) begin : port_check
            for (genvar out = 0; out < NUM_PORTS; out++) begin : output_check
                
                logic requested_this_out;
                logic output_is_active;
                logic [1:0] output_sel;
                
                always_comb begin
                    case(p)
                        0: requested_this_out = reqs_out0[out];
                        1: requested_this_out = reqs_out1[out];
                        2: requested_this_out = reqs_out2[out];
                        3: requested_this_out = reqs_out3[out];
                    endcase
                    case(out)
                        0: begin output_is_active = active0; output_sel = mux_sel0; end
                        1: begin output_is_active = active1; output_sel = mux_sel1; end
                        2: begin output_is_active = active2; output_sel = mux_sel2; end
                        3: begin output_is_active = active3; output_sel = mux_sel3; end
                    endcase
                end

                // NOTE: Changed ##[0,1] to |-> (combinational implication) 
                // because grant and mux_sel change in the same cycle in your design.
                assert_coherence: assert property (
                    @(posedge clk) disable iff (!rst_n)
                    (grant_bus[p] && requested_this_out) |-> 
                    (output_is_active && output_sel == p[1:0])
                ) else $error("[ARBITER] Coherence Fail: Port %0d granted, expected Out %0d active/sel", p, out);

            end
        end
    endgenerate

endmodule