class checker extends component_base;

  // Handles to environment components
  sequencer seq_h;     // Optional handle to sequencer (if needed for events)
  monitor   mon_h[4];  // Handles to the 4 port monitors

  // Scoreboard: An array of 4 queues (one per output port)
  // scb_queue[0] stores packets expected at Port 0, etc.
  packet scb_queue[4][$];

  // Statistics
  int matches;
  int mismatches;

  function new(string n, component_base p=null);
    super.new(n,p);
    matches = 0;
    mismatches = 0;
  endfunction

  // -------------------------------------------------------
  // 1. REGISTRATION (The "Golden Model")
  // -------------------------------------------------------
  // Call this function whenever a packet is injected into the switch.
  // It calculates where the packet *should* go and stores it.
  function void add_expected_packet(packet p);
    packet p_clone;
    
    // We must clone the packet so we store a copy, not the handle
    // (Simulating the packet traveling through the switch)
    p_clone = new p; 
    
    // ROUTING LOGIC: Determine which ports should receive this packet
    for(int i=0; i<4; i++) begin
      // If the i-th bit of target is 1, this port expects the packet
      if (p.target[i] == 1) begin
        scb_queue[i].push_back(p_clone);
        $display("[Checker] Expecting Packet ID %0d at Port %0d (Type: %s)", 
                 p.packet_id, i, p.pkt_type.name());
      end
    end
  endfunction

  // -------------------------------------------------------
  // 2. CHECKING ENGINE
  // -------------------------------------------------------
  task run();
    // Launch a separate monitor thread for each port
    foreach(mon_h[i]) begin
      fork
        int k = i; // Automatic variable for fork isolation
        monitor_port(k);
      join_none
    end
    wait fork; // Keep running
  endtask

  // Per-Port Monitor Task
  task monitor_port(int port_idx);
    packet received_pkt;
    packet expected_pkt;
    
    forever begin
      // A. Wait for packet from the specific monitor
      mon_h[port_idx].mon_mbx.get(received_pkt);
      
      // B. Check if we were expecting anything
      if (scb_queue[port_idx].size() == 0) begin
        $error("[Checker] ERROR: Unexpected packet received on Port %0d. ID: %0d", 
               port_idx, received_pkt.packet_id);
        mismatches++;
      end 
      else begin
        // C. Get the expected packet from the front of the queue
        expected_pkt = scb_queue[port_idx].pop_front();
        
        // D. Compare
        if (compare_packets(expected_pkt, received_pkt)) begin
          $display("[Checker] SUCCESS: Packet ID %0d matched on Port %0d", 
                   received_pkt.packet_id, port_idx);
          matches++;
        end else begin
          $error("[Checker] ERROR: Mismatch on Port %0d. Expected ID %0d, Got ID %0d", 
                 port_idx, expected_pkt.packet_id, received_pkt.packet_id);
          mismatches++;
        end
      end
    end
  endtask

  // -------------------------------------------------------
  // 3. COMPARISON LOGIC
  // -------------------------------------------------------
  function bit compare_packets(packet exp, packet rcv);
    // Compare critical fields
    if (exp.source !== rcv.source) return 0;
    if (exp.target !== rcv.target) return 0;
    if (exp.data   !== rcv.data)   return 0;
    return 1;
  endfunction
  
  // Reporting function (call at end of test)
  function void report();
    $display("\n-----------------------------------------");
    $display(" CHECKER SUMMARY");
    $display(" Matches:    %0d", matches);
    $display(" Mismatches: %0d", mismatches);
    $display("-----------------------------------------\n");
  endfunction

endclass