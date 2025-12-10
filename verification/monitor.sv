class monitor extends component_base;
  
  virtual port_if vif;
  int port_id;
  mailbox #(packet) mon_mbx;
  
  // Class-level packet handle for coverage
  packet cov_pkt;

  // -------------------------------------------------------
  // IMPROVED COVERGROUP DEFINITION
  // -------------------------------------------------------
  covergroup packet_cg;
      option.per_instance = 1; // Ensure we track Port 0, 1, 2, 3 separately

      // A. Packet Type (The likely culprit for low score)
      cp_type: coverpoint cov_pkt.pkt_type {
          bins sdp = {SDP};
          bins mdp = {MDP};
          bins bdp = {BDP};
          // Trap unknown types to debug issues
          illegal_bins bad_type = {ERR}; 
      }

      // B. Source Port 
      cp_source: coverpoint cov_pkt.source {
          bins p0 = {4'b0001};
          bins p1 = {4'b0010};
          bins p2 = {4'b0100};
          bins p3 = {4'b1000};
      }

      // C. Target Port
      cp_target: coverpoint cov_pkt.target {
          bins p0 = {4'b0001};
          bins p1 = {4'b0010};
          bins p2 = {4'b0100};
          bins p3 = {4'b1000};
          bins broadcast = {4'b1111};
          // Explicitly define Multicast to catch "any 2 or 3 bits set"
          bins multicast = { [4'b0011 : 4'b1110] } with ($countones(item) inside {2,3});
      }

      // D. Cross Coverage (Named explicitly for testbench access)
      cx_all: cross cp_source, cp_type;

  endgroup

  function new(string name, component_base parent);
    super.new(name, parent);
    mon_mbx = new(); 
    
    // Instantiate covergroup (No arguments needed now)
    packet_cg = new(); 
  endfunction

  function void configure(virtual port_if vif, int port_id);
    this.vif = vif;
    this.port_id = port_id;
  endfunction

  task run();
    packet pkt;
    forever begin
      vif.collect_packet(pkt);
      pkt.calc_type();

      // CRITICAL STEP:
      // 1. Copy the collected packet to the class member 'cov_pkt'
      cov_pkt = pkt; 
      
      // 2. Trigger the sample. The covergroup looks at 'cov_pkt' immediately.
      packet_cg.sample(); 

      pkt.print($sformatf("Monitor_%0d", port_id));
      mon_mbx.put(pkt);
    end
  endtask
  
endclass