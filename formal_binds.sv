import packet_pkg::*;

// NO 'module formal_binds;' here!

// 1. Bind FIFO Assertions
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

  bind switch_port port_sva i_port_props (
      .clk(clk),
      .rst_n(rst_n),
      .fifo_empty(fifo_empty),
      .current_state(current_state),
      .grant(grant),
      .pkt_valid(pkt_valid),
      .pkt_type(pkt_type),
      .read_en_fifo(read_en_fifo),
      .source_in(header_out[3:0]), 
      .target_in(header_out[7:4])
  );

  bind arbiter arbiter_sva i_arb_props (.*);

// NO 'endmodule' here!