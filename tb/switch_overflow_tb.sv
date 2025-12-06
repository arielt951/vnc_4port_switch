import packet_pkg::*;

module switch_overflow_tb;

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

	// Drive Packet Task: Precise 1-cycle drive
	task drive_pkt(int p_idx, packet pkt);
		pkt.print("DRIVING");
		
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

		// Clear signals
		case(p_idx)
			0: begin port0.valid_in <= 1'b0; port0.source_in <= '0; port0.target_in <= '0; port0.data_in <= '0; end
			1: begin port1.valid_in <= 1'b0; port1.source_in <= '0; port1.target_in <= '0; port1.data_in <= '0; end
			2: begin port2.valid_in <= 1'b0; port2.source_in <= '0; port2.target_in <= '0; port2.data_in <= '0; end
			3: begin port3.valid_in <= 1'b0; port3.source_in <= '0; port3.target_in <= '0; port3.data_in <= '0; end
		endcase
	endtask

	// =========================================================================
	// MAIN TEST SEQUENCE
	// =========================================================================
	initial begin
		// Declarations at top of block
		packet p_flood;
		sdp_packet sdp_flood;
		int i;

		$dumpfile("switch_overflow.vcd");
		$dumpvars(0, switch_overflow_tb);

		// Init & Reset
		rst_n = 0;
		repeat(5) @(posedge clk);
		rst_n = 1;
		repeat(5) @(posedge clk);

		$display("\n=== STARTING FIFO OVERFLOW TEST ===\n");

		// ---------------------------------------------------------------------
		// STRATEGY: Block Port 0's output, then flood Port 0 input.
		// ---------------------------------------------------------------------
		
		// 1. Create Contention: Have Port 1 hog Output 3 continuously.
		// This effectively blocks Port 0 if Port 0 also wants Output 3.
		// However, a simpler way to ensure overflow is just to send data 
		// faster than the switch can process (back-to-back), filling the FIFO.
		// Assuming FIFO Depth is 8 (from packet_pkg).

		$display("--- Step 1: Burst 10 packets to Port 0 (Targeting Port 1) ---");
		$display("--- FIFO Depth is %0d. We expect packet drops after ~8 packets. ---", DEPTH);

		// We drive packets back-to-back.
		// Since it takes >1 cycle to route and transmit, the FIFO should fill up.
		
		for (i = 0; i < 12; i++) begin
			sdp_flood = new($sformatf("Flood_Pkt_%0d", i), 0); // Source Port 0
			if (!sdp_flood.randomize() with { target == 4'b0010; }) // Target Port 1
				$fatal("Randomize Failed");
			
			drive_pkt(0, sdp_flood);
			
			// Wait minimal time between packets to stress FIFO
			// Assuming drive_pkt takes 1 cycle valid + overhead.
			// If we don't wait long enough for the switch to route (which takes multiple cycles),
			// the FIFO will fill.
		end

		// Wait for processing to drain whatever made it in
		repeat(50) @(posedge clk);

		$display("\n=== TEST FINISHED ===");
		$display("Check waveform: 'fifo_full' signal on Port 0 should go high.");
		$display("Packets sent after 'fifo_full' is high should NOT appear at output.");
		$finish;
	end

	// Monitor
	always @(posedge clk) begin
		if (port1.valid_out) 
			$display("   [RECV] @%0t Port 1 Output: %h", $time, port1.data_out);
			
		// Spy on internal FIFO full signal (Hierarchical reference)
		if (switch_overflow_tb.dut.port0_i.fifo_full)
			$display("   [ALERT] @%0t FIFO FULL DETECTED on Port 0!", $time);
	end

endmodule