import packet_pkg::*;

module output_mux (
    input logic [($clog2(ADDR_WIDTH) - 1) : 0]  mux_sel,
    
    // Full 16-bit packets from the 4 ports
    input logic [(PACKET_WIDTH - 1) : 0] data_in0,
    input logic [(PACKET_WIDTH - 1) : 0] data_in1,
    input logic [(PACKET_WIDTH - 1) : 0] data_in2,
    input logic [(PACKET_WIDTH - 1) : 0] data_in3,
    
    input logic arb_active,
    
    // OUTPUTS: Split the packet back into components
    output logic [DATA_WIDTH - 1 : 0] data_out,
    output logic [ADDR_WIDTH - 1 : 0] target_out, // Added
    output logic [ADDR_WIDTH - 1 : 0] source_out, // Added
    output logic valid_out        
);

    logic [PACKET_WIDTH - 1 : 0] selected_pkt;

    always_comb begin
        // 1. Mux Logic: Select the winning packet
        case (mux_sel)
            2'b00: selected_pkt = data_in0;
            2'b01: selected_pkt = data_in1;
            2'b10: selected_pkt = data_in2;
            2'b11: selected_pkt = data_in3;
            default: selected_pkt = '0;
        endcase

        // 2. Drive Outputs
        if (arb_active) begin
            valid_out = 1'b1;
            
            // Deconstruct the packet: {Data, Target, Source}
            // Based on switch_port.sv line 35: {data_in, target_in, source_in}
            
            // Source is the bottom 4 bits [3:0]
            source_out = selected_pkt[ADDR_WIDTH-1 : 0];
            
            // Target is the next 4 bits [7:4]
            target_out = selected_pkt[(2*ADDR_WIDTH)-1 : ADDR_WIDTH];
            
            // Data is the top 8 bits [15:8]
            data_out   = selected_pkt[PACKET_WIDTH-1 : (2*ADDR_WIDTH)];
            
        end else begin
            valid_out  = 1'b0;
            data_out   = '0;
            target_out = '0;
            source_out = '0;
        end
    end

endmodule