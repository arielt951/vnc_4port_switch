class checker extends component_base;

  // 1. Connectivity
  monitor mon_h[4]; 

  // 2. Scoreboard
  packet scb_queue[4][$];
  
  // 3. Stats
  int matchess; 
  int mismatches;
  
  // 4. Hardware Drop Counters (passed from Testbench)
  int hw_drops[4]; 

  function new(string n, component_base p=null);
    super.new(n,p);
    matchess = 0;
    mismatches = 0;
    // Initialize drops to 0
    hw_drops = '{0, 0, 0, 0};
  endfunction

  // ----------------------------------------------------------------
  // TASK: Set Hardware Drops (Call this from TB before reporting!)
  // ----------------------------------------------------------------
  function void set_drops(int drops[4]);
      this.hw_drops = drops;
  endfunction

function bit is_packet_valid(packet p);
      // 1. Check Loopback: Source bit must NOT be set in Target mask
      if ((p.source & p.target) != 0) begin
          return 0; // INVALID: Loopback attempt
      end
      
      // 2. Check Valid Target: Must target at least one port
      if (p.target == 4'b0000) begin
          return 0; // INVALID: No destination
      end

      // 3. Check Valid Source: Must be one-hot (one port only)
      if ($countones(p.source) != 1) begin
          return 0; // INVALID: Source ID is corrupt/multiple
      end

      return 1; // Packet is valid
  endfunction
  // ----------------------------------------------------------------
  // TASK: Add Expected Packet
  // ----------------------------------------------------------------
  function void add_expected_packet(packet p);
    // FILTER: If the packet is invalid, we EXPECT the switch to drop it.
    // Therefore, we do NOT add it to the scoreboard.
    packet p_clone;
    if (!is_packet_valid(p)) begin
        $display("[Checker] Predicted Drop: Packet ID %0d is INVALID (Src:%b Tgt:%b). Ignoring.", p.packet_id, p.source, p.target);
        return; 
    end
    
    p_clone = new p; 
    for(int i=0; i<4; i++) begin
      if (p.target[i] == 1) begin
        scb_queue[i].push_back(p_clone);
      end
    end
  endfunction

  // ----------------------------------------------------------------
  // TASK: Run
  // ----------------------------------------------------------------
  task run();
    foreach(mon_h[i]) begin
      if (mon_h[i] != null) begin
        fork
          automatic int k = i;
          check_port(k);
        join_none
      end
    end
    wait fork;
  endtask

  // ----------------------------------------------------------------
  // TASK: Check Port
  // ----------------------------------------------------------------
  task check_port(int port_idx);
    packet received_pkt;
    packet expected_pkt;
    int match_idx;
    
    forever begin
      mon_h[port_idx].mon_mbx.get(received_pkt);
      
      match_idx = -1;
      foreach(scb_queue[port_idx][i]) begin
        if (compare_packets(scb_queue[port_idx][i], received_pkt)) begin
            match_idx = i;
            break; 
        end
      end

      if (match_idx == -1) begin
        $error("[Checker] ERROR: Unexpected packet on Port %0d. ID: %0d", 
               port_idx, received_pkt.packet_id);
        received_pkt.print("RECEIVED_UNKNOWN");
        mismatches++;
      end 
      else begin
        expected_pkt = scb_queue[port_idx][match_idx];
        scb_queue[port_idx].delete(match_idx);
        matchess++;
      end
    end
  endtask

  function bit compare_packets(packet exp, packet rcv);
    if (exp.source !== rcv.source) return 0;
    if (exp.target !== rcv.target) return 0;
    if (exp.data   !== rcv.data)   return 0;
    return 1;
  endfunction


  
  // ----------------------------------------------------------------
  // FUNCTION: Report (UPDATED WITH DISTINCTION)
  // ----------------------------------------------------------------
  function void report();
    int total_pending = 0;
    int total_hw_drops = 0;
    int internal_loss = 0;
    int src_stuck[4] = '{0,0,0,0}; 

    $display("\n=========================================");
    $display(" DETAILED LOST PACKET REPORT");
    $display("=========================================");

    // 1. Count Pending (Missing)
    foreach(scb_queue[i]) begin 
      if (scb_queue[i].size() > 0) begin
          $display("--- Missing at Output Port %0d ---", i);
          foreach(scb_queue[i][j]) begin
            packet p = scb_queue[i][j];
            total_pending++;
            
            // Print details of every missing packet
            $display("  [MISSING] ID:%0d | Src:%b | Tgt:%b | Data:%h", 
                     p.packet_id, p.source, p.target, p.data);

            // Tally by source for debug
            case (p.source)
              4'b0001: src_stuck[0]++;
              4'b0010: src_stuck[1]++;
              4'b0100: src_stuck[2]++;
              4'b1000: src_stuck[3]++;
            endcase
          end
      end
    end

    // 2. Calculate Internal Loss
    total_hw_drops = hw_drops[0] + hw_drops[1] + hw_drops[2] + hw_drops[3];
    internal_loss = total_pending - total_hw_drops;

    // 3. Print The Distinction
    $display("\n=========================================");
    $display(" CHECKER SUMMARY (Integrity Check)");
    $display("-----------------------------------------");
    $display(" Matches (Delivered):     %0d", matchess);
    $display(" Mismatches (Corrupt):    %0d", mismatches);
    $display(" Total Pending (Missing): %0d", total_pending);
    $display("-----------------------------------------");
    $display(" BREAKDOWN OF MISSING PACKETS:");
    $display(" (-) Valid HW Drops (FIFO Full): %0d", total_hw_drops);
    $display(" (=) INTERNAL LOSS (BUGS):       %0d", internal_loss);
    $display("=========================================\n");
    
    // 4. Final Verdict
    if (mismatches > 0) begin
        $error("TEST FAILED: Data Corruption Detected (%0d mismatches).", mismatches);
    end
    else if (internal_loss > 0) begin
        $error("TEST FAILED: Critical Bug! %0d packets vanished inside the switch.", internal_loss);
    end
    else if (total_pending > 0) begin
        $display("TEST PASSED (With Drops): %0d packets dropped validly due to congestion.", total_hw_drops);
    end
    else begin
        $display("TEST PASSED: Perfect transmission (0 drops, 0 loss).");
    end
  endfunction

endclass