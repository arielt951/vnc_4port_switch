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
      option.per_instance = 1; 

      // A. Packet Type
      cp_type: coverpoint cov_pkt.pkt_type {
          bins sdp = {SDP};
          bins mdp = {MDP};
          bins bdp = {BDP};
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
          // Multicast: Any value with 2 or 3 bits set
          bins multicast = {[4'b0011:4'b1110]} with ($countones(item) inside {2,3});
          
          // --- NEW IGNORE RULES ---
          // A Monitor on Port X will never see a Unicast packet destined for Port Y.
          // We ignore the bins that don't match the current 'port_id'.
          ignore_bins ignore_p0 = binsof(p0) iff (port_id != 0);
          ignore_bins ignore_p1 = binsof(p1) iff (port_id != 1);
          ignore_bins ignore_p2 = binsof(p2) iff (port_id != 2);
          ignore_bins ignore_p3 = binsof(p3) iff (port_id != 3);
        }

      // D. Cross Coverage: Source x Type (FIXED SYNTAX)
      cx_type_src: cross cp_source, cp_type {
          // We use 'iff' to make the ignore rule conditional on the port_id
          
          // 1. Ignore SDP Self-Loops (Physically impossible)
          ignore_bins sdp_self_0 = binsof(cp_source.p0) && binsof(cp_type.sdp) iff (port_id == 0);
          ignore_bins sdp_self_1 = binsof(cp_source.p1) && binsof(cp_type.sdp) iff (port_id == 1);
          ignore_bins sdp_self_2 = binsof(cp_source.p2) && binsof(cp_type.sdp) iff (port_id == 2);
          ignore_bins sdp_self_3 = binsof(cp_source.p3) && binsof(cp_type.sdp) iff (port_id == 3);

          // 2. Ignore MDP Self-Loops (Physically impossible)
          ignore_bins mdp_self_0 = binsof(cp_source.p0) && binsof(cp_type.mdp) iff (port_id == 0);
          ignore_bins mdp_self_1 = binsof(cp_source.p1) && binsof(cp_type.mdp) iff (port_id == 1);
          ignore_bins mdp_self_2 = binsof(cp_source.p2) && binsof(cp_type.mdp) iff (port_id == 2);
          ignore_bins mdp_self_3 = binsof(cp_source.p3) && binsof(cp_type.mdp) iff (port_id == 3);
      }
      
      // E. Cross Coverage: Routing (Source x Target)
      cx_route: cross cp_source, cp_target {
          // Ignore Self-Loop targets (Source 0 -> Target 0 is illegal in Unicast)
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