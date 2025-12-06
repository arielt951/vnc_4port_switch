class driver extends component_base;
  
  // 1. Communication Resources
  mailbox #(packet) mbx;  // Inbox from Sequencer
  virtual port_if vif;    // Connection to Physical Pins
  int port_id;            // ID (0-3) to identify this driver instance

  // 2. Constructor
  function new(string name, component_base parent);
    super.new(name, parent);
  endfunction

  // 3. Configuration
  // Called by the Agent to connect the Virtual Interface
  function void configure(virtual port_if vif, int port_id);
    this.vif = vif;
    this.port_id = port_id;
  endfunction

  // 4. Main Runtime Task
  task run(int num_packets);
    packet pkt;
    
    // Loop for the specific number of packets requested by the test
    repeat(num_packets) begin
      
      // A. GET: Retrieve a packet from the mailbox.
      // This is BLOCKING. If the mailbox is empty, the driver waits here.
      mbx.get(pkt);
      
      // B. LOG: Print the packet so we know what is being sent.
      // We add a tag "Driver_X" to distinguish logs from different ports.
      pkt.print($sformatf("Driver_%0d", port_id));
      
      // C. DRIVE: Pass the object to the interface.
      // The interface task 'drive_packet' handles the actual pin wiggling (clock cycles).
      vif.drive_packet(pkt);
      
    end
  endtask
  
endclass