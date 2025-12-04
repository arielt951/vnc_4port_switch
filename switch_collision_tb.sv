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

// Drive Packet Task
task drive_pkt(int p_idx, logic [3:0] src, logic [3:0] tgt, logic [7:0] payload);
	$display("[%0t] DRIVING Port %0d -> Target %b (Data=%h)", $time, p_idx, tgt, payload);
	case(p_idx)
		0: begin port0.valid_in=1; port0.source_in=src; port0.target_in=tgt; port0.data_in=payload; end
		1: begin port1.valid_in=1; port1.source_in=src; port1.target_in=tgt; port1.data_in=payload; end
		2: begin port2.valid_in=1; port2.source_in=src; port2.target_in=tgt; port2.data_in=payload; end
		3: begin port3.valid_in=1; port3.source_in=src; port3.target_in=tgt; port3.data_in=payload; end
	endcase
	@(posedge clk);
	port0.valid_in=0; port1.valid_in=0; port2.valid_in=0; port3.valid_in=0;
	port0.data_in=0; port1.data_in=0; port2.data_in=0; port3.data_in=0;
	port0.source_in=0; port1.source_in=0; port2.source_in=0; port3.source_in=0;
	port0.target_in=0; port1.target_in=0; port2.target_in=0; port3.target_in=0;

endtask

// =========================================================================
// MAIN TEST SEQUENCE
// =========================================================================
initial begin
	$dumpfile("switch_collision.vcd");
	$dumpvars(0, switch_collision_tb);

	// Init & Reset
	rst_n = 0;
	port0.valid_in=0; port1.valid_in=0; port2.valid_in=0; port3.valid_in=0;
	port0.source_in=0; port0.target_in=0; port0.data_in=0;
	repeat(5) @(posedge clk);
	rst_n = 1;
	repeat(5) @(posedge clk);

	$display("\n=== STARTING ADVANCED COLLISION TESTS ===\n");

	// ---------------------------------------------------------------------
	// SCENARIO 1: MDP vs MDP (Identical Targets)
	// Port 0 -> {2,3}  AND  Port 1 -> {2,3}
	// Both want the EXACT same resources. 
	// ---------------------------------------------------------------------
	$display("--- SCENARIO 1: Multicast Clash (P0 vs P1 targeting P2 & P3) ---");
	
	fork
		drive_pkt(0, 4'b0001, 4'b1100, 8'hA0); // P0 -> P2, P3
		drive_pkt(1, 4'b0010, 4'b1100, 8'hB0); // P1 -> P2, P3
	join

	// Expected: One goes first (both packets appear at P2/P3), then the other.
	repeat(20) @(posedge clk);
	$display("   [CHECK] Ports 2 & 3 should receive A0 then B0 (or vice versa).");


	// ---------------------------------------------------------------------
	// SCENARIO 2: Broadcast vs Unicast (The "All-or-Nothing" Stress Test)
	// Port 2 -> Broadcast (All)
	// Port 3 -> Unicast to Port 0
	//
	// Contention: Both want Port 0.
	// If Port 3 wins Port 0, then Port 2 (Broadcast) MUST WAIT for Port 0 to free up.
	// It should NOT send partial packets to P1 or P3.
	// ---------------------------------------------------------------------
	$display("\n--- SCENARIO 2: Broadcast (P2) vs Unicast (P3 -> P0) ---");
	
	fork
		// P2 Broadcasts (1111)
		drive_pkt(2, 4'b0100, 4'b1111, 8'hFF); 
		// P3 sends Unicast to P0 (0001)
		drive_pkt(3, 4'b1000, 4'b0001, 8'h33); 
	join

	repeat(25) @(posedge clk);
	$display("   [CHECK] IF P3 wins P0 first: P0 sees 33, then FF. Others see FF later.");
	$display("   [CHECK] IF P2 wins P0 first: P0 sees FF, then 33. Others see FF immediately.");


	// ---------------------------------------------------------------------
	// SCENARIO 3: "Traffic Jam" Burst (Three-way MDP Collision)
	// P0 -> {1,2}
	// P1 -> {2,3}
	// P3 -> {1,3}
	// Overlap: P1 is contended by P0 and P3. P2 is contended by P0 and P1.
	// ---------------------------------------------------------------------
	$display("\n--- SCENARIO 3: Three-way Multicast Chain Reaction ---");
	
	fork
		drive_pkt(1, 4'b0010, 4'b1100, 8'hDD); // P1 -> {P2, P3}
		drive_pkt(3, 4'b1000, 4'b1111, 8'hEE); // P3 -> broadcast
	join
	repeat(1) @(posedge clk);
		drive_pkt(0, 4'b0010, 4'b0101, 8'hCC); // P1 -> {P2, P0}


	repeat(40) @(posedge clk); // Give plenty of time to resolve
	$display("   [CHECK] Verify all packets arrived eventually without dropping.");

	$display("\n=== TESTS FINISHED ===");
	$finish;
end

// =========================================================================
// MONITOR
// =========================================================================
always @(posedge clk) begin
	if (port0.valid_out) $display("   [RECV] @%0t Port 0 Output: %h", $time, port0.data_out);
	if (port1.valid_out) $display("   [RECV] @%0t Port 1 Output: %h", $time, port1.data_out);
	if (port2.valid_out) $display("   [RECV] @%0t Port 2 Output: %h", $time, port2.data_out);
	if (port3.valid_out) $display("   [RECV] @%0t Port 3 Output: %h", $time, port3.data_out);
end

endmodule