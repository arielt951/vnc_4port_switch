module switch_test;
  import packet_pkg::*;

  // -------------------------------------------------------------
  // 1. CLOCK & RESET CONFIGURATION
  // -------------------------------------------------------------
  localparam CLK_PERIOD = 10;
  localparam RST_DURATION = 10;

  bit clk;
  bit rst_n;

  // Clock Generation
  initial clk = 0;
  always #(CLK_PERIOD/2) clk = ~clk; 

  localparam num_packets = 20;

  // -------------------------------------------------------------
  // 2. INTERFACE & DUT WRAPPER
  // -------------------------------------------------------------
  port_if port0(clk, rst_n), port1(clk, rst_n), port2(clk, rst_n), port3(clk, rst_n);

  // Instantiate the wrapper (which contains the Netlist)
  dut_wrapper dut (
      .clk   (clk),
      .rst_n (rst_n),
      .p0    (port0),
      .p1    (port1),
      .p2    (port2),
      .p3    (port3)
  );

  // -------------------------------------------------------------
  // 3. VERIFICATION ENVIRONMENT
  // -------------------------------------------------------------
  packet_vc vc0, vc1, vc2, vc3;
  checker   chk;
  int drops[4] = '{0, 0, 0, 0};

  // -------------------------------------------------------------
  // 4. TASKS (Defined at module level to fix scope errors)
  // -------------------------------------------------------------
  task apply_reset();
    $display("[TB] %0t: Asserting System Reset...", $time);
    rst_n = 0; 
    repeat(RST_DURATION) @(posedge clk);
    @(negedge clk);
    rst_n = 1;
    $display("[TB] %0t: Reset Released.", $time);
    repeat(5) @(posedge clk);
  endtask

