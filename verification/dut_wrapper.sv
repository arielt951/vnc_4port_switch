module dut_wrapper (
	input logic clk,
	input logic rst_n,
	port_if p0, 
	port_if p1, 
	port_if p2, 
	port_if p3
);

`ifdef SDF_ANNOTATE
	// =======================================================
	// GLS MODE: Bridge Wires (Logic -> Wire -> Inout)
	// =======================================================
	
	// -------------------------------------------------------
	// 1. Declare Wires (Required for Netlist inout ports)
	// -------------------------------------------------------
	// Port 0
	wire        w_p0_valid_in;
	wire [3:0]  w_p0_source_in;
	wire [3:0]  w_p0_target_in;
	wire [7:0]  w_p0_data_in;
	wire        w_p0_valid_out;
	wire [3:0]  w_p0_source_out;
	wire [3:0]  w_p0_target_out;
	wire [7:0]  w_p0_data_out;

	// Port 1
	wire        w_p1_valid_in;
	wire [3:0]  w_p1_source_in;
	wire [3:0]  w_p1_target_in;
	wire [7:0]  w_p1_data_in;
	wire        w_p1_valid_out;
	wire [3:0]  w_p1_source_out;
	wire [3:0]  w_p1_target_out;
	wire [7:0]  w_p1_data_out;

	// Port 2
	wire        w_p2_valid_in;
	wire [3:0]  w_p2_source_in;
	wire [3:0]  w_p2_target_in;
	wire [7:0]  w_p2_data_in;
	wire        w_p2_valid_out;
	wire [3:0]  w_p2_source_out;
	wire [3:0]  w_p2_target_out;
	wire [7:0]  w_p2_data_out;

	// Port 3
	wire        w_p3_valid_in;
	wire [3:0]  w_p3_source_in;
	wire [3:0]  w_p3_target_in;
	wire [7:0]  w_p3_data_in;
	wire        w_p3_valid_out;
	wire [3:0]  w_p3_source_out;
	wire [3:0]  w_p3_target_out;
	wire [7:0]  w_p3_data_out;

	// -------------------------------------------------------
	// 2. Assign Directions (Bridge Interface <-> Wires)
	// -------------------------------------------------------
	
	// PORT 0
	assign w_p0_valid_in   = p0.valid_in;   // Drive Wire from Interface
	assign w_p0_source_in  = p0.source_in;
	assign w_p0_target_in  = p0.target_in;
	assign w_p0_data_in    = p0.data_in;
	
	assign p0.valid_out    = w_p0_valid_out; // Drive Interface from Wire
	assign p0.source_out   = w_p0_source_out;
	assign p0.target_out   = w_p0_target_out;
	assign p0.data_out     = w_p0_data_out;

	// PORT 1
	assign w_p1_valid_in   = p1.valid_in;
	assign w_p1_source_in  = p1.source_in;
	assign w_p1_target_in  = p1.target_in;
	assign w_p1_data_in    = p1.data_in;
	
	assign p1.valid_out    = w_p1_valid_out;
	assign p1.source_out   = w_p1_source_out;
	assign p1.target_out   = w_p1_target_out;
	assign p1.data_out     = w_p1_data_out;

	// PORT 2
	assign w_p2_valid_in   = p2.valid_in;
	assign w_p2_source_in  = p2.source_in;
	assign w_p2_target_in  = p2.target_in;
	assign w_p2_data_in    = p2.data_in;
	
	assign p2.valid_out    = w_p2_valid_out;
	assign p2.source_out   = w_p2_source_out;
	assign p2.target_out   = w_p2_target_out;
	assign p2.data_out     = w_p2_data_out;

	// PORT 3
	assign w_p3_valid_in   = p3.valid_in;
	assign w_p3_source_in  = p3.source_in;
	assign w_p3_target_in  = p3.target_in;
	assign w_p3_data_in    = p3.data_in;
	
	assign p3.valid_out    = w_p3_valid_out;
	assign p3.source_out   = w_p3_source_out;
	assign p3.target_out   = w_p3_target_out;
	assign p3.data_out     = w_p3_data_out;


	// -------------------------------------------------------
	// 3. Connect Wires to Netlist
	// -------------------------------------------------------
	switch_4port impl (
		.clk              (clk),
		.rst_n            (rst_n),
		
		// Port 0
		//.port0_clk        (clk),
		//.port0_rst_n      (rst_n),
		.port0_valid_in   (w_p0_valid_in),  // Connect WIRE, not Interface
		.port0_source_in  (w_p0_source_in),
		.port0_target_in  (w_p0_target_in),
		.port0_data_in    (w_p0_data_in),
		.port0_valid_out  (w_p0_valid_out),
		.port0_source_out (w_p0_source_out),
		.port0_target_out (w_p0_target_out),
		.port0_data_out   (w_p0_data_out),
		
		// Port 1
		//.port1_clk        (clk),
		//.port1_rst_n      (rst_n),
		.port1_valid_in   (w_p1_valid_in),
		.port1_source_in  (w_p1_source_in),
		.port1_target_in  (w_p1_target_in),
		.port1_data_in    (w_p1_data_in),
		.port1_valid_out  (w_p1_valid_out),
		.port1_source_out (w_p1_source_out),
		.port1_target_out (w_p1_target_out),
		.port1_data_out   (w_p1_data_out),

		// Port 2
		//.port2_clk        (clk),
		//.port2_rst_n      (rst_n),
		.port2_valid_in   (w_p2_valid_in),
		.port2_source_in  (w_p2_source_in),
		.port2_target_in  (w_p2_target_in),
		.port2_data_in    (w_p2_data_in),
		.port2_valid_out  (w_p2_valid_out),
		.port2_source_out (w_p2_source_out),
		.port2_target_out (w_p2_target_out),
		.port2_data_out   (w_p2_data_out),

		// Port 3
		//.port3_clk        (clk),
		//.port3_rst_n      (rst_n),
		.port3_valid_in   (w_p3_valid_in),
		.port3_source_in  (w_p3_source_in),
		.port3_target_in  (w_p3_target_in),
		.port3_data_in    (w_p3_data_in),
		.port3_valid_out  (w_p3_valid_out),
		.port3_source_out (w_p3_source_out),
		.port3_target_out (w_p3_target_out),
		.port3_data_out   (w_p3_data_out)
	);

`else
	// =======================================================
	// RTL MODE: Clean Connection
	// =======================================================
	switch_4port impl (
		.clk(clk), 
		.rst_n(rst_n),
		.port0(p0), 
		.port1(p1),
		.port2(p2),
		.port3(p3)
	);
`endif

endmodule