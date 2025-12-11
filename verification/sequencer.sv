class sequencer extends component_base;
  mailbox #(packet) mbx;
  int port_id;

  function new(string name, component_base parent);
    super.new(name, parent);
  endfunction

  function void configure(int port_id);
    this.port_id = port_id;
  endfunction

  task run(int num_packets);
    packet p;
    repeat(num_packets) begin
      // 1. Create & Randomize
      p = new($sformatf("pkt_%0d", port_id), port_id);
      p.source.rand_mode(0); 
      void'(p.randomize());
      p.calc_type();

      // 2. Send to Driver
      mbx.put(p);
      
      // 3. Inter-packet Delay
      repeat($urandom_range(5, 15)) #10; // Simple delay
    end
  endtask
endclass