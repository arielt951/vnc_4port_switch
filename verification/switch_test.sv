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

  // -------------------------------------------------------------
  // NEW: HARDWARE DROP COUNTER
  // -------------------------------------------------------------
  int drops[4] = '{0, 0, 0, 0}; // Initialize to 0

 

always @(posedge clk) begin
    // Check Port 0
    if (port0.valid_in && dut.port0_i.port_fifo.fifo_full) begin
      // COUNT EFFECTIVE DROPS:
      // If a packet targets 3 ports and is dropped, we lose 3 output packets.
      drops[0] += $countones(port0.target_in);
    end

    // Check Port 1
    if (port1.valid_in && dut.port1_i.port_fifo.fifo_full) begin
      drops[1] += $countones(port1.target_in);
    end

    // Check Port 2
    if (port2.valid_in && dut.port2_i.port_fifo.fifo_full) begin
      drops[2] += $countones(port2.target_in);
    end

    // Check Port 3
    if (port3.valid_in && dut.port3_i.port_fifo.fifo_full) begin
      drops[3] += $countones(port3.target_in);
    end
  end

function void print_port_cov(int id, packet_vc vc);
    $display("--- PORT %0d ---", id);
    $display("  TOTAL:       %0.2f %%", vc.agt.mon.packet_cg.get_inst_coverage());
    $display("  - Types:     %0.2f %%", vc.agt.mon.packet_cg.cp_type.get_coverage());
    $display("  - Sources:   %0.2f %%", vc.agt.mon.packet_cg.cp_source.get_coverage());
    $display("  - Targets:   %0.2f %%", vc.agt.mon.packet_cg.cp_target.get_coverage());
    $display("  - Type x Src:%0.2f %%", vc.agt.mon.packet_cg.cx_type_src.get_coverage());
    $display("  - ROUTING:   %0.2f %%", vc.agt.mon.packet_cg.cx_route.get_coverage()); 
endfunction

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

$display("--- Drivers Done. Waiting for Switch to drain... ---");
    // Wait for internal FIFOs to empty (with timeout)
    fork
        begin
            wait (dut.port0_i.port_fifo.fifo_empty);
            wait (dut.port1_i.port_fifo.fifo_empty);
            wait (dut.port2_i.port_fifo.fifo_empty);
            wait (dut.port3_i.port_fifo.fifo_empty);
        end
        begin
            repeat(100000) @(posedge clk);
            $display("[TEST] WARNING: Timeout waiting for FIFOs to drain.");
        end
    join_any
    disable fork;

    repeat(1000) @(posedge clk);
    
    
    // -------------------------------------------------------------
    // FINAL CALCULATION: PROOF OF INTERNAL INTEGRITY
    // -------------------------------------------------------------
    begin
        int total_hw_drops;
        int total_pending;
        int internal_loss;
        
        // 1. Get Checker Pending Count
        total_pending = 0;
        foreach(chk.scb_queue[i]) total_pending += chk.scb_queue[i].size();
        
        // 2. Get Hardware Drop Count
        total_hw_drops = drops[0] + drops[1] + drops[2] + drops[3];

        // 3. Calculate Internal Loss
        internal_loss = total_pending - total_hw_drops;

        $display("\n=========================================");
        $display(" INTEGRITY REPORT");
        $display(" 1. Total Pending (Checker):  %0d", total_pending);
        $display(" 2. Input Rejections (FIFO):  %0d", total_hw_drops);
        $display(" -----------------------------------------");
        $display(" 3. INTERNAL LOSS:            %0d", internal_loss);
        $display("=========================================\n");

        if (internal_loss == 0) 
            $display("[TEST] PASSED: All accepted packets were delivered.");
        else 
            $error("[TEST] FAILED: %0d packets were accepted but LOST inside.", internal_loss);

        $display("\n=========================================");
        $display(" HARDWARE STATE INSPECTION");
        // Peek at internal signals
        $display(" Port 0 FIFO Usage: %0d / 8", dut.port0_i.port_fifo.fifo_count);
        $display(" Port 1 FIFO Usage: %0d / 8", dut.port1_i.port_fifo.fifo_count);
        $display(" Port 2 FIFO Usage: %0d / 8", dut.port2_i.port_fifo.fifo_count);
        $display(" Port 3 FIFO Usage: %0d / 8", dut.port3_i.port_fifo.fifo_count);
        $display("=========================================\n");

        $display("\n=========================================");
        $display(" FUNCTIONAL COVERAGE RESULTS");
        $display("=========================================");
        print_port_cov(0, vc0);
        print_port_cov(1, vc1);
        print_port_cov(2, vc2);
        print_port_cov(3, vc3);
        $display("=========================================\n");
        // -------------------------

      end

    chk.report();

    $finish;
  end

endmodule