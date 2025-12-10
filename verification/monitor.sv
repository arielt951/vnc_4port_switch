class monitor extends component_base;
  
  // 1. Interface Handle (to snoop pins)
  virtual port_if vif;
  int port_id;
  
  // 2. Output Channel (to send observed packets to Checker)
  mailbox #(packet) mon_mbx;
covergroup packet_cg;
      option.per_instance = 1; // Track coverage per monitor instance (Port 0, Port 1...)

      // A. Packet Type Coverage
      // Did we see Single, Multicast, and Broadcast packets?
      cp_type: coverpoint pkt.pkt_type {
          bins sdp = {SDP}; // Single Destination
          bins mdp = {MDP}; // Multicast
          bins bdp = {BDP}; // Broadcast
      }

      // B. Source Port Coverage
      // Did packets originate from all valid ports?
      cp_source: coverpoint pkt.source {
          bins port0 = {4'b0001};
          bins port1 = {4'b0010};
          bins port2 = {4'b0100};
          bins port3 = {4'b1000};
      }

      // C. Target Port Coverage
      // Did packets try to go to all valid destinations?
      cp_target: coverpoint pkt.target {
          bins port0 = {4'b0001};
          bins port1 = {4'b0010};
          bins port2 = {4'b0100};
          bins port3 = {4'b1000};
          bins broadcast = {4'b1111};
          // Auto-bin the rest (Multicast combinations)
          bins multicast[] = default; 
      }

      // D. Cross Coverage
      // Did we verify that Port 0 sent a Broadcast? Did Port 2 send a Multicast?
      cross cp_source, cp_type;

  endgroup

  function new(string name, component_base parent);
    super.new(name, parent);
    mon_mbx = new(); // Create the mailbox
    // INSTANTIATE THE COVERGROUP
    packet_cg = new();
  endfunction

  function void configure(virtual port_if vif, int port_id);
    this.vif = vif;
    this.port_id = port_id;
  endfunction

  // 3. Main Run Task
  task run();
    packet pkt;
    
    forever begin
      // A. COLLECT: Wait for the interface to see a valid packet
      // This task (in port_if) blocks until 'valid_out' goes high
      vif.collect_packet(pkt);
      
      // B. CLASSIFY: Determine packet type (SDP/MDP/BDP) 
      // utilizing the logic we defined in packet_pkg
      pkt.calc_type(); 

      packet_cg.sample();
      
      // C. LOG: Print what we saw
      pkt.print($sformatf("Monitor_%0d", port_id));
      
      // D. PUBLISH: Send to the Checker via mailbox
      mon_mbx.put(pkt);
    end
  endtask
  
endclass