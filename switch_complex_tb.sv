import packet_pkg::*;
module switch_debug_tb;

// 1. Signals & Interfaces
logic clk;
logic rst_n;

port_if p0(clk, rst_n);
port_if p1(clk, rst_n);
port_if p2(clk, rst_n);
port_if p3(clk, rst_n);

// 2. DUT
switch_4port dut (
	.clk(clk), .rst_n(rst_n),
	.port0(p0), .port1(p1), .port2(p2), .port3(p3)
);

// 3. Clock
initial begin
	clk = 0;
	forever #5 clk = ~clk;
end

// =========================================================================
// DEBUG-FRIENDLY TASKS
// =========================================================================

// Task 1: Drive Packet (Same as before)
task drive_pkt(virtual port_if p_if, logic [3:0] src, logic [3:0] tgt, logic [7:0] data);
	$display("[%0t] Driving Packet on Port %0d -> Target %b", $time, src, tgt);
	@(posedge clk);
	p_if.valid_in  <= 1;
	p_if.source_in <= src;
	p_if.target_in <= tgt;
	p_if.data_in   <= data;
	@(posedge clk);
	p_if.valid_in  <= 0;
endtask

// Task 2: Wait for Packet with Timeout (REPLACES REPEAT LOOPS)
task wait_for_packet(virtual port_if p_if, int port_id, int max_cycles);
	int count = 0;
	bit received = 0;

	$display("[%0t] Waiting for packet on Port %0d (Timeout: %0d cycles)...", $time, port_id, max_cycles);

	while (count < max_cycles) begin
		// Check signal at the clock edge
		@(posedge clk);
		if (p_if.valid_out === 1'b1) begin
			$display("[%0t] SUCCESS: Packet Received on Port %0d! Data=%h", $time, port_id, p_if.data_out);
			received = 1;
			break; // Exit loop immediately
		end
		count++;
	end

	if (!received) begin
		$error("[%0t] TIMEOUT: No packet received on Port %0d after %0d cycles", $time, port_id, max_cycles);
	end
endtask

// =========================================================================
// MAIN TEST
// =========================================================================
initial begin
	// Setup Waveforms
	$dumpfile("debug_wave.vcd");
	$dumpvars(0, switch_debug_tb);

	// Initialization
	rst_n = 0;
	p0.valid_in=0; p1.valid_in=0; p2.valid_in=0; p3.valid_in=0;
	repeat(5) @(posedge clk);
	rst_n = 1;
	@(posedge clk);

	$display("\n=== STARTING DEBUG TEST ===\n");

	// --- TEST CASE 1: Unicast ---
	// Drive P0 -> P1
	drive_pkt(p0, 4'b0001, 4'b0010, 8'hA1);
	
	// Wait for result on Port 1 (Max wait: 20 cycles)
	// This is better than repeat(20) because it returns INSTANTLY if the packet arrives early.
	wait_for_packet(p1, 1, 20);

	// --- TEST CASE 2: Broadcast ---
	@(posedge clk);
	// Drive P3 -> All (Target 1111)
	drive_pkt(p3, 4'b1000, 4'b1111, 8'hFF);

	// We expect packets on Port 0, 1, and 2 (Port 3 is source, so parser drops loopback)
	fork
		wait_for_packet(p0, 0, 20);
		wait_for_packet(p1, 1, 20);
		wait_for_packet(p2, 2, 20);
	join

	// --- TEST CASE 3: Simultaneous ---
	@(posedge clk);
	fork
		drive_pkt(p0, 4'b0001, 4'b0100, 8'hD0); // P0 -> P2
		drive_pkt(p1, 4'b0010, 4'b1000, 8'hD1); // P1 -> P3
	join

	fork
		wait_for_packet(p2, 2, 20);
		wait_for_packet(p3, 3, 20);
	join

	$display("\n=== TEST COMPLETE ===");
	$finish;
end

endmodule