task check_reset_state();
    $display("[TB] Verifying Reset State...");
    
    // -------------------------------------------------------
    // RTL MODE: Detailed White-Box Check
    // -------------------------------------------------------
    `ifndef SDF_ANNOTATE
        // These paths only exist in RTL. In Netlist, they are flattened/renamed.
        if (!dut.impl.port0_i.port_fifo.fifo_empty || !dut.impl.port1_i.port_fifo.fifo_empty || 
            !dut.impl.port2_i.port_fifo.fifo_empty || !dut.impl.port3_i.port_fifo.fifo_empty) 
           $error("[TB] FATAL: FIFOs not empty after reset!");

        // Check FSM State (IDLE)
        if (dut.impl.port0_i.current_state != 0) 
           $error("[TB] Port 0 FSM not IDLE after reset!");
           
        $display("[TB] Reset Internal State Verification Passed (RTL).");

    // -------------------------------------------------------
    // GLS MODE: Black-Box Check Only
    // -------------------------------------------------------
    `else
        // In GLS, we cannot peek inside safely. 
        // We assume reset works if outputs are not X (which the monitor checks).
        $display("[TB] Skipping internal state check for GLS (Hierarchy flattened).");
    `endif
  endtask

  function void print_port_cov(int id, packet_vc vc);
    real type_cov, src_cov, tgt_cov, route_cov, x_type_src_cov;
    real effective_total;

    $display("--- PORT %0d ---", id);
    type_cov       = vc.agt.mon.packet_cg.cp_type.get_coverage();
    src_cov        = vc.agt.mon.packet_cg.cp_source.get_coverage();
    x_type_src_cov = vc.agt.mon.packet_cg.cx_type_src.get_coverage();

    case(id)
        0: begin
            tgt_cov   = vc.agt.mon.packet_cg.cp_target_p0.get_coverage();
            route_cov = vc.agt.mon.packet_cg.cx_route_p0.get_coverage();
        end
        1: begin
            tgt_cov   = vc.agt.mon.packet_cg.cp_target_p1.get_coverage();
            route_cov = vc.agt.mon.packet_cg.cx_route_p1.get_coverage();
        end
        2: begin
            tgt_cov   = vc.agt.mon.packet_cg.cp_target_p2.get_coverage();
            route_cov = vc.agt.mon.packet_cg.cx_route_p2.get_coverage();
        end
        3: begin
            tgt_cov   = vc.agt.mon.packet_cg.cp_target_p3.get_coverage();
            route_cov = vc.agt.mon.packet_cg.cx_route_p3.get_coverage();
        end
    endcase

    effective_total = (type_cov + src_cov + tgt_cov + route_cov + x_type_src_cov) / 5.0;
    $display("  TOTAL (Valid): %0.2f %%", effective_total);
    $display("  - Types:       %0.2f %%", type_cov);
    $display("  - Sources:     %0.2f %%", src_cov);
    $display("  - Targets:     %0.2f %%", tgt_cov);
    $display("  - Type x Src:  %0.2f %%", x_type_src_cov);
    $display("  - ROUTING:     %0.2f %%", route_cov);
  endfunction

  // -------------------------------------------------------------
  // 5. HARDWARE MONITOR & BINDS (Masked for GLS safety)
  // -------------------------------------------------------------
  `ifndef SDF_ANNOTATE
    always @(posedge clk) begin
        // Using 'dut.impl' to reach netlist internals
        if (port0.valid_in && dut.impl.port0_i.port_fifo.fifo_full) drops[0] += $countones(port0.target_in);
        if (port1.valid_in && dut.impl.port1_i.port_fifo.fifo_full) drops[1] += $countones(port1.target_in);
        if (port2.valid_in && dut.impl.port2_i.port_fifo.fifo_full) drops[2] += $countones(port2.target_in);
        if (port3.valid_in && dut.impl.port3_i.port_fifo.fifo_full) drops[3] += $countones(port3.target_in);
    end

    // ASSERTION BINDINGS
    bind fifo fifo_sva #(.DEPTH(packet_pkg::DEPTH), .PACKET_WIDTH(packet_pkg::PACKET_WIDTH)) i_fifo_props (
        .clk(clk), .rst_n(rst_n), .rd_en(rd_en), .fifo_empty(fifo_empty), 
        .fifo_count(fifo_count), .header_out(header_out), .rd_ptr(rd_ptr), .mem(mem)
    );
    bind switch_port port_sva i_port_props (
        .clk(clk), .rst_n(rst_n), .fifo_empty(fifo_empty), .current_state(current_state), 
        .grant(grant), .pkt_valid(pkt_valid), .pkt_type(pkt_type), .read_en_fifo(read_en_fifo), 
        .source_in(header_out[3:0]), .target_in(header_out[7:4])
    );
    bind arbiter arbiter_sva i_arb_props (.*);
  `endif

  // -------------------------------------------------------------
  // 6. MAIN EXECUTION (Initial Block)
  // -------------------------------------------------------------
  initial begin
    rst_n = 0;

    // Load SDF Delays
    `ifdef SDF_ANNOTATE
        $display("Loading SDF Delays from switch_4port.sdf...");
	$sdf_annotate("./switch_4port.sdf", dut.impl, , "sdf.log", "TYPICAL", "1.0:1.0:1.0", "FROM_MTM");
	`endif

    // Build Environment
    vc0=new("vc0",null); vc0.configure(port0,0);
    vc1=new("vc1",null); vc1.configure(port1,1);
    vc2=new("vc2",null); vc2.configure(port2,2);
    vc3=new("vc3",null); vc3.configure(port3,3);

    chk=new("checker",null);
    chk.mon_h[0]=vc0.agt.mon; chk.mon_h[1]=vc1.agt.mon; 
    chk.mon_h[2]=vc2.agt.mon; chk.mon_h[3]=vc3.agt.mon;

    vc0.agt.drv.chk_h = chk; vc1.agt.drv.chk_h = chk;
    vc2.agt.drv.chk_h = chk; vc3.agt.drv.chk_h = chk;

    $display("--- Starting Simulation (Driver-Driven) ---");
    $display("Number of packets per port: %0d", num_packets);

    // Run Monitors & Checker
    fork 
      vc0.agt.mon.run(); vc1.agt.mon.run(); vc2.agt.mon.run(); vc3.agt.mon.run(); 
      chk.run();
    join_none

    // Run Drivers
    fork
      vc0.agt.drv.run(num_packets); vc1.agt.drv.run(num_packets); 
      vc2.agt.drv.run(num_packets); vc3.agt.drv.run(num_packets);
    join_none
    
    // --- RESET PHASE ---
    apply_reset();
    check_reset_state(); 

    // Run Sequencers
    fork
      vc0.agt.seq.run(num_packets); vc1.agt.seq.run(num_packets);
      vc2.agt.seq.run(num_packets); vc3.agt.seq.run(num_packets);
    join

    $display("--- Sequencers Done. Waiting for Drivers to drain... ---");
    wait (vc0.agt.drv.mbx.num() == 0);
    wait (vc1.agt.drv.mbx.num() == 0);
    wait (vc2.agt.drv.mbx.num() == 0);
    wait (vc3.agt.drv.mbx.num() == 0);

    $display("--- Drivers Done. Waiting for Switch to drain... ---");
    repeat(1000) @(posedge clk);
    
    // --- FINAL REPORTING ---
    begin
        int total_hw_drops;
        int total_pending;
        int internal_loss;
        
        total_pending = 0;
        foreach(chk.scb_queue[i]) total_pending += chk.scb_queue[i].size();
        
        total_hw_drops = drops[0] + drops[1] + drops[2] + drops[3];
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
        $display(" FUNCTIONAL COVERAGE RESULTS");
        $display("=========================================");
        print_port_cov(0, vc0);
        print_port_cov(1, vc1);
        print_port_cov(2, vc2);
        print_port_cov(3, vc3);
        $display("=========================================\n");
    end

    chk.set_drops(drops);
    chk.report();

    $finish;
  end

endmodule