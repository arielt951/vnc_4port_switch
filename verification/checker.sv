class checker extends component_base;

  // 1. Connectivity
  monitor mon_h[4]; 

  // 2. Scoreboard
  packet scb_queue[4][$];
  
  // 3. Stats
  int matchess; 
  int mismatches;
  
  int dropped_ids[$];

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

  // ----------------------------------------------------------------
  // TASK: Add Expected Packet
  // ----------------------------------------------------------------
  function void add_expected_packet(packet p);
    packet p_clone;
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
    int known_drops = 0;
    int internal_bugs = 0;
    string status_label;

    $display("\n=========================================");
    $display(" DETAILED MISSING PACKET REPORT");
    $display("=========================================");

    foreach(scb_queue[i]) begin 
      if (scb_queue[i].size() > 0) begin
          $display("--- Missing at Output Port %0d ---", i);
          
          foreach(scb_queue[i][j]) begin
            packet p = scb_queue[i][j];
            total_pending++;

            // CHECK: Is this ID in our "Known Dropped" list?
            // Note: In a real complex environment, we'd use an associative array for speed.
            // For this project, a queue search is fine.
            int q_res[$] = dropped_ids.find(x) with (x == p.packet_id);

            if (q_res.size() > 0) begin
                status_label = "[VALID DROP]";
                known_drops++;
            end else begin
                status_label = "[INTERNAL LOSS - BUG!]";
                internal_bugs++;
            end

            // PRINT THE CLASSIFICATION
            $display("  %s ID:%0d | Src:%b | Tgt:%b | Data:%h", 
                     status_label, p.packet_id, p.source, p.target, p.data);
          end
      end
    end

    $display("\n=========================================");
    $display(" FINAL INTEGRITY SUMMARY");
    $display("-----------------------------------------");
    $display(" Total Matches:      %0d", matchess);
    $display(" Total Missing:      %0d", total_pending);
    $display("   - Valid Drops:    %0d", known_drops);
    $display("   - Internal Loss:  %0d", internal_bugs);
    $display("=========================================\n");
    
    if (internal_bugs > 0) 
        $error("TEST FAILED: %0d packets vanished inside the switch (Design Bugs).", internal_bugs);
    else if (total_pending > 0)
        $display("TEST PASSED: All missing packets were valid FIFO drops.");
    else
        $display("TEST PASSED: Perfect transmission.");
  endfunction

endclass