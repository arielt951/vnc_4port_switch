import packet_pkg::*;

// 1. Bind FIFO (Lowercase 'fifo' based on your file)
bind fifo fifo_sva #(
      .DEPTH(packet_pkg::DEPTH), 
      .PACKET_WIDTH(packet_pkg::PACKET_WIDTH)
  ) i_fifo_props (
      .clk(clk),
      .rst_n(rst_n),
      .rd_en(rd_en),
      .fifo_empty(fifo_empty),
      .fifo_count(fifo_count),
      .header_out(header_out),
      .rd_ptr(rd_ptr),
      .mem(mem)
  );

// 2. Bind Switch Port (UPDATED: Using Hierarchical Paths)
bind switch_port port_sva i_port_props (
      .clk(clk),
      .rst_n(rst_n),
      .fifo_empty(fifo_empty),
      .current_state(current_state),
      .grant(grant),
      .pkt_valid(pkt_valid),
      .pkt_type(pkt_type),
      .read_en_fifo(read_en_fifo),
      // CHANGE: Point directly to the FIFO instance output
      .source_in(port_fifo.header_out[3:0]), 
      .target_in(port_fifo.header_out[7:4])
  );

// 3. Bind Arbiter
bind arbiter arbiter_sva i_arb_props (.*);