import packet_pkg::*;

module switch_collision_tb;

	// 1. Signals & Interfaces
	logic clk;
	logic rst_n;

	// 2. Interfaces
	port_if port0(clk, rst_n);
	port_if port1(clk, rst_n);
	port_if port2(clk, rst_n);
	port_if port3(clk, rst_n);

	// 3. DUT Instantiation
	switch_4port dut (
		.clk(clk), .rst_n(rst_n),
		.port0(port0), .port1(port1), .port2(port2), .port3(port3)
	);

	// 4. Clock Generation
	initial begin
		clk = 0;
		forever #5 clk = ~clk;
	end

	// =========================================================================
	// HELPER TASKS
	// =========================================================================

	task drive_pkt(int p_idx, packet pkt);
		pkt.print("DRIVING"); // Use the new print method
		
		// Sync to clock to start driving
		@(posedge clk);
		
		case(p_idx)
			0: begin 
				port0.valid_in <= 1'b1; 
				port0.source_in <= pkt.source; 
				port0.target_in <= pkt.target; 
				port0.data_in <= pkt.data; 
			end
			1: begin 
				port1.valid_in <= 1'b1; 
				port1.source_in <= pkt.source; 
				port1.target_in <= pkt.target; 
				port1.data_in <= pkt.data; 
			end
			2: begin 
				port2.valid_in <= 1'b1; 
				port2.source_in <= pkt.source; 
				port2.target_in <= pkt.target; 
				port2.data_in <= pkt.data; 
			end
			3: begin 
				port3.valid_in <= 1'b1; 
				port3.source_in <= pkt.source; 
				port3.target_in <= pkt.target; 
				port3.data_in <= pkt.data; 
			end
		endcase

		// Wait exactly 1 cycle
		@(posedge clk);

		// Clear signals to ensure data is up for ONLY 1 cycle
		case(p_idx)
			0: begin 
				port0.valid_in <= 1'b0; 
				port0.source_in <= '0; 
				port0.target_in <= '0; 
				port0.data_in <= '0; 
			end
			1: begin 
				port1.valid_in <= 1'b0; 
				port1.source_in <= '0; 
				port1.target_in <= '0; 
				port1.data_in <= '0; 
			end
			2: begin 
				port2.valid_in <= 1'b0; 
				port2.source_in <= '0; 
				port2.target_in <= '0; 
				port2.data_in <= '0; 
			end
			3: begin 
				port3.valid_in <= 1'b0; 
				port3.source_in <= '0; 
				port3.target_in <= '0; 
				port3.data_in <= '0; 
			end
		endcase
	endtask

	// =========================================================================
	// MAIN TEST SEQUENCE
	// =========================================================================
	initial begin
		// --- MOVED DECLARATIONS TO TOP OF BLOCK ---
		packet p0_pkt, p1_pkt, p2_pkt, p3_pkt;
		mdp_packet mdp_test;
		bdp_packet bdp_test;
		sdp_packet sdp_test;
		// ------------------------------------------

		$dumpfile("switch_collision.vcd");
		$dumpvars(0, switch_collision_tb);

		// Init & Reset
		rst_n = 0;
		repeat(5) @(posedge clk);
		rst_n = 1;
		repeat(5) @(posedge clk);

		$display("\n=== STARTING OOP COLLISION TESTS ===\n");

		// ---------------------------------------------------------------------
		// SCENARIO 1: MDP vs MDP (Identical Targets)
		// P0 -> {2,3}  AND  P1 -> {2,3}
		// ---------------------------------------------------------------------
		$display("--- SCENARIO 1: Multicast Clash (P0 vs P1 targeting P2 & P3) ---");
		
		fork
			begin
				// Create P0 Packet (Multicast)
				mdp_test = new("P0_MDP", 0); // Port 0
				if (!mdp_test.randomize() with { target == 4'b1100; data == 8'hA0; }) 
					$fatal("P0 Randomize Failed");
				drive_pkt(0, mdp_test);
			end
			begin
				// Create P1 Packet (Multicast)
				mdp_test = new("P1_MDP", 1); // Port 1
				if (!mdp_test.randomize() with { target == 4'b1100; data == 8'hB0; }) 
					$fatal("P1 Randomize Failed");
				drive_pkt(1, mdp_test);
			end
		join

		repeat(20) @(posedge clk);


		// ---------------------------------------------------------------------
		// SCENARIO 2: Broadcast vs Unicast
		// P2 -> Broadcast (All) vs P3 -> Unicast to P0
		// ---------------------------------------------------------------------
		$display("\n--- SCENARIO 2: Broadcast (P2) vs Unicast (P3 -> P0) ---");
		
		fork
			begin
				// P2 Broadcast
				bdp_test = new("P2_BDP", 2);
				// Turn OFF loopback check for Broadcast because 1111 overlaps with everything
				bdp_test.no_loopback_c.constraint_mode(0); 
				if (!bdp_test.randomize() with { data == 8'hFF; }) 
					$fatal("P2 Randomize Failed");
				drive_pkt(2, bdp_test);
			end
			begin
				// P3 Unicast
				sdp_test = new("P3_SDP", 3);
				if (!sdp_test.randomize() with { target == 4'b0001; data == 8'h33; }) 
					$fatal("P3 Randomize Failed");
				drive_pkt(3, sdp_test);
			end
		join

		repeat(25) @(posedge clk);


		// ---------------------------------------------------------------------
		// SCENARIO 3: "Traffic Jam"
		// ---------------------------------------------------------------------
		$display("\n--- SCENARIO 3: Three-way Multicast Chain Reaction ---");
		
		fork
			begin
				// P1 -> {P2, P3}
				mdp_test = new("P1_Traffic", 1);
				mdp_test.randomize() with { target == 4'b1100; data == 8'hDD; };
				drive_pkt(1, mdp_test);
			end
			begin
				// P3 -> Broadcast
				bdp_test = new("P3_Traffic", 3);
				bdp_test.no_loopback_c.constraint_mode(0); // Disable loopback check
				bdp_test.randomize() with { data == 8'hEE; };
				drive_pkt(3, bdp_test);
			end
		join
		
		// P1 sends another packet quickly
		repeat(1) @(posedge clk);
		mdp_test = new("P1_Followup", 1);
		mdp_test.randomize() with { target == 4'b0101; data == 8'hCC; }; // {P2, P0}
		drive_pkt(1, mdp_test);


		repeat(40) @(posedge clk);
		$display("\n=== TESTS FINISHED ===");
		$finish;
	end

	// Monitor remains same...
	always @(posedge clk) begin
		if (port0.valid_out) $display("   [RECV] @%0t Port 0 Output: %h", $time, port0.data_out);
		if (port1.valid_out) $display("   [RECV] @%0t Port 1 Output: %h", $time, port1.data_out);
		if (port2.valid_out) $display("   [RECV] @%0t Port 2 Output: %h", $time, port2.data_out);
		if (port3.valid_out) $display("   [RECV] @%0t Port 3 Output: %h", $time, port3.data_out);
	end

endmodule