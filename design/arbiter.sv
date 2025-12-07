import packet_pkg::*;
module arbiter (
    input  logic       clk,
    input  logic       rst_n,
    
    // Requests
    input logic [NUM_PORTS-1:0] port_reqs,

    // Destinations (One-hot masks)
    input  logic [ADDR_WIDTH-1:0] port0_dst, 
    input  logic [ADDR_WIDTH-1:0] port1_dst,
    input  logic [ADDR_WIDTH-1:0] port2_dst,
    input  logic [ADDR_WIDTH-1:0] port3_dst,

    // Outputs
    output logic [NUM_PORTS-1:0] grant_bus, 
    output logic [1:0] mux_sel0, mux_sel1, mux_sel2, mux_sel3,
    output logic active0, active1, active2, active3
);

    // Instead of independent ptr0..3, we use one pointer for the whole switch.
    // This ensures that in any given cycle, ONE port has priority on ALL outputs,
    // making it mathematically impossible to have a circular "All-or-Nothing" deadlock.
    logic [1:0] common_ptr;
    
    // Internal wires: Who won each specific output?
    logic [NUM_PORTS-1:0] win_out0, win_out1, win_out2, win_out3;
    
    // Transposed Request Vectors
    logic [NUM_PORTS-1:0] reqs_out0, reqs_out1, reqs_out2, reqs_out3;

    // -------------------------------------------------------------------------
    // Helper Function: Round Robin Picker
    // Selects the first requesting port starting from 'ptr'
    // -------------------------------------------------------------------------
    function automatic logic [3:0] pick_winner(input logic [NUM_PORTS-1:0] req_vec, input logic [1:0] ptr);
        logic [NUM_PORTS-1:0] winner = 4'b0000;
        case (ptr)
            2'd0: begin 
                if      (req_vec[0]) winner[0]=1; 
                else if (req_vec[1]) winner[1]=1; 
                else if (req_vec[2]) winner[2]=1; 
                else if (req_vec[3]) winner[3]=1; 
            end
            2'd1: begin 
                if      (req_vec[1]) winner[1]=1; 
                else if (req_vec[2]) winner[2]=1; 
                else if (req_vec[3]) winner[3]=1; 
                else if (req_vec[0]) winner[0]=1; 
            end
            2'd2: begin 
                if      (req_vec[2]) winner[2]=1; 
                else if (req_vec[3]) winner[3]=1; 
                else if (req_vec[0]) winner[0]=1; 
                else if (req_vec[1]) winner[1]=1; 
            end
            2'd3: begin 
                if      (req_vec[3]) winner[3]=1; 
                else if (req_vec[0]) winner[0]=1; 
                else if (req_vec[1]) winner[1]=1; 
                else if (req_vec[2]) winner[2]=1; 
            end
        endcase
        return winner;
    endfunction
    
    // -------------------------------------------------------------------------
    // Combinational Logic: Determine Winners and Grants
    // -------------------------------------------------------------------------
    always_comb begin
        // 1. Prepare Request Vectors for each Output
        // reqs_out0 contains the bit[0] from all 4 input ports
        reqs_out0 = {port3_dst[0], port2_dst[0], port1_dst[0], port0_dst[0]};
        reqs_out1 = {port3_dst[1], port2_dst[1], port1_dst[1], port0_dst[1]};
        reqs_out2 = {port3_dst[2], port2_dst[2], port1_dst[2], port0_dst[2]};
        reqs_out3 = {port3_dst[3], port2_dst[3], port1_dst[3], port0_dst[3]};
        
        // 2. Pick Local Winners
        win_out0 = pick_winner(reqs_out0, common_ptr);
        win_out1 = pick_winner(reqs_out1, common_ptr);
        win_out2 = pick_winner(reqs_out2, common_ptr);
        win_out3 = pick_winner(reqs_out3, common_ptr);

        // 3. Calculate Global Grants (All-or-Nothing)
        // A port only gets a grant if it won ALL the outputs it requested.
        grant_bus[0] = (port_reqs[0]) && (|port0_dst) && 
                       (!port0_dst[0] || win_out0[0]) && 
                       (!port0_dst[1] || win_out1[0]) && 
                       (!port0_dst[2] || win_out2[0]) && 
                       (!port0_dst[3] || win_out3[0]);

        grant_bus[1] = (port_reqs[1]) && (|port1_dst) && 
                       (!port1_dst[0] || win_out0[1]) && 
                       (!port1_dst[1] || win_out1[1]) && 
                       (!port1_dst[2] || win_out2[1]) && 
                       (!port1_dst[3] || win_out3[1]);

        grant_bus[2] = (port_reqs[2]) && (|port2_dst) && 
                       (!port2_dst[0] || win_out0[2]) && 
                       (!port2_dst[1] || win_out1[2]) && 
                       (!port2_dst[2] || win_out2[2]) && 
                       (!port2_dst[3] || win_out3[2]);

        grant_bus[3] = (port_reqs[3]) && (|port3_dst) && 
                       (!port3_dst[0] || win_out0[3]) && 
                       (!port3_dst[1] || win_out1[3]) && 
                       (!port3_dst[2] || win_out2[3]) && 
                       (!port3_dst[3] || win_out3[3]);
    end
    
    // -------------------------------------------------------------------------
    // Sequential Logic: Update Pointers and Drive Outputs
    // -------------------------------------------------------------------------
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ptr0 <= 0; ptr1 <= 0; ptr2 <= 0; ptr3 <= 0;
            active0 <= 0; active1 <= 0; active2 <= 0; active3 <= 0;
            mux_sel0 <= 0; mux_sel1 <= 0; mux_sel2 <= 0; mux_sel3 <= 0;
        end else begin
            
            // 1. Output Mux Activation (STALE DATA FIX)
            // Only set active if the winner actually got a Grant.
            active0 <= (win_out0[0] & grant_bus[0]) | (win_out0[1] & grant_bus[1]) | (win_out0[2] & grant_bus[2]) | (win_out0[3] & grant_bus[3]);
            active1 <= (win_out1[0] & grant_bus[0]) | (win_out1[1] & grant_bus[1]) | (win_out1[2] & grant_bus[2]) | (win_out1[3] & grant_bus[3]);
            active2 <= (win_out2[0] & grant_bus[0]) | (win_out2[1] & grant_bus[1]) | (win_out2[2] & grant_bus[2]) | (win_out2[3] & grant_bus[3]);
            active3 <= (win_out3[0] & grant_bus[0]) | (win_out3[1] & grant_bus[1]) | (win_out3[2] & grant_bus[2]) | (win_out3[3] & grant_bus[3]);

            // 2. Mux Select Encoding
            mux_sel0 <= (win_out0[1]) ? 2'd1 : (win_out0[2]) ? 2'd2 : (win_out0[3]) ? 2'd3 : 2'd0;
            mux_sel1 <= (win_out1[1]) ? 2'd1 : (win_out1[2]) ? 2'd2 : (win_out1[3]) ? 2'd3 : 2'd0;
            mux_sel2 <= (win_out2[1]) ? 2'd1 : (win_out2[2]) ? 2'd2 : (win_out2[3]) ? 2'd3 : 2'd0;
            mux_sel3 <= (win_out3[1]) ? 2'd1 : (win_out3[2]) ? 2'd2 : (win_out3[3]) ? 2'd3 : 2'd0;

            // 3. Pointer Rotation (DEADLOCK MITIGATION)
            // Rotate the pointer if a port won the local output arbitration, 
            // even if it was denied the global grant.
            
            //SMARTER ROTATION
            // -----------------------------------------------------------------
            // We rotate the global priority every clock cycle.
            // This ensures fairness and prevents starvation.
            // Even if nobody sends, we rotate (harmless). 
            // If deadlock occurs at ptr=0, next cycle ptr=1 will fix it.
            common_ptr <= common_ptr + 1'b1;
        end
    end
endmodule