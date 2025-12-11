class monitor extends component_base;
  
  // 1. Interface Handle
  virtual port_if vif;
  int port_id;
  // 2. Output Channel
  mailbox #(packet) mon_mbx;
  
  // 3. Class-level packet handle for coverage sampling
  packet cov_pkt;

// -------------------------------------------------------
  // FUNCTIONAL COVERAGE GROUP (Consolidated & Clean)
  // -------------------------------------------------------
  covergroup packet_cg;
      option.per_instance = 1;

      // 1. Packet Type
      cp_type: coverpoint cov_pkt.pkt_type {
          bins sdp = {SDP};
          bins mdp = {MDP};
          bins bdp = {BDP};
      }

      // 2. Source Port
      cp_source: coverpoint cov_pkt.source {
          bins p0 = {4'b0001};
          bins p1 = {4'b0010};
          bins p2 = {4'b0100};
          bins p3 = {4'b1000};
      }

      // 3. Target Port (Merged back to one, with conditional bins)
      cp_target: coverpoint cov_pkt.target {
          // Unicast: Only exist if this Monitor matches the port ID
          bins p0 = {4'b0001} iff (port_id == 0);
          bins p1 = {4'b0010} iff (port_id == 1);
          bins p2 = {4'b0100} iff (port_id == 2);
          bins p3 = {4'b1000} iff (port_id == 3);
          
          bins broadcast = {4'b1111};

          // Multicasts: Defined per port
          // Port 0 Multicasts
          bins mcast_p0[] = {4'b0011, 4'b0101, 4'b1001, 4'b0111, 4'b1011, 4'b1101} iff (port_id == 0);
          // Port 1 Multicasts
          bins mcast_p1[] = {4'b0011, 4'b0110, 4'b1010, 4'b0111, 4'b1011, 4'b1110} iff (port_id == 1);
          // Port 2 Multicasts
          bins mcast_p2[] = {4'b0101, 4'b0110, 4'b1100, 4'b0111, 4'b1101, 4'b1110} iff (port_id == 2);
          // Port 3 Multicasts
          bins mcast_p3[] = {4'b1001, 4'b1010, 4'b1100, 4'b1011, 4'b1101, 4'b1110} iff (port_id == 3);
      }

      // 4. Cross: Type x Source
      cx_type_src: cross cp_source, cp_type {
          ignore_bins sdp_self_0 = binsof(cp_source.p0) && binsof(cp_type.sdp) iff (port_id == 0);
          ignore_bins sdp_self_1 = binsof(cp_source.p1) && binsof(cp_type.sdp) iff (port_id == 1);
          ignore_bins sdp_self_2 = binsof(cp_source.p2) && binsof(cp_type.sdp) iff (port_id == 2);
          ignore_bins sdp_self_3 = binsof(cp_source.p3) && binsof(cp_type.sdp) iff (port_id == 3);

          ignore_bins mdp_self_0 = binsof(cp_source.p0) && binsof(cp_type.mdp) iff (port_id == 0);
          ignore_bins mdp_self_1 = binsof(cp_source.p1) && binsof(cp_type.mdp) iff (port_id == 1);
          ignore_bins mdp_self_2 = binsof(cp_source.p2) && binsof(cp_type.mdp) iff (port_id == 2);
          ignore_bins mdp_self_3 = binsof(cp_source.p3) && binsof(cp_type.mdp) iff (port_id == 3);
      }
      
      // 5. Cross: Routing (Merged back to one)
      cx_route: cross cp_source, cp_target {
          // Ignore Self-Loop targets
          ignore_bins self_route = binsof(cp_source.p0) && binsof(cp_target.p0) ||
                                   binsof(cp_source.p1) && binsof(cp_target.p1) ||
                                   binsof(cp_source.p2) && binsof(cp_target.p2) ||
                                   binsof(cp_source.p3) && binsof(cp_target.p3);

          // Ignore Multicast Loopbacks (Illegal if Source is part of Target)
          // We must list every invalid combination to be safe
          
          // Source 0 cannot send to any target containing bit 0
          ignore_bins m_src0 = binsof(cp_source.p0) && binsof(cp_target) intersect {4'b0011, 4'b0101, 4'b1001, 4'b0111, 4'b1011, 4'b1101};
          
          // Source 1 cannot send to any target containing bit 1
          ignore_bins m_src1 = binsof(cp_source.p1) && binsof(cp_target) intersect {4'b0011, 4'b0110, 4'b1010, 4'b0111, 4'b1011, 4'b1110};

          // Source 2 cannot send to any target containing bit 2
          ignore_bins m_src2 = binsof(cp_source.p2) && binsof(cp_target) intersect {4'b0101, 4'b0110, 4'b1100, 4'b0111, 4'b1101, 4'b1110};

          // Source 3 cannot send to any target containing bit 3
          ignore_bins m_src3 = binsof(cp_source.p3) && binsof(cp_target) intersect {4'b1001, 4'b1010, 4'b1100, 4'b1011, 4'b1101, 4'b1110};
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