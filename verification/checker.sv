class checker extends component_base;

  // 1. Connectivity
  monitor mon_h[4]; 

  // 2. Scoreboard
  packet scb_queue[4][$];
  
  // 3. Stats (Renamed variable)
  int matchess; 
  int mismatches;

  function new(string n, component_base p=null);
    super.new(n,p);
    matchess = 0;
    mismatches = 0;
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
  // TASK: Check Port (Smart Search + Renamed Variable)
  // ----------------------------------------------------------------
  task check_port(int port_idx);
    packet received_pkt;
    packet expected_pkt;
    int match_idx;
    
    forever begin
      // 1. Wait for packet
      mon_h[port_idx].mon_mbx.get(received_pkt);
      
      // 2. SEARCH the queue for this ID (Handles Out-of-Order)
      match_idx = -1;
      foreach(scb_queue[port_idx][i]) begin
        if (scb_queue[port_idx][i].packet_id == received_pkt.packet_id) begin
            match_idx = i;
            break; // Found it
        end
      end

      // 3. Evaluate
      if (match_idx == -1) begin
        $error("[Checker] ERROR: Unexpected/Unknown packet on Port %0d. ID: %0d", 
               port_idx, received_pkt.packet_id);
        mismatches++;
      end 
      else begin
        // Found it! Remove from queue.
        expected_pkt = scb_queue[port_idx][match_idx];
        scb_queue[port_idx].delete(match_idx);
        
        // Verify Data Integrity
        if (compare_packets(expected_pkt, received_pkt)) begin
          $display("[Checker] SUCCESS: Packet ID %0d matched on Port %0d", 
                   received_pkt.packet_id, port_idx);
          matchess++; // <--- UPDATED VARIABLE
        end else begin
          $error("[Checker] ERROR: Data Corruption on Port %0d. ID: %0d", 
                 port_idx, received_pkt.packet_id);
          received_pkt.print("RECEIVED");
          expected_pkt.print("EXPECTED");
          mismatches++;
        end
      end
    end
  endtask

  function bit compare_packets(packet exp, packet rcv);
    if (exp.source !== rcv.source) return 0;
    if (exp.target !== rcv.target) return 0;
    if (exp.data   !== rcv.data)   return 0;
    return 1;
  endfunction
  
  function void report();
    int pending_packets = 0;
    foreach(scb_queue[i]) begin
      pending_packets += scb_queue[i].size();
    end

    $display("\n-----------------------------------------");
    $display(" CHECKER SUMMARY");
    $display(" Matches:          %0d", matchess); // <--- UPDATED VARIABLE
    $display(" Mismatches:       %0d", mismatches);
    $display(" Pending (Lost):   %0d", pending_packets);
    $display("-----------------------------------------\n");
    
    if (pending_packets > 0) $error("TEST FAILED: %0d packets were expected but never arrived!", pending_packets);
  endfunction

endclass