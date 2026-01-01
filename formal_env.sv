// formal_env.sv
import packet_pkg::*;

module formal_env;

  // 1. Generate Clock & Reset
  logic clk;
  logic rst_n;

  // 2. Instantiate Interfaces
  port_if port0(clk, rst_n);
  port_if port1(clk, rst_n);
  port_if port2(clk, rst_n);
  port_if port3(clk, rst_n);

  // 3. Instantiate the DUT
  switch_4port dut (
    .clk(clk),
    .rst_n(rst_n),
    .port0(port0),
    .port1(port1),
    .port2(port2),
    .port3(port3)
  );

  // -------------------------------------------------------------
  // 4. BIND ASSERTIONS (Directly inside the Environment)
  // -------------------------------------------------------------

  // A. Bind FIFO Assertions
  // We bind to the module 'fifo' (lowercase) as defined in FIFO.sv
  bind fifo fifo_sva #(
      .DEPTH(packet_pkg::DEPTH), 
      .PACKET_WIDTH(packet_pkg::PACKET_WIDTH)
  ) i_fifo_props (
      .clk(clk),
      .rst_n(rst_n),
      .rd_en(rd_en),
      .fifo_empty(fifo_empty),
      .fifo_count(fifo_count),
      .header_out(header_out), // Defined in FIFO.sv line 81
      .rd_ptr(rd_ptr),
      .mem(mem)
  );

  // B. Bind Switch Port Assertions
  // We bind to 'switch_port'. We use local wire 'header_out' found in switch_port.sv line 81.
  bind switch_port port_sva i_port_props (
      .clk(clk),
      .rst_n(rst_n),
      .fifo_empty(fifo_empty),
      .current_state(current_state),
      .grant(grant),
      .pkt_valid(pkt_valid),
      .pkt_type(pkt_type),
      .read_en_fifo(read_en_fifo),
      .source_in(header_out[3:0]),  // Bottom 4 bits of header are source
      .target_in(header_out[7:4])   // Next 4 bits are target
  );

  // C. Bind Arbiter Assertions
  bind arbiter arbiter_sva i_arb_props (.*);

endmodule