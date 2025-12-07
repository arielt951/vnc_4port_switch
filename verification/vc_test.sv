module vc_test;
  import packet_pkg::*;

  // 1. Signals & Interface
  bit clk = 0; 
  always #5 clk = ~clk; 
  
  bit rst_n;
  port_if port0(clk, rst_n);

  // 2. LOOPBACK (Simulating a perfect wire)
  // Whatever the Driver sends is immediately "received" by the Monitor
  assign port0.valid_out  = port0.valid_in;
  assign port0.source_out = port0.source_in;
  assign port0.target_out = port0.target_in;
  assign port0.data_out   = port0.data_in;

  initial begin
    // handles
    packet_vc vc0;
    checker   chk;
    packet    p;

    // A. Initialize
    rst_n = 0; 
    repeat(3) @(posedge clk); 
    rst_n = 1;

    // B. Build Components
    vc0 = new("vc0", null);
    vc0.configure(port0, 0); // Configured as Port 0

    chk = new("checker", null);
    
    // Connect Checker to VC's monitor
    // Note: Checker expects 4 monitors. In this unit test, we only set mon_h[0].
    chk.mon_h[0] = vc0.agt.mon;

    // C. Generate & Register Expected Packets (The "Test")
    // We manually create a packet to register it with the checker 
    // so the checker knows what to look for.
    p = new("test_pkt", 0); // Source = Port 0
    p.target = 4'b0001;     // Target = Port 0 (Self-loop for this test)
    p.data   = 8'hAA;
    p.calc_type();
    
    // 1. Tell Checker: "Expect this packet at Port 0"
    chk.add_expected_packet(p);
    
    // 2. Send Packet: Inject into the VC's sequencer mailbox manually
    vc0.agt.mbx.put(p);

    // D. Run Simulation
    fork
      vc0.run(1); // Run the VC (Driver processes the 1 packet we put)
      chk.run();  // Run the Checker (Watches the monitor)
    join_any      // Wait for at least one to finish (Driver finishes first)

    #100; // Allow time for Monitor/Checker to process
    
    // E. Report
    chk.report();
    $finish;
  end

endmodule