class sequencer extends component_base;
  
  // Communication channel to the Driver
  mailbox #(packet) mbx;
  
  // ID of the port this sequencer controls (0, 1, 2, or 3)
  int port_id;

  function new(string name, component_base parent);
    super.new(name, parent);
  endfunction

  // Called by Agent to set the ID
  function void configure(int port_id);
    this.port_id = port_id;
  endfunction

  // Main generation loop
  task run(int num_packets);
    packet pkt;
    
    repeat(num_packets) begin
      // 1. Create Packet
      // We pass 'port_id' here so the packet automatically sets 
      // the correct One-Hot source address (e.g., 0 -> 0001).
      pkt = new("pkt", this.port_id);
      
      // 2. Randomize
      // We only randomize target and data. Source is already fixed.
      if (!pkt.randomize()) begin
        $error("%s: Randomization failed", pathname());
      end
      
      // 3. Send to Driver
      // This is a blocking put; it waits if the mailbox is full.
      mbx.put(pkt);
    end
  endtask
  
endclass