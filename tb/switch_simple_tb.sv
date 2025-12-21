import packet_pkg::*;

module switch_simple_tb;

	// 1. Signals
	logic clk;
	logic rst_n;

	// 2. Interfaces
	port_if port0(clk, rst_n);
	port_if port1(clk, rst_n);
	port_if port2(clk, rst_n);
	port_if port3(clk, rst_n);

	// 3. DUT Instantiation
	switch_4port dut (
		.clk(clk),
		.rst_n(rst_n),
		.port0(port0),
		.port1(port1),
		.port2(port2),
		.port3(port3)
	);

	// 4. Clock Generation
	initial begin
		clk = 0;
		forever #5 clk = ~clk; 
	end

	// 5. Test Stimulus
	initial begin
		// Declarations
		sdp_packet simple_pkt;

		$dumpfile("switch_simple.vcd");
		$dumpvars(0, switch_simple_tb);

		// A. Initialization
		rst_n = 0;
		port0.valid_in = 0; port1.valid_in = 0; port2.valid_in = 0; port3.valid_in = 0;
		port0.data_in = 0;  port1.data_in = 0;  port2.data_in = 0;  port3.data_in = 0;
		
		$display("--- Starting Simulation ---");
		
		// B. Reset
		repeat(5) @(posedge clk);
		rst_n = 1;
		@(posedge clk);

		// C. Drive a Packet on Port 0 -> Destined for Port 1
		$display("Time %0t: Driving Packet on Port 0 -> Port 1", $time);
		
		simple_pkt = new("SimpleTest", 0); // Source Port 0
		simple_pkt.randomize() with { target == 4'b0010; data == 8'hAA; };
		
		// Manual Drive (Aligned with other TBs)
		port0.valid_in <= 1;
		port0.source_in <= simple_pkt.source;
		port0.target_in <= simple_pkt.target;
		port0.data_in   <= simple_pkt.data;
		
		@(posedge clk);
		port0.valid_in <= 0; // Pulse valid for 1 cycle

		// D. Wait and Observe
		repeat(20) @(posedge clk);
		
		$display("--- Simulation Finished ---");
		$finish;
	end

	// 6. Simple Monitor
	always @(posedge clk) begin
		if (port1.valid_out) begin
			$display("SUCCESS: Time %0t: Packet Received at Port 1! Data=%h", $time, port1.data_out);
		end
	end

endmodule