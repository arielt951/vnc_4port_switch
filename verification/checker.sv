class checker extends component_base;

  monitor mon_h[4]; 
  packet scb_queue[4][$];
  int matchess, mismatches;
  int hw_drops[4]; // Stores drop counts from testbench

  function new(string n, component_base p=null);
    super.new(n,p);
    matchess = 0; mismatches = 0;
    hw_drops = '{0,0,0,0};
  endfunction

  // Call this from switch_test before report()
  function void set_drops(int drops[4]);
      this.hw_drops = drops;
  endfunction

  function void add_expected_packet(packet p);
    packet p_clone = new p; 
    for(int i=0; i<4; i++) begin
      if (p.target[i]) scb_queue[i].push_back(p_clone);
    end
  endfunction

  task run();
    foreach(mon_h[i]) begin
      if(mon_h[i] != null) fork automatic int k=i; check_port(k); join_none
    end
    wait fork;
  endtask

  task check_port(int port_idx);
    packet rcv, exp;
    int match_idx;
    forever begin
      mon_h[port_idx].mon_mbx.get(rcv);
      match_idx = -1;
      foreach(scb_queue[port_idx][i]) begin
        if(compare_packets(scb_queue[port_idx][i], rcv)) begin
            match_idx = i; break;
        end
      end
      if(match_idx == -1) begin
        $error("[Checker] ERROR: Unexpected packet on Port %0d (ID:%0d)", port_idx, rcv.packet_id);
        mismatches++;
      end else begin
        scb_queue[port_idx].delete(match_idx);
        matchess++;
      end
    end
  endtask

  function bit compare_packets(packet exp, packet rcv);
    return (exp.source === rcv.source) && (exp.target === rcv.target) && (exp.data === rcv.data);
  endfunction

  // ----------------------------------------------------------------
  // SIMPLIFIED REPORTING
  // ----------------------------------------------------------------
  function void report();
    int total_pending = 0;
    int total_hw_drops = 0;
    int internal_loss = 0;

    $display("\n=========================================");
    $display(" MISSING PACKET IDs (Suspects for Loss)");
    $display("=========================================");
    
    // 1. List ALL Missing IDs
    foreach(scb_queue[i]) begin 
      if (scb_queue[i].size() > 0) begin
          $display("--- Missing at Output Port %0d ---", i);
          foreach(scb_queue[i][j]) begin
             packet p = scb_queue[i][j];
             total_pending++;
             $display("  > Packet ID: %0d  (Src:%0d | Tgt:%0b)", p.packet_id, p.source, p.target);
          end
      end
    end

    // 2. Do the Math
    total_hw_drops = hw_drops[0] + hw_drops[1] + hw_drops[2] + hw_drops[3];
    internal_loss  = total_pending - total_hw_drops;

    $display("=========================================");
    $display(" LOSS ANALYSIS");
    $display("-----------------------------------------");
    $display(" Total Missing IDs Listed: %0d", total_pending);
    $display(" - Valid HW Drops (FIFO):  %0d", total_hw_drops);
    $display(" ----------------------------------------");
    $display(" = INTERNAL LOSS (BUGS):   %0d", internal_loss);
    $display("=========================================\n");

    if (internal_loss > 0) begin
        $error("TEST FAILED: %0d packets were internally lost! Check the IDs listed above.", internal_loss);
    end else if (total_pending > 0) begin
        $display("TEST PASSED: All %0d missing packets are accounted for by valid FIFO drops.", total_pending);
    end else begin
        $display("TEST PASSED: Perfect transmission.");
    end
  endfunction

endclass