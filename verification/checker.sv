class checker extends component_base;

  // 1. Connectivity
  monitor mon_h[4]; 

  // 2. Scoreboard
  packet scb_queue[4][$];
  
  // 3. Stats
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
  // TASK: Check Port (Content-Based Search)
  // ----------------------------------------------------------------
  task check_port(int port_idx);
    packet received_pkt;
    packet expected_pkt;
    int match_idx;
    
    forever begin
      // 1. Wait for packet
      mon_h[port_idx].mon_mbx.get(received_pkt);
      
      // 2. SEARCH the queue for DATA MATCH (Fix for ID mismatch)
      match_idx = -1;
      foreach(scb_queue[port_idx][i]) begin
        // Use the compare function to find the packet, not the ID
        if (compare_packets(scb_queue[port_idx][i], received_pkt)) begin
            match_idx = i;
            break; // Found it
        end
      end

      // 3. Evaluate
      if (match_idx == -1) begin
        $error("[Checker] ERROR: Unexpected/Unknown packet on Port %0d. ID: %0d", 
               port_idx, received_pkt.packet_id);
        received_pkt.print("RECEIVED_UNKNOWN");
        mismatches++;
      end 
      else begin
        // Found it! Remove from queue.
        expected_pkt = scb_queue[port_idx][match_idx];
        scb_queue[port_idx].delete(match_idx);
        
        $display("[Checker] SUCCESS: Packet matched on Port %0d (DrvID:%0d -> MonID:%0d)", 
                 port_idx, expected_pkt.packet_id, received_pkt.packet_id);
        matchess++;
      end
    end
  endtask

  // Helper: Compare fields
  function bit compare_packets(packet exp, packet rcv);
    if (exp.source !== rcv.source) return 0;
    if (exp.target !== rcv.target) return 0;
    if (exp.data   !== rcv.data)   return 0;
    return 1;
  endfunction
  
function void report();
    int pending_packets = 0;
    int src_stuck[4] = '{0,0,0,0}; // Count lost packets by SOURCE
    
    $display("\n=========================================");
    $display(" DETAILED LOST PACKET REPORT");
    $display("=========================================");

    // 1. Iterate through all queues (0 to 3) to find stuck packets
    foreach(scb_queue[i]) begin 
      // 'i' is the Destination Port where the packet WAS expected
      if (scb_queue[i].size() > 0) begin
          $display("--- Missing at Output Port %0d ---", i);
          
          foreach(scb_queue[i][j]) begin
            packet p = scb_queue[i][j];
            pending_packets++;
            
            // PRINT THE SPECIFIC PACKET DETAILS [cite: 78-79]
            $display("  [LOST] ID:%0d | Src:%b | Tgt:%b | Data(Hex):%h | Type:%s", 
                     p.packet_id, p.source, p.target, p.data, p.pkt_type.name());

            // Collect Stats for Summary
            case (p.source)
              4'b0001: src_stuck[0]++;
              4'b0010: src_stuck[1]++;
              4'b0100: src_stuck[2]++;
              4'b1000: src_stuck[3]++;
            endcase
          end
      end
    end

    // 2. Print Summary
    $display("\n=========================================");
    $display(" CHECKER SUMMARY");
    $display(" Matches:          %0d", matchess);
    $display(" Mismatches:       %0d", mismatches);
    $display(" Pending (Lost):   %0d", pending_packets);
    $display("-----------------------------------------");
    $display(" LOST PACKET ANALYSIS (By Source)");
    $display(" Stuck from Port 0: %0d", src_stuck[0]);
    $display(" Stuck from Port 1: %0d", src_stuck[1]);
    $display(" Stuck from Port 2: %0d", src_stuck[2]);
    $display(" Stuck from Port 3: %0d", src_stuck[3]);
    $display("=========================================\n");
    
    if (pending_packets > 0) $error("TEST FAILED: %0d packets lost.", pending_packets);
  endfunction

endclass