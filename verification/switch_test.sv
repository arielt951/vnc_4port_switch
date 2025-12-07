module switch_test;
  import packet_pkg::*;

  // -------------------------------------------------------
  // 1. SIGNAL & INTERFACE SETUP
  // -------------------------------------------------------
  bit clk = 0; 
  always #5 clk = ~clk; // 100MHz Clock
  
  bit rst_n;
  
  // Create 4 physical interfaces
  port_if port0(clk, rst_n);
  port_if port1(clk, rst_n);
  port_if port2(clk, rst_n);
  port_if port3(clk, rst_n);

  // -------------------------------------------------------
  // 2. DUT INSTANTIATION
  // -------------------------------------------------------
  switch_4port dut (
    .clk(clk),
    .rst_n(rst_n),
    .port0(port0),
    .port1(port1),
    .port2(port2),
    .port3(port3)
  );

  // -------------------------------------------------------
  // 3. VERIFICATION ENVIRONMENT
  // -------------------------------------------------------
  packet_vc vc0, vc1, vc2, vc3;
  checker   chk;

  initial begin
	 //$dumpfile("waves.vcd");
	 //$dumpvars(0, switch_test);
    // Objects
    packet p;
    int input_port;
    int num_packets = 20; // Total packets to send

    // A. INITIALIZATION
    rst_n = 0;
    
    // Build Components
    vc0 = new("vc0", null); vc0.configure(port0, 0);
    vc1 = new("vc1", null); vc1.configure(port1, 1);
    vc2 = new("vc2", null); vc2.configure(port2, 2);
    vc3 = new("vc3", null); vc3.configure(port3, 3);

    chk = new("checker", null);
    
    // B. CONNECT CHECKER TO MONITORS
    // The checker needs to snoop on all 4 VCs
    chk.mon_h[0] = vc0.agt.mon;
    chk.mon_h[1] = vc1.agt.mon;
    chk.mon_h[2] = vc2.agt.mon;
    chk.mon_h[3] = vc3.agt.mon;

    // C. START SIMULATION THREADS
    $display("--- Starting Simulation ---");
    
    // Start Monitors (Run forever in background)
    fork
      vc0.agt.mon.run();
      vc1.agt.mon.run();
      vc2.agt.mon.run();
      vc3.agt.mon.run();
      chk.run(); // Start Checker listener
    join_none

    // Start Drivers (Run until they process their mailboxes)
    // We use a large number here so they keep listening until we are done
    fork
      vc0.agt.drv.run(1000); 
      vc1.agt.drv.run(1000);
      vc2.agt.drv.run(1000);
      vc3.agt.drv.run(1000);
    join_none

    // D. RESET DUT
    repeat(5) @(posedge clk); 
    rst_n = 1;
    repeat(5) @(posedge clk);

    // E. TRAFFIC GENERATION LOOP (The "Grand Sequencer")
    // We generate packets here so we can feed the Checker AND the Driver simultaneously
    repeat(num_packets) begin
      
      // 1. Randomly pick an input port (0-3)
      input_port = $urandom_range(0, 3);
      
      // 2. Create a packet for that port
      p = new($sformatf("pkt_%0d", input_port), input_port);

      // Disable randomization for Source so it stays One-Hot matching the port
      p.source.rand_mode(0);
      
      // 3. Randomize content (Target & Data)
      if (!p.randomize()) $error("Randomization failed");
      p.calc_type(); // Update SDP/MDP/BDP info

      // 4. GOLDEN MODEL: Register expected outcome with Checker
      chk.add_expected_packet(p);

      // 5. STIMULUS: Send to the specific VC's driver
      case (input_port)
        0: vc0.agt.mbx.put(p);
        1: vc1.agt.mbx.put(p);
        2: vc2.agt.mbx.put(p);
        3: vc3.agt.mbx.put(p);
      endcase
      
      // Small delay between packets to prevent total congestion
      repeat($urandom_range(2, 10)) @(posedge clk);
    end

    // F. END OF TEST
    // Wait for the switch to drain (allow time for packets to exit)
    repeat(200) @(posedge clk);
    
    chk.report();
    $display("--- Simulation Finished ---");
    $finish;
  end

endmodule