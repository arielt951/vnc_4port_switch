class driver extends component_base;
  mailbox #(packet) mbx;
  virtual port_if vif;
  int port_id;

  packet current_pkt;
  
  // CONNECTION TO CHECKER
  checker chk_h; 

  function new(string name, component_base parent);
    super.new(name, parent);
  endfunction

  function void configure(virtual port_if vif, int port_id);
    this.vif = vif;
    this.port_id = port_id;
  endfunction

  task run(int num_packets);
    packet p;
    repeat(num_packets) begin
      // A. Get Packet from Sequencer
      mbx.get(current_pkt);

      
      // B. REGISTER WITH CHECKER (The new connection)
      if (chk_h != null) begin
        chk_h.add_expected_packet(p);
      end else begin
        $error("[Driver] Error: Checker handle is null!");
      end
      
      // C. Drive Packet to DUT
      p.print($sformatf("Driver_%0d", port_id));
      vif.drive_packet(current_pkt);
    end
  endtask
endclass