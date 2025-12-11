class monitor extends component_base;
  
  // 1. Interface Handle
  virtual port_if vif;
  int port_id;
  // 2. Output Channel
  mailbox #(packet) mon_mbx;
  
  // 3. Class-level packet handle for coverage sampling
  packet cov_pkt;

  // -------------------------------------------------------
  // FUNCTIONAL COVERAGE: PORT-SPECIFIC DEFINITIONS
  // -------------------------------------------------------
  covergroup packet_cg;
      option.per_instance = 1;

      // -------------------------------------------------------
      // 1. COMMON COVERAGE (Applies to everyone)
      // -------------------------------------------------------
      cp_type: coverpoint cov_pkt.pkt_type {
          bins sdp = {SDP};
          bins mdp = {MDP};
          bins bdp = {BDP};
      }

      cp_source: coverpoint cov_pkt.source {
          bins p0 = {4'b0001};
          bins p1 = {4'b0010};
          bins p2 = {4'b0100};
          bins p3 = {4'b1000};
      }

      // Cross: Type x Source (Common ignore rules)
      cx_type_src: cross cp_source, cp_type {
          // Ignore Self-Loops (Physically impossible on Output)
          ignore_bins sdp_self_0 = binsof(cp_source.p0) && binsof(cp_type.sdp) iff (port_id == 0);
          ignore_bins sdp_self_1 = binsof(cp_source.p1) && binsof(cp_type.sdp) iff (port_id == 1);
          ignore_bins sdp_self_2 = binsof(cp_source.p2) && binsof(cp_type.sdp) iff (port_id == 2);
          ignore_bins sdp_self_3 = binsof(cp_source.p3) && binsof(cp_type.sdp) iff (port_id == 3);

          ignore_bins mdp_self_0 = binsof(cp_source.p0) && binsof(cp_type.mdp) iff (port_id == 0);
          ignore_bins mdp_self_1 = binsof(cp_source.p1) && binsof(cp_type.mdp) iff (port_id == 1);
          ignore_bins mdp_self_2 = binsof(cp_source.p2) && binsof(cp_type.mdp) iff (port_id == 2);
          ignore_bins mdp_self_3 = binsof(cp_source.p3) && binsof(cp_type.mdp) iff (port_id == 3);
      }

      // -------------------------------------------------------
      // 2. PORT 0 SPECIFIC COVERAGE
      // -------------------------------------------------------
      // Only active if this Monitor is attached to Port 0
      cp_target_p0: coverpoint cov_pkt.target iff (port_id == 0) {
          bins self     = {4'b0001};
          bins bcast    = {4'b1111};
          // Multicasts that involve Port 0 (Look for bit 0 to be High)
          bins mcast[]  = {4'b0011, 4'b0101, 4'b1001, 4'b0111, 4'b1011, 4'b1101};
      }
      
      cx_route_p0: cross cp_source, cp_target_p0 iff (port_id == 0) {
           // Ignore self-routing (Source 0 -> Target 0 is illegal in Unicast)
           ignore_bins self = binsof(cp_source.p0) && binsof(cp_target_p0.self);
      }

      // -------------------------------------------------------
      // 3. PORT 1 SPECIFIC COVERAGE
      // -------------------------------------------------------
      cp_target_p1: coverpoint cov_pkt.target iff (port_id == 1) {
          bins self     = {4'b0010};
          bins bcast    = {4'b1111};
          // Multicasts that involve Port 1 (Look for bit 1 to be High)
          bins mcast[]  = {4'b0011, 4'b0110, 4'b1010, 4'b0111, 4'b1011, 4'b1110};
      }

      cx_route_p1: cross cp_source, cp_target_p1 iff (port_id == 1) {
           ignore_bins self = binsof(cp_source.p1) && binsof(cp_target_p1.self);
      }

      // -------------------------------------------------------
      // 4. PORT 2 SPECIFIC COVERAGE
      // -------------------------------------------------------
      cp_target_p2: coverpoint cov_pkt.target iff (port_id == 2) {
          bins self     = {4'b0100};
          bins bcast    = {4'b1111};
          // Multicasts that involve Port 2 (Look for bit 2 to be High)
          bins mcast[]  = {4'b0101, 4'b0110, 4'b1100, 4'b0111, 4'b1101, 4'b1110};
      }

      cx_route_p2: cross cp_source, cp_target_p2 iff (port_id == 2) {
           ignore_bins self = binsof(cp_source.p2) && binsof(cp_target_p2.self);
      }

      // -------------------------------------------------------
      // 5. PORT 3 SPECIFIC COVERAGE
      // -------------------------------------------------------
      cp_target_p3: coverpoint cov_pkt.target iff (port_id == 3) {
          bins self     = {4'b1000};
          bins bcast    = {4'b1111};
          // Multicasts that involve Port 3 (Look for bit 3 to be High)
          bins mcast[]  = {4'b1001, 4'b1010, 4'b1100, 4'b1011, 4'b1101, 4'b1110};
      }

      cx_route_p3: cross cp_source, cp_target_p3 iff (port_id == 3) {
           ignore_bins self = binsof(cp_source.p3) && binsof(cp_target_p3.self);
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