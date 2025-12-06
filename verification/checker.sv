class checker extends component_base;

  monitor mon_h[4]; 
  packet scb_queue[4][$];
  int matches;
  int mismatches;

  function new(string n, component_base p=null);
    super.new(n,p);
    matches = 0;
    mismatches = 0;
  endfunction

  function void add_expected_packet(packet p);
    packet p_clone;
    p_clone = new p; 
    for(int i=0; i<4; i++) begin
      if (p.target[i] == 1) begin
        scb_queue[i].push_back(p_clone);
      end
    end
  endfunction

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
  // TASK: Check Port (Smart Search)
  // ----------------------------------------------------------------
  task check_port(int port_idx);
    packet received_pkt;
    packet expected_pkt;
    int match_idx;
    
    forever begin
      mon_h[port_idx].mon_mbx.get(received_pkt);
      
      // Search for the Packet ID in the expected queue
      match_idx = -1;
      foreach(scb_queue[port_idx][i]) begin
        if (scb_queue[port_idx][i].packet_id == received_pkt.packet_id) begin
            match_idx = i;
            break; // Found it
        end
      end

      if (match_idx == -1) begin
        // ID not found in the queue
        $error("[Checker] ERROR: Unexpected/Unknown packet on Port %0d. ID: %0d", 
               port_idx, received_pkt.packet_id);
        mismatches++;
      end 
      else begin
        // Found matching ID. Retrieve and remove from queue.
        expected_pkt = scb_queue[port_idx][match_idx];
        scb_queue[port_idx].delete(match_idx);
        
        // Verify Data Integrity
        if (compare_packets(expected_pkt, received_pkt)) begin
          $display("[Checker] SUCCESS: Packet ID %0d matched on Port %0d", 
                   received_pkt.packet_id, port_idx);
          matches++;
        end else begin
          $error("[Checker] ERROR: Data Corruption on Port %0d. ID: %0d", 
                 port_idx, received_pkt.packet_id);
           $display("    Expected: Src=%b Tgt=%b Data=%h", 
                   expected_pkt.source, expected_pkt.target, expected_pkt.data);
          $display("    Received: Src=%b Tgt=%b Data=%h", 
                   received_pkt.source, received_pkt.target, received_pkt.data);
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
    $display("\n-----------------------------------------");
    $display(" CHECKER SUMMARY");
    $display(" Matches:    %0d", matches);
    $display(" Mismatches: %0d", mismatches);
    $display("-----------------------------------------\n");
  endfunction

endclass