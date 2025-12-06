import packet_pkg::*;
module switch_types_tb;

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

	// =========================================================================
	// HELPER TASK: Drive Packet
	// =========================================================================
	task drive_pkt(int p_idx, logic [3:0] src, logic [3:0] tgt, logic [7:0] payload, string type_name);
		$display("[%0t] DRIVING Port %0d: Type=%s (Tgt=%b) Data=%h", $time, p_idx, type_name, tgt, payload);
		
		// Select the correct interface based on index
		case(p_idx)
			0: begin port0.valid_in=1; port0.source_in=src; port0.target_in=tgt; port0.data_in=payload; end
			1: begin port1.valid_in=1; port1.source_in=src; port1.target_in=tgt; port1.data_in=payload; end
			2: begin port2.valid_in=1; port2.source_in=src; port2.target_in=tgt; port2.data_in=payload; end
			3: begin port3.valid_in=1; port3.source_in=src; port3.target_in=tgt; port3.data_in=payload; end
		endcase

		@(posedge clk);
		
		// Clear Valid
		port0.valid_in=0; port1.valid_in=0; port2.valid_in=0; port3.valid_in=0;
	endtask

	// =========================================================================
	// TEST SEQUENCE
	// =========================================================================
	initial begin
		$dumpfile("switch_types.vcd");
		$dumpvars(0, switch_types_tb);

		// Init
		rst_n = 0;
		port0.valid_in=0; port1.valid_in=0; port2.valid_in=0; port3.valid_in=0;
		port0.source_in=0; port0.target_in=0; port0.data_in=0;
		// ... (others default to 0 via interface logic usually, but safe to init)

		repeat(5) @(posedge clk);
		rst_n = 1;
		repeat(5) @(posedge clk);

		$display("\n=== STARTING PACKET TYPE VERIFICATION (ALL PORTS) ===\n");

		// -----------------------------------------------------------------
		// PORT 0 SENDER
		// -----------------------------------------------------------------
		$display("--- Testing PORT 0 Sender ---");
		
		// SDP: Port 0 -> Port 1
		drive_pkt(0, 4'b0001, 4'b0010, 8'hA1, "SDP"); 
		repeat(15) @(posedge clk); 

		// MDP: Port 0 -> Port 2 & 3 (Target 1100)
		drive_pkt(0, 4'b0001, 4'b1100, 8'hA2, "MDP");
		repeat(15) @(posedge clk);

		// BDP: Port 0 -> ALL (Target 1111)
		drive_pkt(0, 4'b0001, 4'b1111, 8'hA3, "BDP");
		repeat(15) @(posedge clk);


		// -----------------------------------------------------------------
		// PORT 1 SENDER
		// -----------------------------------------------------------------
		$display("\n--- Testing PORT 1 Sender ---");

		// SDP: Port 1 -> Port 3
		drive_pkt(1, 4'b0010, 4'b1000, 8'hB1, "SDP");
		repeat(15) @(posedge clk);

		// MDP: Port 1 -> Port 0 & 2 (Target 0101)
		drive_pkt(1, 4'b0010, 4'b0101, 8'hB2, "MDP");
		repeat(15) @(posedge clk);

		// BDP: Port 1 -> ALL
		drive_pkt(1, 4'b0010, 4'b1111, 8'hB3, "BDP");
		repeat(15) @(posedge clk);


		// -----------------------------------------------------------------
		// PORT 2 SENDER
		// -----------------------------------------------------------------
		$display("\n--- Testing PORT 2 Sender ---");

		// SDP: Port 2 -> Port 0
		drive_pkt(2, 4'b0100, 4'b0001, 8'hC1, "SDP");
		repeat(15) @(posedge clk);

		// MDP: Port 2 -> Port 1 & 3 (Target 1010)
		drive_pkt(2, 4'b0100, 4'b1010, 8'hC2, "MDP");
		repeat(15) @(posedge clk);

		// BDP: Port 2 -> ALL
		drive_pkt(2, 4'b0100, 4'b1111, 8'hC3, "BDP");
		repeat(15) @(posedge clk);


		// -----------------------------------------------------------------
		// PORT 3 SENDER
		// -----------------------------------------------------------------
		$display("\n--- Testing PORT 3 Sender ---");

		// SDP: Port 3 -> Port 2
		drive_pkt(3, 4'b1000, 4'b0100, 8'hD1, "SDP");
		repeat(15) @(posedge clk);

		// MDP: Port 3 -> Port 0 & 1 (Target 0011)
		drive_pkt(3, 4'b1000, 4'b0011, 8'hD2, "MDP");
		repeat(15) @(posedge clk);

		// BDP: Port 3 -> ALL
		drive_pkt(3, 4'b1000, 4'b1111, 8'hD3, "BDP");
		repeat(15) @(posedge clk);

		$display("\n=== TESTS FINISHED ===");
		$finish;
	end

	// =========================================================================
	// MONITORING
	// =========================================================================
	// This block automatically prints whenever a packet comes OUT of any port
	always @(posedge clk) begin
		if (port0.valid_out) $display("   [OUT] Port 0 Received: Data=%h", port0.data_out);
		if (port1.valid_out) $display("   [OUT] Port 1 Received: Data=%h", port1.data_out);
		if (port2.valid_out) $display("   [OUT] Port 2 Received: Data=%h", port2.data_out);
		if (port3.valid_out) $display("   [OUT] Port 3 Received: Data=%h", port3.data_out);
	end

endmodule