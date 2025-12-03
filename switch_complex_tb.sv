module switch_sequential_tb;
    import packet_pkg::*;

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

    // 5. Test Stimulus (Sequential Tests)
    initial begin
        $dumpfile("switch_seq.vcd");
        $dumpvars(0, switch_sequential_tb);

        // --- INITIALIZATION ---
        rst_n = 0;
        port0.valid_in = 0; port0.data_in = 0; port0.source_in = 0; port0.target_in = 0;
        port1.valid_in = 0; port1.data_in = 0; port1.source_in = 0; port1.target_in = 0;
        port2.valid_in = 0; port2.data_in = 0; port2.source_in = 0; port2.target_in = 0;
        port3.valid_in = 0; port3.data_in = 0; port3.source_in = 0; port3.target_in = 0;

        $display("\n=== Starting Sequential Testbench ===");
        
        // --- RESET ---
        repeat(5) @(posedge clk);
        rst_n = 1;
        repeat(2) @(posedge clk);

        // --------------------------------------------------------
        // TEST 1: Port 0 -> Port 1
        // --------------------------------------------------------
        $display("[%0t] TEST 1: Sending Packet Port 0 -> Port 1", $time);
        
        port0.valid_in  = 1;
        port0.source_in = 4'b0001; // Source: Port 0
        port0.target_in = 4'b0010; // Target: Port 1
        port0.data_in   = 8'hAA;   // Data: 0xAA
        
        @(posedge clk);
        port0.valid_in = 0;        // Clear valid after 1 cycle

        repeat(20) @(posedge clk); // Wait for processing

        // --------------------------------------------------------
        // TEST 2: Port 1 -> Port 2
        // --------------------------------------------------------
        $display("[%0t] TEST 2: Sending Packet Port 1 -> Port 2", $time);
        
        port1.valid_in  = 1;
        port1.source_in = 4'b0010; // Source: Port 1
        port1.target_in = 4'b0100; // Target: Port 2
        port1.data_in   = 8'hBB;   // Data: 0xBB
        
        @(posedge clk);
        port1.valid_in = 0;

        repeat(20) @(posedge clk);

        // --------------------------------------------------------
        // TEST 3: Port 2 -> Port 3
        // --------------------------------------------------------
        $display("[%0t] TEST 3: Sending Packet Port 2 -> Port 3", $time);
        
        port2.valid_in  = 1;
        port2.source_in = 4'b0100; // Source: Port 2
        port2.target_in = 4'b1000; // Target: Port 3
        port2.data_in   = 8'hCC;   // Data: 0xCC
        
        @(posedge clk);
        port2.valid_in = 0;

        repeat(20) @(posedge clk);

        // --------------------------------------------------------
        // TEST 4: Port 3 -> Port 0
        // --------------------------------------------------------
        $display("[%0t] TEST 4: Sending Packet Port 3 -> Port 0", $time);
        
        port3.valid_in  = 1;
        port3.source_in = 4'b1000; // Source: Port 3
        port3.target_in = 4'b0001; // Target: Port 0
        port3.data_in   = 8'hDD;   // Data: 0xDD
        
        @(posedge clk);
        port3.valid_in = 0;

        repeat(20) @(posedge clk);

        $display("\n=== Testbench Finished ===");
        $finish;
    end

    // 6. Monitor (Check outputs)
    always @(posedge clk) begin
        if (port0.valid_out) $display("   -> [Cycle %0t] RECV at Port 0: Data=%h", $time, port0.data_out);
        if (port1.valid_out) $display("   -> [Cycle %0t] RECV at Port 1: Data=%h", $time, port1.data_out);
        if (port2.valid_out) $display("   -> [Cycle %0t] RECV at Port 2: Data=%h", $time, port2.data_out);
        if (port3.valid_out) $display("   -> [Cycle %0t] RECV at Port 3: Data=%h", $time, port3.data_out);
    end

endmodule