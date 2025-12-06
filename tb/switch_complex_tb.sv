import packet_pkg::*;

module switch_complex_tb; // Renamed from switch_sequential_tb

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

	// Helper Task
	task drive_pkt(int p_idx, packet pkt);
		pkt.print("DRIVING");
		case(p_idx)
			0: begin port0.valid_in<=1; port0.source_in<=pkt.source; port0.target_in<=pkt.target; port0.data_in<=pkt.data; end
			1: begin port1.valid_in<=1; port1.source_in<=pkt.source; port1.target_in<=pkt.target; port1.data_in<=pkt.data; end
			2: begin port2.valid_in<=1; port2.source_in<=pkt.source; port2.target_in<=pkt.target; port2.data_in<=pkt.data; end
			3: begin port3.valid_in<=1; port3.source_in<=pkt.source; port3.target_in<=pkt.target; port3.data_in<=pkt.data; end
		endcase
		@(posedge clk);
		port0.valid_in<=0; port1.valid_in<=0; port2.valid_in<=0; port3.valid_in<=0;
	endtask

	// 5. Test Stimulus (Sequential Tests)
	initial begin
		sdp_packet sdp_test;

		$dumpfile("switch_complex.vcd");
		$dumpvars(0, switch_complex_tb);

		// --- INITIALIZATION ---
		rst_n = 0;
		repeat(5) @(posedge clk);
		rst_n = 1;
		repeat(2) @(posedge clk);

		$display("\n=== Starting Sequential Testbench ===");

		// TEST 1: Port 0 -> Port 1
		sdp_test = new("Seq1", 0);
		sdp_test.randomize() with { target == 4'b0010; data == 8'hAA; };
		drive_pkt(0, sdp_test);
		repeat(20) @(posedge clk);

		// TEST 2: Port 1 -> Port 2
		sdp_test = new("Seq2", 1);
		sdp_test.randomize() with { target == 4'b0100; data == 8'hBB; };
		drive_pkt(1, sdp_test);
		repeat(20) @(posedge clk);

		// TEST 3: Port 2 -> Port 3
		sdp_test = new("Seq3", 2);
		sdp_test.randomize() with { target == 4'b1000; data == 8'hCC; };
		drive_pkt(2, sdp_test);
		repeat(20) @(posedge clk);

		// TEST 4: Port 3 -> Port 0
		sdp_test = new("Seq4", 3);
		sdp_test.randomize() with { target == 4'b0001; data == 8'hDD; };
		drive_pkt(3, sdp_test);
		repeat(20) @(posedge clk);

		$display("\n=== Testbench Finished ===");
		$finish;
	end

	// Monitor
	always @(posedge clk) begin
		if (port0.valid_out) $display("   -> [Cycle %0t] RECV at Port 0: Data=%h", $time, port0.data_out);
		if (port1.valid_out) $display("   -> [Cycle %0t] RECV at Port 1: Data=%h", $time, port1.data_out);
		if (port2.valid_out) $display("   -> [Cycle %0t] RECV at Port 2: Data=%h", $time, port2.data_out);
		if (port3.valid_out) $display("   -> [Cycle %0t] RECV at Port 3: Data=%h", $time, port3.data_out);
	end

endmodule