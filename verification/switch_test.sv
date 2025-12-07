module switch_test;
  import packet_pkg::*;
  localparam num_packets = 20;
  // 1. Signals & Interface
  bit clk = 0; always #5 clk = ~clk; 
  bit rst_n;
  port_if port0(clk, rst_n), port1(clk, rst_n), port2(clk, rst_n), port3(clk, rst_n);

  // 2. DUT
  switch_4port dut (.clk(clk), .rst_n(rst_n), .port0(port0), .port1(port1), .port2(port2), .port3(port3));

  // 3. Env
  packet_vc vc0, vc1, vc2, vc3;
  checker   chk;

  initial begin
    rst_n = 0;
    
    // Build
    vc0=new("vc0",null); vc0.configure(port0,0);
    vc1=new("vc1",null); vc1.configure(port1,1);
    vc2=new("vc2",null); vc2.configure(port2,2);
    vc3=new("vc3",null); vc3.configure(port3,3);

    chk=new("checker",null);
    chk.mon_h[0]=vc0.agt.mon; chk.mon_h[1]=vc1.agt.mon; 
    chk.mon_h[2]=vc2.agt.mon; chk.mon_h[3]=vc3.agt.mon;

    // --------------------------------------------------------
    // CONNECT DRIVERS TO CHECKER (The Critical Link)
    // --------------------------------------------------------
    vc0.agt.drv.chk_h = chk;
    vc1.agt.drv.chk_h = chk;
    vc2.agt.drv.chk_h = chk;
    vc3.agt.drv.chk_h = chk;

    $display("--- Starting Simulation (Driver-Driven) ---");

    // Start everything
    fork 
      vc0.agt.mon.run(); vc1.agt.mon.run(); vc2.agt.mon.run(); vc3.agt.mon.run(); 
      chk.run(); 
    join_none

    fork
      vc0.agt.drv.run(num_packets); vc1.agt.drv.run(num_packets); vc2.agt.drv.run(num_packets); vc3.agt.drv.run(num_packets);
    join_none
    
    // Reset
    repeat(5) @(posedge clk); rst_n=1; repeat(5) @(posedge clk);

    // Run Sequencers (Parallel Generation)
    fork
      vc0.agt.seq.run(num_packets);
      vc1.agt.seq.run(num_packets);
      vc2.agt.seq.run(num_packets);
      vc3.agt.seq.run(num_packets);
    join

// -------------------------------------------------------------
    // FIX: WAIT FOR DRIVERS TO FINISH
    // -------------------------------------------------------------
    $display("--- Sequencers Done. Waiting for Drivers to drain... ---");
    
    // Wait until all driver mailboxes are empty
    wait (vc0.agt.drv.mbx.num() == 0);
    wait (vc1.agt.drv.mbx.num() == 0);
    wait (vc2.agt.drv.mbx.num() == 0);
    wait (vc3.agt.drv.mbx.num() == 0);

    // Wait for the Switch Hardware to process the very last packets
    repeat(1000) @(posedge clk);
    
    chk.report();
    $display("--- Simulation Finished ---");
    $finish;
  end

endmodule