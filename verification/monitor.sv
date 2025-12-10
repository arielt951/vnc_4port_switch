class monitor extends component_base;
  
  // 1. Interface Handle (to snoop pins)
  virtual port_if vif;
  int port_id;
  // 2. Output Channel (to send observed packets to Checker)
  mailbox #(packet) mon_mbx;
  
  // Class-level packet handle for coverage
  packet cov_pkt;

  // -------------------------------------------------------
  // COVERGROUP DEFINITION
  // -------------------------------------------------------
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

      // FIX IS HERE: Added the label 'cross_type_src' to match switch_test.sv
      cross_type_src: cross cp_source, cp_type;
  endgroup

  function new(string name, component_base parent);
    super.new(name, parent);
    mon_mbx = new(); // Create the mailbox
    
    // INSTANTIATE THE COVERGROUP
    // Bind it to the class-level 'cov_pkt' variable
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
      vif.collect_packet(pkt);

      // B. CLASSIFY: Determine packet type (SDP/MDP/BDP) 
      pkt.calc_type();

      // C. SAMPLE COVERAGE
      cov_pkt = pkt;       // Copy local packet to class variable
      packet_cg.sample();  // Sample the class variable
      
      // D. LOG & PUBLISH
      pkt.print($sformatf("Monitor_%0d", port_id));
      mon_mbx.put(pkt);
    end
  endtask
  
endclass