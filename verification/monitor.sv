class monitor extends component_base;
  
  // 1. Interface Handle (to snoop pins)
  virtual port_if vif;
  int port_id;
  
  // 2. Output Channel (to send observed packets to Checker)
  mailbox #(packet) mon_mbx;

  function new(string name, component_base parent);
    super.new(name, parent);
    mon_mbx = new(); // Create the mailbox
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
      
      // C. LOG: Print what we saw
      pkt.print($sformatf("Monitor_%0d", port_id));
      
      // D. PUBLISH: Send to the Checker via mailbox
      mon_mbx.put(pkt);
    end
  endtask
  
endclass