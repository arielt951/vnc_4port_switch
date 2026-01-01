// dut_wrapper.sv
module dut_wrapper (
    input logic clk,
    input logic rst_n,
    // Pass the interfaces as generic "modports" or just unconnected interface handles
    port_if p0, 
    port_if p1, 
    port_if p2, 
    port_if p3
);

`ifdef SDF_ANNOTATE
    // =======================================================
    // GLS MODE: Connect to Flattened Netlist & Force Signals
    // =======================================================
    
    // 1. Force Ready Signals (Because they were optimized away)
    initial begin
        force p0.ready_out = 1'b1;
        force p1.ready_out = 1'b1;
        force p2.ready_out = 1'b1;
        force p3.ready_out = 1'b1;
    end

    // 2. Instantiate Netlist (Manual Flattened Connections)
    switch_4port impl (
        .clk              (clk),
        .rst_n            (rst_n),
        
        // Port 0
        .port0_clk        (clk),
        .port0_rst_n      (rst_n),
        .port0_valid_in   (p0.valid_in),
        .port0_source_in  (p0.source_in),
        .port0_target_in  (p0.target_in),
        .port0_data_in    (p0.data_in),
        .port0_valid_out  (p0.valid_out),
        .port0_source_out (p0.source_out),
        .port0_target_out (p0.target_out),
        .port0_data_out   (p0.data_out),
        
        // Port 1
        .port1_clk        (clk),
        .port1_rst_n      (rst_n),
        .port1_valid_in   (p1.valid_in),
        .port1_source_in  (p1.source_in),
        .port1_target_in  (p1.target_in),
        .port1_data_in    (p1.data_in),
        .port1_valid_out  (p1.valid_out),
        .port1_source_out (p1.source_out),
        .port1_target_out (p1.target_out),
        .port1_data_out   (p1.data_out),

        // Port 2
        .port2_clk        (clk),
        .port2_rst_n      (rst_n),
        .port2_valid_in   (p2.valid_in),
        .port2_source_in  (p2.source_in),
        .port2_target_in  (p2.target_in),
        .port2_data_in    (p2.data_in),
        .port2_valid_out  (p2.valid_out),
        .port2_source_out (p2.source_out),
        .port2_target_out (p2.target_out),
        .port2_data_out   (p2.data_out),

        // Port 3
        .port3_clk        (clk),
        .port3_rst_n      (rst_n),
        .port3_valid_in   (p3.valid_in),
        .port3_source_in  (p3.source_in),
        .port3_target_in  (p3.target_in),
        .port3_data_in    (p3.data_in),
        .port3_valid_out  (p3.valid_out),
        .port3_source_out (p3.source_out),
        .port3_target_out (p3.target_out),
        .port3_data_out   (p3.data_out)
    );

`else
    // =======================================================
    // RTL MODE: Clean Interface Connection
    // =======================================================
    
    // Assuming your RTL supported interface ports. 
    // If your RTL only supports wires, you copy the wiring from above 
    // but remove the extra 'force' and '_clk' lines.
    
    switch_4port impl (
        .clk(clk), 
        .rst_n(rst_n),
        .port0(p0), // Clean Interface passing
        .port1(p1),
        .port2(p2),
        .port3(p3)
    );

`endif

endmodule