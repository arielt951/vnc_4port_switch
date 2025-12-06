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
	task drive_pkt(int p_idx, packet pkt);
		pkt.print("DRIVING");
		
		// Select the correct interface based on index
		case(p_idx)
			0: begin 
				port0.valid_in<=1; 
				port0.source_in<=pkt.source; 
				port0.target_in<=pkt.target; 
				port0.data_in<=pkt.data; 
			end
			1: begin 
				port1.valid_in<=1; 
				port1.source_in<=pkt.source; 
				port1.target_in<=pkt.target; 
				port1.data_in<=pkt.data; 
			end
			2: begin 
				port2.valid_in<=1; 
				port2.source_in<=pkt.source; 
				port2.target_in<=pkt.target; 
				port2.data_in<=pkt.data; 
			end
			3: begin 
				port3.valid_in<=1; 
				port3.source_in<=pkt.source; 
				port3.target_in<=pkt.target; 
				port3.data_in<=pkt.data; 
			end
		endcase

		@(posedge clk);
		
		// Clear Valid
		port0.valid_in<=0; port1.valid_in<=0; port2.valid_in<=0; port3.valid_in<=0;
	endtask

	// =========================================================================
	// TEST SEQUENCE
	// =========================================================================
	initial begin
		// Declarations
		sdp_packet sdp_pkt;
		mdp_packet mdp_pkt;
		bdp_packet bdp_pkt;

		$dumpfile("switch_types.vcd");
		$dumpvars(0, switch_types_tb);

		// Init
		rst_n = 0;
		port0.valid_in=0; port1.valid_in=0; port2.valid_in=0; port3.valid_in=0;

		repeat(5) @(posedge clk);
		rst_n = 1;
		repeat(5) @(posedge clk);

		$display("\n=== STARTING PACKET TYPE VERIFICATION (ALL PORTS) ===\n");

		// -----------------------------------------------------------------
		// PORT 0 SENDER
		// -----------------------------------------------------------------
		$display("--- Testing PORT 0 Sender ---");
		
		// SDP: Port 0 -> Port 1
		sdp_pkt = new("P0_SDP", 0);
		sdp_pkt.randomize() with { target == 4'b0010; data == 8'hA1; };
		drive_pkt(0, sdp_pkt);
		repeat(15) @(posedge clk); 

		// MDP: Port 0 -> Port 2 & 3 (Target 1100)
		mdp_pkt = new("P0_MDP", 0);
		mdp_pkt.randomize() with { target == 4'b1100; data == 8'hA2; };
		drive_pkt(0, mdp_pkt);
		repeat(15) @(posedge clk);

		// BDP: Port 0 -> ALL (Target 1111)
		bdp_pkt = new("P0_BDP", 0);
		bdp_pkt.no_loopback_c.constraint_mode(0); // Allow broadcast
		bdp_pkt.randomize() with { data == 8'hA3; };
		drive_pkt(0, bdp_pkt);
		repeat(15) @(posedge clk);

		$display("\n=== TESTS FINISHED ===");
		$finish;
	end

	// Monitor
	always @(posedge clk) begin
		if (port0.valid_out) $display("   [OUT] Port 0 Received: Data=%h", port0.data_out);
		if (port1.valid_out) $display("   [OUT] Port 1 Received: Data=%h", port1.data_out);
		if (port2.valid_out) $display("   [OUT] Port 2 Received: Data=%h", port2.data_out);
		if (port3.valid_out) $display("   [OUT] Port 3 Received: Data=%h", port3.data_out);
	end

endmodule