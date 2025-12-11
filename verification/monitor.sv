class monitor extends component_base;
  
  // 1. Interface Handle
  virtual port_if vif;
  int port_id;
  // 2. Output Channel
  mailbox #(packet) mon_mbx;
  
  // 3. Class-level packet handle for coverage sampling
  packet cov_pkt;

  // -------------------------------------------------------
  // FUNCTIONAL COVERAGE GROUP
  // -------------------------------------------------------
  covergroup packet_cg;
      option.per_instance = 1; // Track coverage per port instance

      // A. Packet Type Coverage
      cp_type: coverpoint cov_pkt.pkt_type {
          bins sdp = {SDP};
          bins mdp = {MDP};
          bins bdp = {BDP};
      }

      // B. Source Port Coverage
      cp_source: coverpoint cov_pkt.source {
          bins p0 = {4'b0001};
          bins p1 = {4'b0010};
          bins p2 = {4'b0100};
          bins p3 = {4'b1000};
      }

      // C. Target Port Coverage
      cp_target: coverpoint cov_pkt.target {
          bins p0 = {4'b0001};
          bins p1 = {4'b0010};
          bins p2 = {4'b0100};
          bins p3 = {4'b1000};
          bins broadcast = {4'b1111};
          // Multicast: Any value with 2 or 3 bits set
          bins multicast = {[4'b0011:4'b1110]} with ($countones(item) inside {2,3});
      }

      // D. Cross Coverage: Source x Type (with Ignore Rules)
      cx_type_src: cross cp_source, cp_type {
          // Ignore Self-Loop for Single Packets (Physically impossible on Output)
          ignore_bins self_loop_sdp = binsof(cp_source.p0) && binsof(cp_type.sdp) && (port_id == 0) ||
                                      binsof(cp_source.p1) && binsof(cp_type.sdp) && (port_id == 1) ||
                                      binsof(cp_source.p2) && binsof(cp_type.sdp) && (port_id == 2) ||
                                      binsof(cp_source.p3) && binsof(cp_type.sdp) && (port_id == 3);

          // Ignore Self-Loop for Multicast Packets (Impossible on Output)
          ignore_bins self_loop_mdp = binsof(cp_source.p0) && binsof(cp_type.mdp) && (port_id == 0) ||
                                      binsof(cp_source.p1) && binsof(cp_type.mdp) && (port_id == 1) ||
                                      binsof(cp_source.p2) && binsof(cp_type.mdp) && (port_id == 2) ||
                                      binsof(cp_source.p3) && binsof(cp_type.mdp) && (port_id == 3);
      }
      
      // E. Cross Coverage: Routing (Source x Target)
      cx_route: cross cp_source, cp_target {
          // Ignore Self-Loop targets (e.g. Source 0 -> Target 0 is illegal in Unicast)
          ignore_bins self_route = binsof(cp_source.p0) && binsof(cp_target.p0) ||
                                   binsof(cp_source.p1) && binsof(cp_target.p1) ||
                                   binsof(cp_source.p2) && binsof(cp_target.p2) ||
                                   binsof(cp_source.p3) && binsof(cp_target.p3);
      }

  endgroup

  function new(string name, component_base parent);
    super.new(name, parent);
    mon_mbx = new(); 
    // Instantiate the covergroup
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
      vif.collect_packet(pkt);
      pkt.calc_type();

      // Coverage Sampling
      cov_pkt = pkt; 
      packet_cg.sample(); 

      pkt.print($sformatf("Monitor_%0d", port_id));
      mon_mbx.put(pkt);
    end
  endtask
  
endclass