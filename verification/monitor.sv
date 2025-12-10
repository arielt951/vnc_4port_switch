class monitor extends component_base;
  
  // 1. Interface Handle (to snoop pins)
  virtual port_if vif;
  int port_id;
  
  // 2. Output Channel (to send observed packets to Checker)
  mailbox #(packet) mon_mbx;
  covergroup packet_cg (ref packet p); 
      option.per_instance = 1;

      // Use 'p' (the argument) instead of 'pkt'
      cp_type: coverpoint p.pkt_type {
          bins sdp = {SDP};
          bins mdp = {MDP};
          bins bdp = {BDP};
      }

      cp_source: coverpoint p.source {
          bins port0 = {4'b0001};
          bins port1 = {4'b0010};
          bins port2 = {4'b0100};
          bins port3 = {4'b1000};
      }

      cp_target: coverpoint p.target {
          bins port0 = {4'b0001};
          bins port1 = {4'b0010};
          bins port2 = {4'b0100};
          bins port3 = {4'b1000};
          bins broadcast = {4'b1111};
          bins multicast[] = default; 
      }

      cross cp_source, cp_type;
  endgroup

  packet cov_pkt;

  function new(string name, component_base parent);
    super.new(name, parent);
    mon_mbx = new(); // Create the mailbox
    // INSTANTIATE THE COVERGROUP
    packet_cg = new(cov_pkt);
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

      cov_pkt = pkt; 
      packet_cg.sample();
      
      // C. LOG: Print what we saw
      pkt.print($sformatf("Monitor_%0d", port_id));
      
      // D. PUBLISH: Send to the Checker via mailbox
      mon_mbx.put(pkt);
    end
  endtask
  
endclass