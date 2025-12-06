class agent extends component_base;
  
  // 1. Child Components
  sequencer seq;
  driver    drv;
  monitor   mon;
  
  // 2. Internal Communication (Sequencer -> Driver)
  mailbox #(packet) mbx;

  function new(string name, component_base parent);
    super.new(name, parent);
    
    // Create Components
    seq = new("sequencer", this);
    drv = new("driver",    this);
    mon = new("monitor",   this);
    
    // Create the Mailbox for Seq-Drv handshake
    mbx = new(); 
  endfunction

  // 3. Configuration & Connection
  function void configure(virtual port_if vif, int port_id);
    [cite_start]// Pass configuration down to children [cite: 42]
    seq.configure(port_id);
    drv.configure(vif, port_id);
    mon.configure(vif, port_id);
    
    [cite_start]// Connect the Mailbox [cite: 42]
    // Both sequencer and driver now share the exact same mailbox instance
    seq.mbx = this.mbx;
    drv.mbx = this.mbx;
  endfunction

  // 4. Execution Logic
  task run(int num_packets);
    // A. Start Passive Component (Monitor)
    // We use 'join_none' so the test doesn't wait for the monitor (it runs forever)
    fork
      mon.run();
    join_none

    // B. Start Active Components (Sequencer & Driver)
    // We use 'join' so this task blocks until both are finished sending packets
    fork
      seq.run(num_packets);
      drv.run(num_packets);
    join
  endtask

endclass