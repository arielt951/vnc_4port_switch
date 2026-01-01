// Fusion Compiler Version V-2023.12-SP3 Verilog Writer
// Generated on 1/1/2026 at 21:16:21
// Library Name: switch_lib_baseline.dlib
// Block Name: switch_4port
// User Label: 
// Write Command: write_verilog -hierarchy all switch_4port_netlist.v
module switch_4port ( clk , rst_n , port0_clk , port0_rst_n , port0_valid_in , 
    port0_source_in , port0_target_in , port0_data_in , port0_valid_out , 
    port0_source_out , port0_target_out , port0_data_out , port1_clk , 
    port1_rst_n , port1_valid_in , port1_source_in , port1_target_in , 
    port1_data_in , port1_valid_out , port1_source_out , port1_target_out , 
    port1_data_out , port2_clk , port2_rst_n , port2_valid_in , 
    port2_source_in , port2_target_in , port2_data_in , port2_valid_out , 
    port2_source_out , port2_target_out , port2_data_out , port3_clk , 
    port3_rst_n , port3_valid_in , port3_source_in , port3_target_in , 
    port3_data_in , port3_valid_out , port3_source_out , port3_target_out , 
    port3_data_out ) ;
input  clk ;
input  rst_n ;
input  port0_clk ;
input  port0_rst_n ;
inout  port0_valid_in ;
inout  [3:0] port0_source_in ;
inout  [3:0] port0_target_in ;
inout  [7:0] port0_data_in ;
inout  port0_valid_out ;
inout  [3:0] port0_source_out ;
inout  [3:0] port0_target_out ;
inout  [7:0] port0_data_out ;
input  port1_clk ;
input  port1_rst_n ;
inout  port1_valid_in ;
inout  [3:0] port1_source_in ;
inout  [3:0] port1_target_in ;
inout  [7:0] port1_data_in ;
inout  port1_valid_out ;
inout  [3:0] port1_source_out ;
inout  [3:0] port1_target_out ;
inout  [7:0] port1_data_out ;
input  port2_clk ;
input  port2_rst_n ;
inout  port2_valid_in ;
inout  [3:0] port2_source_in ;
inout  [3:0] port2_target_in ;
inout  [7:0] port2_data_in ;
inout  port2_valid_out ;
inout  [3:0] port2_source_out ;
inout  [3:0] port2_target_out ;
inout  [7:0] port2_data_out ;
input  port3_clk ;
input  port3_rst_n ;
inout  port3_valid_in ;
inout  [3:0] port3_source_in ;
inout  [3:0] port3_target_in ;
inout  [7:0] port3_data_in ;
inout  port3_valid_out ;
inout  [3:0] port3_source_out ;
inout  [3:0] port3_target_out ;
inout  [7:0] port3_data_out ;

wire [15:0] fifo_data_out0 ;
wire [15:0] fifo_data_out1 ;
wire [15:0] fifo_data_out2 ;
wire [15:0] fifo_data_out3 ;
wire [1:0] mux_sel0 ;
wire [1:0] mux_sel1 ;
wire [1:0] mux_sel2 ;
wire [1:0] mux_sel3 ;
wire [1:0] top_arb_i_common_ptr ;
wire [1:0] port0_i_next_state ;
wire [1:0] port0_i_current_state ;
wire [127:0] port0_i_port_fifo_mem ;
wire [2:0] port0_i_port_fifo_wr_ptr ;
wire [2:0] port0_i_port_fifo_rd_ptr ;
wire [3:0] port0_i_port_fifo_fifo_count ;
wire [1:0] port1_i_next_state ;
wire [1:0] port1_i_current_state ;
wire [127:0] port1_i_port_fifo_mem ;
wire [2:0] port1_i_port_fifo_wr_ptr ;
wire [2:0] port1_i_port_fifo_rd_ptr ;
wire [3:0] port1_i_port_fifo_fifo_count ;
wire [1:0] port2_i_next_state ;
wire [1:0] port2_i_current_state ;
wire [127:0] port2_i_port_fifo_mem ;
wire [2:0] port2_i_port_fifo_wr_ptr ;
wire [2:0] port2_i_port_fifo_rd_ptr ;
wire [3:0] port2_i_port_fifo_fifo_count ;
wire [1:0] port3_i_next_state ;
wire [1:0] port3_i_current_state ;
wire [127:0] port3_i_port_fifo_mem ;
wire [2:0] port3_i_port_fifo_wr_ptr ;
wire [2:0] port3_i_port_fifo_rd_ptr ;
wire [3:0] port3_i_port_fifo_fifo_count ;

SDFFX1_RVT port1_i_port_fifo_mem_reg_7__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[126] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[126] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[126] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_wr_ptr_reg_2_ ( .D ( port2_i_port_fifo_N14 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_21 ) , 
    .RSTB ( rst_n ) , .Q ( port2_i_port_fifo_wr_ptr[2] ) , .QN ( ctmn_7011 ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[126] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_wr_ptr_reg_2_ ( .D ( port3_i_port_fifo_N14 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_24 ) , 
    .RSTB ( rst_n ) , .Q ( port3_i_port_fifo_wr_ptr[2] ) , .QN ( ctmn_7027 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_wr_ptr_reg_2_ ( .D ( port0_i_port_fifo_N14 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_15 ) , 
    .RSTB ( rst_n ) , .Q ( port0_i_port_fifo_wr_ptr[2] ) , .QN ( ctmn_6894 ) ) ;
AOI22X1_RVT ctmi_8128 ( .A1 ( ctmn_7209 ) , .A2 ( ctmn_6922 ) , 
    .A3 ( phfnn_306 ) , .A4 ( phfnn_196 ) , .Y ( port2_i_port_fifo_N24 ) ) ;
SDFFARX1_HVT top_arb_i_common_ptr_reg_1_ ( .D ( top_arb_i_N21 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( top_arb_i_common_ptr[1] ) , .QN ( ctmn_6645 ) ) ;
AO221X1_RVT ctmi_7845 ( .A1 ( HFSNET_9 ) , 
    .A2 ( port1_i_port_fifo_mem[104] ) , .A3 ( HFSNET_8 ) , 
    .A4 ( port1_i_port_fifo_mem[40] ) , .A5 ( ctmn_7082 ) , 
    .Y ( port1_i_port_fifo_N33 ) ) ;
INVX0_RVT phfnr_buf_984 ( .A ( ctmn_6629 ) , .Y ( phfnn_303 ) ) ;
AO221X1_RVT ctmi_7885 ( .A1 ( phfnn_303 ) , 
    .A2 ( port2_i_port_fifo_mem[104] ) , .A3 ( phfnn_304 ) , 
    .A4 ( port2_i_port_fifo_mem[40] ) , .A5 ( ctmn_7114 ) , 
    .Y ( port2_i_port_fifo_N33 ) ) ;
INVX2_HVT phfnr_buf_985 ( .A ( ctmn_6636 ) , .Y ( phfnn_304 ) ) ;
CGLNPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port0_i_port_fifo_N11 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) ) ;
INVX0_LVT phfnr_buf_960 ( .A ( ctmn_6630 ) , .Y ( phfnn_279 ) ) ;
INVX0_HVT clock_gate_inv_638 ( 
    .A ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Y ( clock_gate_net_25 ) ) ;
AO21X1_RVT ctmi_8011 ( .A1 ( port1_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( ctmn_6958 ) , .A3 ( ctmn_6957 ) , .Y ( port1_i_port_fifo_N14 ) ) ;
AO221X1_RVT ctmi_7888 ( .A1 ( phfnn_279 ) , 
    .A2 ( port2_i_port_fifo_mem[72] ) , .A3 ( phfnn_281 ) , 
    .A4 ( port2_i_port_fifo_mem[8] ) , .A5 ( ctmn_7113 ) , .Y ( ctmn_7114 ) ) ;
CGLNPRX2_HVT clock_gate_port0_i_port_fifo_fifo_count_reg_29 ( 
    .CLK ( clk_clock_gate_port0_i_port_fifo_fifo_count_reg ) , 
    .EN ( clkgt_enable_net_0 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_fifo_count_reg_clock_gate_port0_i_port_fifo_fifo_count_reg_29 ) ) ;
INVX0_LVT phfnr_buf_962 ( .A ( ctmn_6634 ) , .Y ( phfnn_281 ) ) ;
INVX0_LVT phfnr_buf_986 ( .A ( ctmn_6632 ) , .Y ( phfnn_305 ) ) ;
NAND2X0_RVT ctmi_8012 ( .A1 ( ctmn_6955 ) , .A2 ( ctmn_6953 ) , 
    .Y ( port1_i_port_fifo_N15 ) ) ;
INVX0_LVT HFSINV_572_1047 ( .A ( ctmn_6583 ) , .Y ( HFSNET_9 ) ) ;
OA221X1_RVT ctmi_7167 ( .A1 ( ctmn_6598 ) , 
    .A2 ( port0_i_port_fifo_mem[69] ) , .A3 ( port0_i_port_fifo_mem[101] ) , 
    .A4 ( ctmn_6597 ) , .A5 ( ctmn_6609_CDR1 ) , 
    .Y ( port0_i_port_fifo_N36 ) ) ;
NAND2X0_RVT ctmi_8010 ( .A1 ( ctmn_6580 ) , .A2 ( ctmn_6586 ) , 
    .Y ( port1_i_port_fifo_N19 ) ) ;
AO221X1_RVT ctmi_7891 ( .A1 ( phfnn_305 ) , 
    .A2 ( port2_i_port_fifo_mem[120] ) , .A3 ( phfnn_301 ) , 
    .A4 ( port2_i_port_fifo_mem[88] ) , .A5 ( ctmn_7112 ) , .Y ( ctmn_7113 ) ) ;
OA221X1_RVT ctmi_7147 ( .A1 ( port1_i_port_fifo_mem[37] ) , 
    .A2 ( ctmn_6581 ) , .A3 ( ctmn_6583 ) , 
    .A4 ( port1_i_port_fifo_mem[101] ) , .A5 ( ctmn_6594 ) , 
    .Y ( port1_i_port_fifo_N36 ) ) ;
OR2X2_RVT ctmi_7168 ( .A1 ( ctmn_6595 ) , .A2 ( ctmn_6596 ) , 
    .Y ( ctmn_6597 ) ) ;
AO21X1_RVT ctmi_8013 ( .A1 ( port2_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6631 ) , .A3 ( phfnn_280 ) , .Y ( port2_i_port_fifo_N18 ) ) ;
CGLNPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_1 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port0_i_port_fifo_N9 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) ) ;
INVX0_LVT phfnr_buf_969 ( .A ( ctmn_6584 ) , .Y ( phfnn_288 ) ) ;
NAND2X0_RVT ctmi_7170 ( .A1 ( port0_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_N20 ) , .Y ( ctmn_6596 ) ) ;
INVX0_RVT phfnr_buf_957 ( .A ( ctmn_6585 ) , .Y ( phfnn_276 ) ) ;
AO221X1_RVT ctmi_7848 ( .A1 ( phfnn_288 ) , 
    .A2 ( port1_i_port_fifo_mem[72] ) , .A3 ( phfnn_276 ) , 
    .A4 ( port1_i_port_fifo_mem[8] ) , .A5 ( ctmn_7081 ) , .Y ( ctmn_7082 ) ) ;
MUX41X1_RVT ctmi_8126 ( .A1 ( ctmn_6920 ) , .A3 ( phfnn_195 ) , 
    .A2 ( phfnn_195 ) , .A4 ( ctmn_6920 ) , 
    .S0 ( port1_i_port_fifo_fifo_count[1] ) , 
    .S1 ( port1_i_port_fifo_fifo_count[0] ) , .Y ( ctmn_7208 ) ) ;
INVX2_HVT phfnr_buf_979 ( .A ( ctmn_6587 ) , .Y ( phfnn_298 ) ) ;
INVX2_HVT phfnr_buf_981 ( .A ( ctmn_6589 ) , .Y ( phfnn_300 ) ) ;
AO21X1_RVT ctmi_8007 ( .A1 ( port0_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( ctmn_6902 ) , .A3 ( ctmn_6900 ) , .Y ( port0_i_port_fifo_N14 ) ) ;
AO21X1_RVT ctmi_8005 ( .A1 ( port0_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6604 ) , .A3 ( phfnn_274 ) , .Y ( port0_i_port_fifo_N18 ) ) ;
OR3X2_RVT ctmi_7171 ( .A1 ( port0_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6595 ) , 
    .Y ( ctmn_6598 ) ) ;
INVX0_HVT clock_gate_inv_639 ( 
    .A ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Y ( clock_gate_net_26 ) ) ;
NAND2X0_RVT ctmi_8006 ( .A1 ( ctmn_6599 ) , .A2 ( ctmn_6596 ) , 
    .Y ( port0_i_port_fifo_N19 ) ) ;
NAND2X0_RVT ctmi_8008 ( .A1 ( ctmn_6899 ) , .A2 ( ctmn_6898 ) , 
    .Y ( port0_i_port_fifo_N15 ) ) ;
INVX2_HVT phfnr_buf_973 ( .A ( ctmn_6600 ) , .Y ( phfnn_292 ) ) ;
AO21X1_RVT ctmi_8009 ( .A1 ( port1_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6588 ) , .A3 ( phfnn_289 ) , .Y ( port1_i_port_fifo_N18 ) ) ;
NAND2X0_RVT ctmi_8014 ( .A1 ( ctmn_6626 ) , .A2 ( ctmn_6628 ) , 
    .Y ( port2_i_port_fifo_N19 ) ) ;
OA221X1_RVT ctmi_7185 ( .A1 ( port3_i_port_fifo_mem[85] ) , 
    .A2 ( ctmn_6612 ) , .A3 ( ctmn_6614 ) , 
    .A4 ( port3_i_port_fifo_mem[101] ) , .A5 ( ctmn_6624_CDR1 ) , 
    .Y ( port3_i_port_fifo_N36 ) ) ;
AO21X1_RVT ctmi_8015 ( .A1 ( port2_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( ctmn_7018 ) , .A3 ( ctmn_7016 ) , .Y ( port2_i_port_fifo_N14 ) ) ;
OR2X2_RVT ctmi_7186 ( .A1 ( ctmn_6610 ) , .A2 ( ctmn_6611 ) , 
    .Y ( ctmn_6612 ) ) ;
NAND2X0_RVT ctmi_8016 ( .A1 ( ctmn_7015 ) , .A2 ( ctmn_7013 ) , 
    .Y ( port2_i_port_fifo_N15 ) ) ;
CGLNPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_2 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port0_i_port_fifo_N7 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) ) ;
AO21X1_RVT ctmi_8017 ( .A1 ( port3_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6616 ) , .A3 ( phfnn_285 ) , .Y ( port3_i_port_fifo_N18 ) ) ;
OA221X1_RVT ctmi_7172 ( .A1 ( port0_i_port_fifo_mem[21] ) , 
    .A2 ( ctmn_6600 ) , .A3 ( ctmn_6601 ) , .A4 ( port0_i_port_fifo_mem[5] ) , 
    .A5 ( ctmn_6608_CDR1 ) , .Y ( ctmn_6609_CDR1 ) ) ;
OR2X1_RVT ctmi_7188 ( .A1 ( port3_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_N20 ) , .Y ( ctmn_6611 ) ) ;
NAND2X0_RVT ctmi_8018 ( .A1 ( ctmn_6611 ) , .A2 ( ctmn_6613 ) , 
    .Y ( port3_i_port_fifo_N19 ) ) ;
AO21X1_RVT ctmi_8019 ( .A1 ( port3_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( ctmn_7034 ) , .A3 ( ctmn_7032 ) , .Y ( port3_i_port_fifo_N14 ) ) ;
OR2X2_RVT ctmi_7189 ( .A1 ( ctmn_6610 ) , .A2 ( ctmn_6613 ) , 
    .Y ( ctmn_6614 ) ) ;
NAND2X0_RVT ctmi_8020 ( .A1 ( ctmn_7031 ) , .A2 ( ctmn_7029 ) , 
    .Y ( port3_i_port_fifo_N15 ) ) ;
NAND2X0_RVT ctmi_7190 ( .A1 ( port3_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_N20 ) , .Y ( ctmn_6613 ) ) ;
AO221X1_RVT ctmi_7851 ( .A1 ( phfnn_298 ) , 
    .A2 ( port1_i_port_fifo_mem[88] ) , .A3 ( phfnn_300 ) , 
    .A4 ( port1_i_port_fifo_mem[120] ) , .A5 ( ctmn_7080 ) , 
    .Y ( ctmn_7081 ) ) ;
INVX2_HVT phfnr_buf_953 ( .A ( ctmn_6598 ) , .Y ( phfnn_272 ) ) ;
CGLNPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port1_i_port_fifo_N11 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) ) ;
INVX0_LVT phfnr_buf_971 ( .A ( ctmn_6597 ) , .Y ( phfnn_290 ) ) ;
AO22X1_RVT ctmi_7854 ( .A1 ( phfnn_289 ) , .A2 ( port1_i_port_fifo_mem[56] ) , 
    .A3 ( phfnn_299 ) , .A4 ( port1_i_port_fifo_mem[24] ) , .Y ( ctmn_7080 ) ) ;
CGLNPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port2_i_port_fifo_N11 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) ) ;
OA221X1_RVT ctmi_7191 ( .A1 ( port3_i_port_fifo_mem[21] ) , 
    .A2 ( ctmn_6615 ) , .A3 ( ctmn_6617 ) , 
    .A4 ( port3_i_port_fifo_mem[117] ) , .A5 ( ctmn_6623 ) , 
    .Y ( ctmn_6624_CDR1 ) ) ;
AO221X1_RVT ctmi_7965 ( .A1 ( phfnn_272 ) , 
    .A2 ( port0_i_port_fifo_mem[72] ) , .A3 ( phfnn_292 ) , 
    .A4 ( port0_i_port_fifo_mem[24] ) , .A5 ( ctmn_7178_CDR1 ) , 
    .Y ( port0_i_port_fifo_N33 ) ) ;
INVX0_HVT clock_gate_inv_640 ( 
    .A ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Y ( clock_gate_net_27 ) ) ;
INVX0_HVT clock_gate_inv_654 ( 
    .A ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Y ( clock_gate_net_41 ) ) ;
INVX0_LVT phfnr_buf_972 ( .A ( ctmn_6603 ) , .Y ( phfnn_291 ) ) ;
OA221X1_RVT ctmi_7202 ( .A1 ( ctmn_6629 ) , 
    .A2 ( port2_i_port_fifo_mem[101] ) , .A3 ( port2_i_port_fifo_mem[85] ) , 
    .A4 ( ctmn_6627 ) , .A5 ( ctmn_6639_CDR1 ) , 
    .Y ( port2_i_port_fifo_N36 ) ) ;
INVX2_HVT phfnr_buf_954 ( .A ( ctmn_6601 ) , .Y ( phfnn_273 ) ) ;
OR2X2_RVT ctmi_7203 ( .A1 ( ctmn_6625 ) , .A2 ( ctmn_6626 ) , 
    .Y ( ctmn_6627 ) ) ;
CGLNPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_15 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port2_i_port_fifo_N9 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) ) ;
AO221X1_RVT ctmi_7968 ( .A1 ( phfnn_290 ) , 
    .A2 ( port0_i_port_fifo_mem[104] ) , .A3 ( phfnn_291 ) , 
    .A4 ( port0_i_port_fifo_mem[40] ) , .A5 ( ctmn_7177_CDR1 ) , 
    .Y ( ctmn_7178_CDR1 ) ) ;
CGLNPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_3 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port0_i_port_fifo_N6 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) ) ;
INVX2_RVT phfnr_buf_970 ( .A ( ctmn_6590 ) , .Y ( phfnn_289 ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_15_ ( 
    .D ( port3_i_port_fifo_N26 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[15] ) ) ;
OR2X2_RVT ctmi_7173 ( .A1 ( port0_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6599 ) , .Y ( ctmn_6600 ) ) ;
OR2X1_RVT ctmi_7205 ( .A1 ( port2_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_N20 ) , .Y ( ctmn_6626 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel0_reg_1_ ( .D ( top_arb_i_N27 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel0[1] ) , 
    .QN ( ctmn_6801 ) ) ;
CGLNPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_27 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port3_i_port_fifo_N3 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) ) ;
SDFFARX1_HVT top_arb_i_active2_reg ( .D ( top_arb_i_N25 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( active2 ) ) ;
SDFFARX1_HVT top_arb_i_active3_reg ( .D ( top_arb_i_N26 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( active3 ) ) ;
INVX0_HVT clock_gate_inv_655 ( 
    .A ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Y ( clock_gate_net_42 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel0_reg_0_ ( .D ( top_arb_i_N28 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel0[0] ) , 
    .QN ( ctmn_6802 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel1_reg_1_ ( .D ( top_arb_i_N29 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel1[1] ) , 
    .QN ( ctmn_6936 ) ) ;
SDFFARX1_HVT top_arb_i_active1_reg ( .D ( top_arb_i_N24 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( active1 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel2_reg_1_ ( .D ( top_arb_i_N31 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel2[1] ) , 
    .QN ( ctmn_6967 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel2_reg_0_ ( .D ( top_arb_i_N32 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel2[0] ) , 
    .QN ( ctmn_6966 ) ) ;
SDFFARX1_HVT port0_i_current_state_reg_1_ ( .D ( port0_i_next_state[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_current_state[1] ) , .QN ( ctmn_6748 ) ) ;
INVX0_RVT phfnr_buf_980 ( .A ( ctmn_6591 ) , .Y ( phfnn_299 ) ) ;
AO221X1_RVT ctmi_7971 ( .A1 ( phfnn_273 ) , .A2 ( port0_i_port_fifo_mem[8] ) , 
    .A3 ( phfnn_274 ) , .A4 ( port0_i_port_fifo_mem[56] ) , 
    .A5 ( ctmn_7176 ) , .Y ( ctmn_7177_CDR1 ) ) ;
OR2X2_RVT ctmi_7206 ( .A1 ( ctmn_6625 ) , .A2 ( ctmn_6628 ) , 
    .Y ( ctmn_6629 ) ) ;
SDFFARX1_HVT top_arb_i_common_ptr_reg_0_ ( .D ( top_arb_i_N22 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( top_arb_i_common_ptr[0] ) , .QN ( top_arb_i_N22 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel1_reg_0_ ( .D ( top_arb_i_N30 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel1[0] ) , 
    .QN ( ctmn_6937 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_wr_ptr_reg_1_ ( .D ( port0_i_port_fifo_N15 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_15 ) , 
    .RSTB ( rst_n ) , .Q ( port0_i_port_fifo_wr_ptr[1] ) , .QN ( ctmn_6895 ) ) ;
SDFFARX1_HVT port0_i_current_state_reg_0_ ( .D ( port0_i_next_state[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_current_state[0] ) ) ;
NAND2X0_RVT ctmi_7207 ( .A1 ( port2_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_N20 ) , .Y ( ctmn_6628 ) ) ;
INVX0_LVT phfnr_buf_990 ( .A ( ctmn_6614 ) , .Y ( phfnn_309 ) ) ;
OA221X1_RVT ctmi_7208 ( .A1 ( ctmn_6632 ) , 
    .A2 ( port2_i_port_fifo_mem[117] ) , .A3 ( port2_i_port_fifo_mem[69] ) , 
    .A4 ( ctmn_6630 ) , .A5 ( ctmn_6638_CDR1 ) , .Y ( ctmn_6639_CDR1 ) ) ;
INVX0_LVT phfnr_buf_991 ( .A ( ctmn_6618 ) , .Y ( phfnn_310 ) ) ;
AOI222X1_RVT ctmi_7834 ( .A1 ( ctmn_7065 ) , .A2 ( ctmn_6647 ) , 
    .A3 ( ctmn_7065 ) , .A4 ( ctmn_6924 ) , .A5 ( ctmn_7065 ) , 
    .A6 ( ctmn_6646 ) , .Y ( port3_i_port_fifo_N22 ) ) ;
AO221X1_RVT ctmi_7835 ( .A1 ( ctmn_6647 ) , .A2 ( phfnn_287 ) , 
    .A3 ( port3_i_port_fifo_fifo_count[3] ) , .A4 ( ctmn_7064 ) , 
    .A5 ( phfnn_197 ) , .Y ( ctmn_7065 ) ) ;
MUX41X1_RVT ctmi_8131 ( .A1 ( ctmn_6924 ) , .A3 ( phfnn_197 ) , 
    .A2 ( phfnn_197 ) , .A4 ( ctmn_6924 ) , 
    .S0 ( port3_i_port_fifo_fifo_count[1] ) , .S1 ( HFSNET_4 ) , 
    .Y ( ctmn_7211 ) ) ;
INVX2_HVT phfnr_buf_965 ( .A ( ctmn_6619 ) , .Y ( phfnn_284 ) ) ;
AO221X1_RVT ctmi_7857 ( .A1 ( HFSNET_8 ) , .A2 ( port1_i_port_fifo_mem[41] ) , 
    .A3 ( HFSNET_9 ) , .A4 ( port1_i_port_fifo_mem[105] ) , 
    .A5 ( ctmn_7085 ) , .Y ( port1_i_port_fifo_N32 ) ) ;
AO221X1_RVT ctmi_7858 ( .A1 ( phfnn_288 ) , 
    .A2 ( port1_i_port_fifo_mem[73] ) , .A3 ( phfnn_276 ) , 
    .A4 ( port1_i_port_fifo_mem[9] ) , .A5 ( ctmn_7084 ) , .Y ( ctmn_7085 ) ) ;
AO221X1_RVT ctmi_7925 ( .A1 ( phfnn_309 ) , 
    .A2 ( port3_i_port_fifo_mem[104] ) , .A3 ( phfnn_310 ) , 
    .A4 ( port3_i_port_fifo_mem[40] ) , .A5 ( ctmn_7146 ) , 
    .Y ( port3_i_port_fifo_N33 ) ) ;
INVX2_HVT phfnr_buf_967 ( .A ( ctmn_6621 ) , .Y ( phfnn_286 ) ) ;
NAND2X0_RVT ctmi_7218 ( .A1 ( ctmn_6663 ) , .A2 ( phfnn_329 ) , 
    .Y ( top_arb_i_N30 ) ) ;
CGLNPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_16 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port2_i_port_fifo_N7 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) ) ;
INVX1_HVT phfnr_buf_1000 ( .A ( ctmn_6643 ) , .Y ( phfnn_319 ) ) ;
NAND3X0_RVT ctmi_7219 ( .A1 ( phfnn_319 ) , .A2 ( ctmn_6656 ) , 
    .A3 ( ctmn_6662 ) , .Y ( ctmn_6663 ) ) ;
INVX0_HVT clock_gate_inv_656 ( 
    .A ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Y ( clock_gate_net_43 ) ) ;
AO221X1_RVT ctmi_7928 ( .A1 ( phfnn_284 ) , 
    .A2 ( port3_i_port_fifo_mem[72] ) , .A3 ( phfnn_286 ) , 
    .A4 ( port3_i_port_fifo_mem[8] ) , .A5 ( ctmn_7145 ) , .Y ( ctmn_7146 ) ) ;
NAND2X0_RVT ctmi_7220 ( .A1 ( port1_i_port_fifo_N36 ) , .A2 ( ctmn_6642 ) , 
    .Y ( ctmn_6643 ) ) ;
CGLNPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_17 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port2_i_port_fifo_N6 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) ) ;
INVX2_HVT phfnr_buf_989 ( .A ( ctmn_6615 ) , .Y ( phfnn_308 ) ) ;
NAND2X1_RVT ctmi_7221 ( .A1 ( ctmn_6640 ) , .A2 ( ctmn_6641 ) , 
    .Y ( ctmn_6642 ) ) ;
INVX0_HVT clock_gate_inv_657 ( 
    .A ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Y ( clock_gate_net_44 ) ) ;
NOR3X1_RVT ctmi_7222 ( .A1 ( port1_i_port_fifo_fifo_count[1] ) , 
    .A2 ( HFSNET_3 ) , .A3 ( port1_i_port_fifo_fifo_count[2] ) , 
    .Y ( ctmn_6640 ) ) ;
INVX0_HVT phfnr_buf_951 ( .A ( ctmn_6654 ) , .Y ( phfnn_270 ) ) ;
INVX0_HVT clock_gate_inv_641 ( 
    .A ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Y ( clock_gate_net_28 ) ) ;
AO221X1_RVT ctmi_7931 ( .A1 ( phfnn_308 ) , 
    .A2 ( port3_i_port_fifo_mem[24] ) , .A3 ( phfnn_285 ) , 
    .A4 ( port3_i_port_fifo_mem[56] ) , .A5 ( ctmn_7144 ) , .Y ( ctmn_7145 ) ) ;
INVX0_HVT phfnr_buf_952 ( .A ( ctmn_7019 ) , .Y ( phfnn_271 ) ) ;
INVX2_RVT phfnr_buf_955 ( .A ( ctmn_6606 ) , .Y ( phfnn_274 ) ) ;
OA22X1_RVT ctmi_7225 ( .A1 ( HFSNET_7 ) , .A2 ( ctmn_6649 ) , 
    .A3 ( phfnn_316 ) , .A4 ( phfnn_270 ) , .Y ( ctmn_6656 ) ) ;
AO221X1_RVT ctmi_7859 ( .A1 ( phfnn_298 ) , 
    .A2 ( port1_i_port_fifo_mem[89] ) , .A3 ( phfnn_300 ) , 
    .A4 ( port1_i_port_fifo_mem[121] ) , .A5 ( ctmn_7083 ) , 
    .Y ( ctmn_7084 ) ) ;
AO22X1_RVT ctmi_7860 ( .A1 ( phfnn_289 ) , .A2 ( port1_i_port_fifo_mem[57] ) , 
    .A3 ( phfnn_299 ) , .A4 ( port1_i_port_fifo_mem[25] ) , .Y ( ctmn_7083 ) ) ;
AO221X1_RVT ctmi_7861 ( .A1 ( HFSNET_8 ) , .A2 ( port1_i_port_fifo_mem[42] ) , 
    .A3 ( HFSNET_9 ) , .A4 ( port1_i_port_fifo_mem[106] ) , 
    .A5 ( ctmn_7088 ) , .Y ( port1_i_port_fifo_N31 ) ) ;
AO221X1_RVT ctmi_7862 ( .A1 ( phfnn_276 ) , 
    .A2 ( port1_i_port_fifo_mem[10] ) , .A3 ( phfnn_288 ) , 
    .A4 ( port1_i_port_fifo_mem[74] ) , .A5 ( ctmn_7087 ) , .Y ( ctmn_7088 ) ) ;
AOI222X1_RVT ctmi_7823 ( .A1 ( ctmn_7056 ) , .A2 ( ctmn_6658 ) , 
    .A3 ( ctmn_7056 ) , .A4 ( ctmn_6922 ) , .A5 ( ctmn_7056 ) , 
    .A6 ( ctmn_6657 ) , .Y ( port2_i_port_fifo_N22 ) ) ;
OAI221X1_RVT ctmi_7395 ( .A1 ( phfnn_315 ) , .A2 ( phfnn_333 ) , 
    .A3 ( ctmn_6701 ) , .A4 ( phfnn_330 ) , .A5 ( ctmn_6793 ) , 
    .Y ( top_arb_i_N25 ) ) ;
AO221X1_RVT ctmi_7863 ( .A1 ( phfnn_300 ) , 
    .A2 ( port1_i_port_fifo_mem[122] ) , .A3 ( phfnn_298 ) , 
    .A4 ( port1_i_port_fifo_mem[90] ) , .A5 ( ctmn_7086 ) , .Y ( ctmn_7087 ) ) ;
AO22X1_RVT ctmi_7864 ( .A1 ( phfnn_289 ) , .A2 ( port1_i_port_fifo_mem[58] ) , 
    .A3 ( phfnn_299 ) , .A4 ( port1_i_port_fifo_mem[26] ) , .Y ( ctmn_7086 ) ) ;
AO221X1_RVT ctmi_7865 ( .A1 ( HFSNET_8 ) , .A2 ( port1_i_port_fifo_mem[43] ) , 
    .A3 ( HFSNET_9 ) , .A4 ( port1_i_port_fifo_mem[107] ) , 
    .A5 ( ctmn_7091 ) , .Y ( port1_i_port_fifo_N30 ) ) ;
AO221X1_RVT ctmi_7866 ( .A1 ( phfnn_288 ) , 
    .A2 ( port1_i_port_fifo_mem[75] ) , .A3 ( phfnn_276 ) , 
    .A4 ( port1_i_port_fifo_mem[11] ) , .A5 ( ctmn_7090 ) , .Y ( ctmn_7091 ) ) ;
NAND2X0_RVT ctmi_7247 ( .A1 ( phfnn_329 ) , .A2 ( ctmn_6669 ) , 
    .Y ( top_arb_i_N29 ) ) ;
NAND3X0_RVT ctmi_7248 ( .A1 ( port2_i_port_fifo_N36 ) , .A2 ( ctmn_6659 ) , 
    .A3 ( ctmn_6668 ) , .Y ( ctmn_6669 ) ) ;
AO221X1_RVT ctmi_7867 ( .A1 ( phfnn_298 ) , 
    .A2 ( port1_i_port_fifo_mem[91] ) , .A3 ( phfnn_300 ) , 
    .A4 ( port1_i_port_fifo_mem[123] ) , .A5 ( ctmn_7089 ) , 
    .Y ( ctmn_7090 ) ) ;
INVX0_HVT phfnr_buf_956 ( .A ( ctmn_7036 ) , .Y ( phfnn_275 ) ) ;
INVX0_HVT phfnr_buf_958 ( .A ( ctmn_7045 ) , .Y ( phfnn_277 ) ) ;
OA22X1_RVT ctmi_7396 ( .A1 ( ctmn_6694 ) , .A2 ( ctmn_6790 ) , 
    .A3 ( ctmn_6699 ) , .A4 ( phfnn_331 ) , .Y ( ctmn_6793 ) ) ;
OA221X1_RVT ctmi_7250 ( .A1 ( port1_i_port_fifo_mem[102] ) , 
    .A2 ( ctmn_6583 ) , .A3 ( ctmn_6591 ) , 
    .A4 ( port1_i_port_fifo_mem[22] ) , .A5 ( ctmn_6672 ) , 
    .Y ( port1_i_port_fifo_N35 ) ) ;
OA221X1_RVT ctmi_7251 ( .A1 ( port1_i_port_fifo_mem[70] ) , 
    .A2 ( ctmn_6584 ) , .A3 ( ctmn_6585 ) , .A4 ( port1_i_port_fifo_mem[6] ) , 
    .A5 ( ctmn_6671 ) , .Y ( ctmn_6672 ) ) ;
OA221X1_RVT ctmi_7254 ( .A1 ( ctmn_6598 ) , 
    .A2 ( port0_i_port_fifo_mem[70] ) , .A3 ( port0_i_port_fifo_mem[22] ) , 
    .A4 ( ctmn_6600 ) , .A5 ( ctmn_6675_CDR1 ) , 
    .Y ( port0_i_port_fifo_N35 ) ) ;
OA221X1_RVT ctmi_7255 ( .A1 ( ctmn_6605 ) , 
    .A2 ( port0_i_port_fifo_mem[118] ) , .A3 ( port0_i_port_fifo_mem[102] ) , 
    .A4 ( ctmn_6597 ) , .A5 ( ctmn_6674_CDR1 ) , .Y ( ctmn_6675_CDR1 ) ) ;
OA221X1_RVT ctmi_7256 ( .A1 ( port0_i_port_fifo_mem[6] ) , .A2 ( ctmn_6601 ) , 
    .A3 ( ctmn_6603 ) , .A4 ( port0_i_port_fifo_mem[38] ) , 
    .A5 ( ctmn_6673_CDR1 ) , .Y ( ctmn_6674_CDR1 ) ) ;
OA22X1_RVT ctmi_7257 ( .A1 ( port0_i_port_fifo_mem[86] ) , .A2 ( ctmn_6602 ) , 
    .A3 ( ctmn_6606 ) , .A4 ( port0_i_port_fifo_mem[54] ) , 
    .Y ( ctmn_6673_CDR1 ) ) ;
OA221X1_RVT ctmi_7258 ( .A1 ( ctmn_6629 ) , 
    .A2 ( port2_i_port_fifo_mem[102] ) , .A3 ( port2_i_port_fifo_mem[6] ) , 
    .A4 ( ctmn_6634 ) , .A5 ( ctmn_6678 ) , .Y ( port2_i_port_fifo_N35 ) ) ;
OA221X1_RVT ctmi_7259 ( .A1 ( port2_i_port_fifo_mem[22] ) , 
    .A2 ( ctmn_6635 ) , .A3 ( port2_i_port_fifo_mem[86] ) , 
    .A4 ( ctmn_6627 ) , .A5 ( ctmn_6677_CDR1 ) , .Y ( ctmn_6678 ) ) ;
OA221X1_RVT ctmi_7260 ( .A1 ( ctmn_6632 ) , 
    .A2 ( port2_i_port_fifo_mem[118] ) , .A3 ( port2_i_port_fifo_mem[54] ) , 
    .A4 ( ctmn_6633 ) , .A5 ( ctmn_6676_CDR1 ) , .Y ( ctmn_6677_CDR1 ) ) ;
OA22X1_RVT ctmi_7261 ( .A1 ( ctmn_6630 ) , .A2 ( port2_i_port_fifo_mem[70] ) , 
    .A3 ( ctmn_6636 ) , .A4 ( port2_i_port_fifo_mem[38] ) , 
    .Y ( ctmn_6676_CDR1 ) ) ;
AO22X1_RVT ctmi_7868 ( .A1 ( phfnn_299 ) , .A2 ( port1_i_port_fifo_mem[27] ) , 
    .A3 ( phfnn_289 ) , .A4 ( port1_i_port_fifo_mem[59] ) , .Y ( ctmn_7089 ) ) ;
AO221X1_RVT ctmi_7869 ( .A1 ( HFSNET_9 ) , 
    .A2 ( port1_i_port_fifo_mem[108] ) , .A3 ( HFSNET_8 ) , 
    .A4 ( port1_i_port_fifo_mem[44] ) , .A5 ( ctmn_7094 ) , 
    .Y ( port1_i_port_fifo_N29 ) ) ;
OA221X1_RVT ctmi_7262 ( .A1 ( ctmn_6619 ) , 
    .A2 ( port3_i_port_fifo_mem[70] ) , .A3 ( port3_i_port_fifo_mem[102] ) , 
    .A4 ( ctmn_6614 ) , .A5 ( ctmn_6681 ) , .Y ( port3_i_port_fifo_N35 ) ) ;
OA221X1_RVT ctmi_7263 ( .A1 ( port3_i_port_fifo_mem[22] ) , 
    .A2 ( ctmn_6615 ) , .A3 ( ctmn_6612 ) , 
    .A4 ( port3_i_port_fifo_mem[86] ) , .A5 ( ctmn_6680_CDR1 ) , 
    .Y ( ctmn_6681 ) ) ;
OA221X1_RVT ctmi_7264 ( .A1 ( port3_i_port_fifo_mem[118] ) , 
    .A2 ( ctmn_6617 ) , .A3 ( ctmn_6618 ) , 
    .A4 ( port3_i_port_fifo_mem[38] ) , .A5 ( ctmn_6679 ) , 
    .Y ( ctmn_6680_CDR1 ) ) ;
OA22X1_RVT ctmi_7265 ( .A1 ( port3_i_port_fifo_mem[54] ) , .A2 ( ctmn_6620 ) , 
    .A3 ( ctmn_6621 ) , .A4 ( port3_i_port_fifo_mem[6] ) , .Y ( ctmn_6679 ) ) ;
NAND2X0_RVT ctmi_7266 ( .A1 ( ctmn_6694 ) , .A2 ( ctmn_6699 ) , 
    .Y ( top_arb_i_N32 ) ) ;
NAND2X0_RVT ctmi_7267 ( .A1 ( phfnn_182 ) , .A2 ( ctmn_6693 ) , 
    .Y ( ctmn_6694 ) ) ;
INVX0_HVT phfnr_buf_959 ( .A ( ctmn_6851 ) , .Y ( phfnn_278 ) ) ;
INVX0_RVT phfnr_buf_995 ( .A ( ctmn_6690 ) , .Y ( phfnn_314 ) ) ;
AO221X1_RVT ctmi_7870 ( .A1 ( phfnn_288 ) , 
    .A2 ( port1_i_port_fifo_mem[76] ) , .A3 ( phfnn_276 ) , 
    .A4 ( port1_i_port_fifo_mem[12] ) , .A5 ( ctmn_7093 ) , .Y ( ctmn_7094 ) ) ;
AO221X1_RVT ctmi_7871 ( .A1 ( phfnn_298 ) , 
    .A2 ( port1_i_port_fifo_mem[92] ) , .A3 ( phfnn_300 ) , 
    .A4 ( port1_i_port_fifo_mem[124] ) , .A5 ( ctmn_7092 ) , 
    .Y ( ctmn_7093 ) ) ;
AND2X1_RVT ctmi_7270 ( .A1 ( ctmn_6687 ) , .A2 ( ctmn_6692 ) , 
    .Y ( ctmn_6693 ) ) ;
NAND2X0_RVT ctmi_7271 ( .A1 ( ctmn_6685 ) , .A2 ( ctmn_6686 ) , 
    .Y ( ctmn_6687 ) ) ;
AO21X1_RVT ctmi_7272 ( .A1 ( port0_i_port_fifo_N35 ) , .A2 ( ctmn_6684 ) , 
    .A3 ( HFSNET_6 ) , .Y ( ctmn_6685 ) ) ;
AND2X1_RVT ctmi_7273 ( .A1 ( HFSNET_5 ) , .A2 ( ctmn_6652 ) , 
    .Y ( ctmn_6684 ) ) ;
AO21X1_RVT ctmi_7274 ( .A1 ( port2_i_port_fifo_N35 ) , .A2 ( ctmn_6660 ) , 
    .A3 ( ctmn_6645 ) , .Y ( ctmn_6686 ) ) ;
OAI21X1_RVT ctmi_7275 ( .A1 ( ctmn_6689 ) , .A2 ( phfnn_314 ) , 
    .A3 ( ctmn_6685 ) , .Y ( ctmn_6692 ) ) ;
INVX2_RVT phfnr_buf_961 ( .A ( ctmn_6633 ) , .Y ( phfnn_280 ) ) ;
INVX1_HVT phfnr_buf_1006 ( .A ( ctmn_6695 ) , .Y ( phfnn_325 ) ) ;
AO22X1_RVT ctmi_7872 ( .A1 ( phfnn_299 ) , .A2 ( port1_i_port_fifo_mem[28] ) , 
    .A3 ( phfnn_289 ) , .A4 ( port1_i_port_fifo_mem[60] ) , .Y ( ctmn_7092 ) ) ;
AO221X1_RVT ctmi_7873 ( .A1 ( HFSNET_9 ) , 
    .A2 ( port1_i_port_fifo_mem[109] ) , .A3 ( HFSNET_8 ) , 
    .A4 ( port1_i_port_fifo_mem[45] ) , .A5 ( ctmn_7097_CDR1 ) , 
    .Y ( port1_i_port_fifo_N28 ) ) ;
AO221X1_RVT ctmi_7874 ( .A1 ( phfnn_276 ) , 
    .A2 ( port1_i_port_fifo_mem[13] ) , .A3 ( phfnn_288 ) , 
    .A4 ( port1_i_port_fifo_mem[77] ) , .A5 ( ctmn_7096_CDR1 ) , 
    .Y ( ctmn_7097_CDR1 ) ) ;
NAND2X0_RVT ctmi_7278 ( .A1 ( port3_i_port_fifo_N35 ) , .A2 ( ctmn_6648 ) , 
    .Y ( ctmn_6690 ) ) ;
INVX0_HVT phfnr_buf_963 ( .A ( ctmn_7055 ) , .Y ( phfnn_282 ) ) ;
NAND2X0_RVT ctmi_7280 ( .A1 ( phfnn_314 ) , .A2 ( ctmn_6698 ) , 
    .Y ( ctmn_6699 ) ) ;
AND2X1_RVT ctmi_7281 ( .A1 ( ctmn_6687 ) , .A2 ( ctmn_6697 ) , 
    .Y ( ctmn_6698 ) ) ;
INVX1_HVT phfnr_buf_1001 ( .A ( ctmn_6714 ) , .Y ( phfnn_320 ) ) ;
NAND2X0_RVT ctmi_7283 ( .A1 ( port2_i_port_fifo_N35 ) , .A2 ( ctmn_6659 ) , 
    .Y ( ctmn_6695 ) ) ;
INVX0_HVT phfnr_buf_964 ( .A ( ctmn_7021 ) , .Y ( phfnn_283 ) ) ;
NAND2X0_RVT ctmi_7285 ( .A1 ( ctmn_6699 ) , .A2 ( ctmn_6701 ) , 
    .Y ( top_arb_i_N31 ) ) ;
AO221X1_RVT ctmi_7875 ( .A1 ( phfnn_298 ) , 
    .A2 ( port1_i_port_fifo_mem[93] ) , .A3 ( phfnn_300 ) , 
    .A4 ( port1_i_port_fifo_mem[125] ) , .A5 ( ctmn_7095_CDR1 ) , 
    .Y ( ctmn_7096_CDR1 ) ) ;
AO22X1_RVT ctmi_7838 ( .A1 ( ctmn_7068 ) , .A2 ( ctmn_6918 ) , 
    .A3 ( ctmn_7070 ) , .A4 ( phfnn_335 ) , .Y ( port3_i_port_fifo_N23 ) ) ;
AOI222X1_RVT ctmi_7839 ( .A1 ( ctmn_6799 ) , .A2 ( ctmn_7066 ) , 
    .A3 ( ctmn_6799 ) , .A4 ( ctmn_7067 ) , .A5 ( ctmn_6799 ) , 
    .A6 ( port3_valid_in ) , .Y ( ctmn_7068 ) ) ;
CGLNPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_4 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port0_i_port_fifo_N5 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) ) ;
AO221X1_RVT ctmi_7824 ( .A1 ( ctmn_6658 ) , .A2 ( phfnn_282 ) , 
    .A3 ( port2_i_port_fifo_fifo_count[3] ) , .A4 ( ctmn_7055 ) , 
    .A5 ( phfnn_196 ) , .Y ( ctmn_7056 ) ) ;
OAI221X1_RVT ctmi_7397 ( .A1 ( phfnn_317 ) , .A2 ( phfnn_333 ) , 
    .A3 ( ctmn_6732 ) , .A4 ( phfnn_330 ) , .A5 ( ctmn_6794 ) , 
    .Y ( top_arb_i_N26 ) ) ;
AO22X1_RVT ctmi_7876 ( .A1 ( phfnn_299 ) , .A2 ( port1_i_port_fifo_mem[29] ) , 
    .A3 ( phfnn_289 ) , .A4 ( port1_i_port_fifo_mem[61] ) , 
    .Y ( ctmn_7095_CDR1 ) ) ;
AO221X1_RVT ctmi_7877 ( .A1 ( HFSNET_8 ) , .A2 ( port1_i_port_fifo_mem[46] ) , 
    .A3 ( HFSNET_9 ) , .A4 ( port1_i_port_fifo_mem[110] ) , 
    .A5 ( ctmn_7100_CDR1 ) , .Y ( port1_i_port_fifo_N27 ) ) ;
AO221X1_RVT ctmi_7878 ( .A1 ( phfnn_288 ) , 
    .A2 ( port1_i_port_fifo_mem[78] ) , .A3 ( phfnn_276 ) , 
    .A4 ( port1_i_port_fifo_mem[14] ) , .A5 ( ctmn_7099_CDR1 ) , 
    .Y ( ctmn_7100_CDR1 ) ) ;
AO221X1_RVT ctmi_7879 ( .A1 ( phfnn_298 ) , 
    .A2 ( port1_i_port_fifo_mem[94] ) , .A3 ( phfnn_300 ) , 
    .A4 ( port1_i_port_fifo_mem[126] ) , .A5 ( ctmn_7098_CDR1 ) , 
    .Y ( ctmn_7099_CDR1 ) ) ;
OA22X1_RVT ctmi_7398 ( .A1 ( ctmn_6725 ) , .A2 ( ctmn_6790 ) , 
    .A3 ( ctmn_6730 ) , .A4 ( phfnn_331 ) , .Y ( ctmn_6794 ) ) ;
NAND2X0_RVT ctmi_7286 ( .A1 ( phfnn_325 ) , .A2 ( ctmn_6700 ) , 
    .Y ( ctmn_6701 ) ) ;
AO22X1_RVT ctmi_7287 ( .A1 ( ctmn_6692 ) , .A2 ( phfnn_322 ) , 
    .A3 ( HFSNET_5 ) , .A4 ( HFSNET_6 ) , .Y ( ctmn_6700 ) ) ;
NOR2X0_RVT ctmi_7841 ( .A1 ( port3_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port3_i_port_fifo_fifo_count[0] ) , .Y ( ctmn_7067 ) ) ;
NBUFFX2_RVT HFSBUF_39_1051 ( .A ( fifo_data_out2[13] ) , .Y ( HFSNET_10 ) ) ;
INVX2_RVT phfnr_buf_966 ( .A ( ctmn_6620 ) , .Y ( phfnn_285 ) ) ;
OA221X1_RVT ctmi_7288 ( .A1 ( port1_i_port_fifo_mem[103] ) , 
    .A2 ( ctmn_6583 ) , .A3 ( ctmn_6589 ) , 
    .A4 ( port1_i_port_fifo_mem[119] ) , .A5 ( ctmn_6704 ) , 
    .Y ( port1_i_port_fifo_N34 ) ) ;
OA221X1_RVT ctmi_7289 ( .A1 ( ctmn_6581 ) , 
    .A2 ( port1_i_port_fifo_mem[39] ) , .A3 ( port1_i_port_fifo_mem[7] ) , 
    .A4 ( ctmn_6585 ) , .A5 ( ctmn_6703_CDR1 ) , .Y ( ctmn_6704 ) ) ;
OA221X1_RVT ctmi_7292 ( .A1 ( port0_i_port_fifo_mem[23] ) , 
    .A2 ( ctmn_6600 ) , .A3 ( port0_i_port_fifo_mem[71] ) , 
    .A4 ( ctmn_6598 ) , .A5 ( ctmn_6707_CDR1 ) , 
    .Y ( port0_i_port_fifo_N34 ) ) ;
OA221X1_RVT ctmi_7293 ( .A1 ( ctmn_6603 ) , 
    .A2 ( port0_i_port_fifo_mem[39] ) , .A3 ( ctmn_6606 ) , 
    .A4 ( port0_i_port_fifo_mem[55] ) , .A5 ( ctmn_6706_CDR1 ) , 
    .Y ( ctmn_6707_CDR1 ) ) ;
OA221X1_RVT ctmi_7294 ( .A1 ( port0_i_port_fifo_mem[7] ) , .A2 ( ctmn_6601 ) , 
    .A3 ( ctmn_6602 ) , .A4 ( port0_i_port_fifo_mem[87] ) , 
    .A5 ( ctmn_6705 ) , .Y ( ctmn_6706_CDR1 ) ) ;
OA22X1_RVT ctmi_7295 ( .A1 ( port0_i_port_fifo_mem[103] ) , 
    .A2 ( ctmn_6597 ) , .A3 ( ctmn_6605 ) , 
    .A4 ( port0_i_port_fifo_mem[119] ) , .Y ( ctmn_6705 ) ) ;
OA221X1_RVT ctmi_7296 ( .A1 ( ctmn_6634 ) , .A2 ( port2_i_port_fifo_mem[7] ) , 
    .A3 ( port2_i_port_fifo_mem[103] ) , .A4 ( ctmn_6629 ) , 
    .A5 ( ctmn_6710_CDR1 ) , .Y ( port2_i_port_fifo_N34 ) ) ;
OA221X1_RVT ctmi_7297 ( .A1 ( ctmn_6633 ) , 
    .A2 ( port2_i_port_fifo_mem[55] ) , .A3 ( port2_i_port_fifo_mem[23] ) , 
    .A4 ( ctmn_6635 ) , .A5 ( ctmn_6709_CDR1 ) , .Y ( ctmn_6710_CDR1 ) ) ;
OA221X1_RVT ctmi_7298 ( .A1 ( ctmn_6627 ) , 
    .A2 ( port2_i_port_fifo_mem[87] ) , .A3 ( port2_i_port_fifo_mem[119] ) , 
    .A4 ( ctmn_6632 ) , .A5 ( ctmn_6708_CDR1 ) , .Y ( ctmn_6709_CDR1 ) ) ;
OA22X1_RVT ctmi_7299 ( .A1 ( ctmn_6636 ) , .A2 ( port2_i_port_fifo_mem[39] ) , 
    .A3 ( port2_i_port_fifo_mem[71] ) , .A4 ( ctmn_6630 ) , 
    .Y ( ctmn_6708_CDR1 ) ) ;
AO22X1_RVT ctmi_7880 ( .A1 ( phfnn_299 ) , .A2 ( port1_i_port_fifo_mem[30] ) , 
    .A3 ( phfnn_289 ) , .A4 ( port1_i_port_fifo_mem[62] ) , 
    .Y ( ctmn_7098_CDR1 ) ) ;
OA221X1_RVT ctmi_7300 ( .A1 ( ctmn_6619 ) , 
    .A2 ( port3_i_port_fifo_mem[71] ) , .A3 ( port3_i_port_fifo_mem[103] ) , 
    .A4 ( ctmn_6614 ) , .A5 ( ctmn_6713 ) , .Y ( port3_i_port_fifo_N34 ) ) ;
OA221X1_RVT ctmi_7301 ( .A1 ( ctmn_6621 ) , .A2 ( port3_i_port_fifo_mem[7] ) , 
    .A3 ( port3_i_port_fifo_mem[39] ) , .A4 ( ctmn_6618 ) , 
    .A5 ( ctmn_6712 ) , .Y ( ctmn_6713 ) ) ;
OA221X1_RVT ctmi_7302 ( .A1 ( port3_i_port_fifo_mem[23] ) , 
    .A2 ( ctmn_6615 ) , .A3 ( ctmn_6612 ) , 
    .A4 ( port3_i_port_fifo_mem[87] ) , .A5 ( ctmn_6711 ) , .Y ( ctmn_6712 ) ) ;
OA22X1_RVT ctmi_7303 ( .A1 ( port3_i_port_fifo_mem[119] ) , 
    .A2 ( ctmn_6617 ) , .A3 ( ctmn_6620 ) , 
    .A4 ( port3_i_port_fifo_mem[55] ) , .Y ( ctmn_6711 ) ) ;
INVX0_HVT clock_gate_inv_642 ( 
    .A ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Y ( clock_gate_net_29 ) ) ;
NAND2X0_RVT ctmi_7305 ( .A1 ( ctmn_6725 ) , .A2 ( ctmn_6730 ) , 
    .Y ( top_arb_i_N20 ) ) ;
NAND2X0_RVT ctmi_7306 ( .A1 ( phfnn_320 ) , .A2 ( ctmn_6724 ) , 
    .Y ( ctmn_6725 ) ) ;
NAND2X0_RVT ctmi_7307 ( .A1 ( port1_i_port_fifo_N34 ) , .A2 ( ctmn_6642 ) , 
    .Y ( ctmn_6714 ) ) ;
AO221X1_RVT ctmi_7881 ( .A1 ( HFSNET_8 ) , .A2 ( port1_i_port_fifo_mem[47] ) , 
    .A3 ( HFSNET_9 ) , .A4 ( port1_i_port_fifo_mem[111] ) , 
    .A5 ( ctmn_7103 ) , .Y ( port1_i_port_fifo_N26 ) ) ;
AO221X1_RVT ctmi_7882 ( .A1 ( phfnn_276 ) , 
    .A2 ( port1_i_port_fifo_mem[15] ) , .A3 ( phfnn_288 ) , 
    .A4 ( port1_i_port_fifo_mem[79] ) , .A5 ( ctmn_7102 ) , .Y ( ctmn_7103 ) ) ;
INVX2_HVT phfnr_buf_982 ( .A ( ctmn_6627 ) , .Y ( phfnn_301 ) ) ;
AND2X1_RVT ctmi_7309 ( .A1 ( ctmn_6718 ) , .A2 ( ctmn_6723 ) , 
    .Y ( ctmn_6724 ) ) ;
NAND2X0_RVT ctmi_7310 ( .A1 ( ctmn_6716 ) , .A2 ( ctmn_6717 ) , 
    .Y ( ctmn_6718 ) ) ;
AO21X1_RVT ctmi_7311 ( .A1 ( port0_i_port_fifo_N34 ) , .A2 ( ctmn_6684 ) , 
    .A3 ( HFSNET_6 ) , .Y ( ctmn_6716 ) ) ;
AO21X1_RVT ctmi_7312 ( .A1 ( port2_i_port_fifo_N34 ) , .A2 ( ctmn_6660 ) , 
    .A3 ( ctmn_6645 ) , .Y ( ctmn_6717 ) ) ;
INVX0_RVT phfnr_buf_1008 ( .A ( ctmn_6721 ) , .Y ( phfnn_327 ) ) ;
INVX0_HVT phfnr_buf_968 ( .A ( ctmn_7064 ) , .Y ( phfnn_287 ) ) ;
INVX0_RVT phfnr_buf_1007 ( .A ( ctmn_6726 ) , .Y ( phfnn_326 ) ) ;
AO221X1_RVT ctmi_7883 ( .A1 ( phfnn_298 ) , 
    .A2 ( port1_i_port_fifo_mem[95] ) , .A3 ( phfnn_300 ) , 
    .A4 ( port1_i_port_fifo_mem[127] ) , .A5 ( ctmn_7101 ) , 
    .Y ( ctmn_7102 ) ) ;
AO22X1_RVT ctmi_7884 ( .A1 ( phfnn_299 ) , .A2 ( port1_i_port_fifo_mem[31] ) , 
    .A3 ( phfnn_289 ) , .A4 ( port1_i_port_fifo_mem[63] ) , .Y ( ctmn_7101 ) ) ;
INVX0_LVT phfnr_buf_974 ( .A ( ctmn_6602 ) , .Y ( phfnn_293 ) ) ;
NAND2X0_RVT ctmi_7316 ( .A1 ( port3_i_port_fifo_N34 ) , .A2 ( ctmn_6648 ) , 
    .Y ( ctmn_6721 ) ) ;
INVX0_RVT phfnr_buf_975 ( .A ( ctmn_6605 ) , .Y ( phfnn_294 ) ) ;
NAND2X0_RVT ctmi_7318 ( .A1 ( phfnn_327 ) , .A2 ( ctmn_6729 ) , 
    .Y ( ctmn_6730 ) ) ;
AND2X1_RVT ctmi_7319 ( .A1 ( ctmn_6718 ) , .A2 ( ctmn_6728 ) , 
    .Y ( ctmn_6729 ) ) ;
OAI21X1_RVT ctmi_7320 ( .A1 ( phfnn_320 ) , .A2 ( phfnn_326 ) , 
    .A3 ( ctmn_6717 ) , .Y ( ctmn_6728 ) ) ;
NAND2X0_RVT ctmi_7321 ( .A1 ( port2_i_port_fifo_N34 ) , .A2 ( ctmn_6659 ) , 
    .Y ( ctmn_6726 ) ) ;
INVX0_HVT phfnr_buf_976 ( .A ( ctmn_7206 ) , .Y ( phfnn_295 ) ) ;
NAND2X0_RVT ctmi_7323 ( .A1 ( ctmn_6730 ) , .A2 ( ctmn_6732 ) , 
    .Y ( top_arb_i_N19 ) ) ;
AO22X1_RVT ctmi_7894 ( .A1 ( phfnn_302 ) , .A2 ( port2_i_port_fifo_mem[24] ) , 
    .A3 ( phfnn_280 ) , .A4 ( port2_i_port_fifo_mem[56] ) , .Y ( ctmn_7112 ) ) ;
NBUFFX2_RVT ZBUF_80_inst_1053 ( .A ( fifo_data_out2[14] ) , .Y ( ZBUF_80_0 ) ) ;
INVX2_HVT phfnr_buf_983 ( .A ( ctmn_6635 ) , .Y ( phfnn_302 ) ) ;
INVX2_HVT HFSINV_557_1046 ( .A ( ctmn_6581 ) , .Y ( HFSNET_8 ) ) ;
INVX0_HVT phfnr_buf_987 ( .A ( ctmn_7209 ) , .Y ( phfnn_306 ) ) ;
NAND2X0_RVT ctmi_7400 ( .A1 ( ctmn_6640 ) , 
    .A2 ( port1_i_port_fifo_fifo_count[3] ) , .Y ( ctmn_6795 ) ) ;
INVX2_HVT phfnr_buf_988 ( .A ( ctmn_6612 ) , .Y ( phfnn_307 ) ) ;
AO221X1_RVT ctmi_7897 ( .A1 ( phfnn_303 ) , 
    .A2 ( port2_i_port_fifo_mem[105] ) , .A3 ( phfnn_304 ) , 
    .A4 ( port2_i_port_fifo_mem[41] ) , .A5 ( ctmn_7117 ) , 
    .Y ( port2_i_port_fifo_N32 ) ) ;
AO221X1_RVT ctmi_7898 ( .A1 ( phfnn_279 ) , 
    .A2 ( port2_i_port_fifo_mem[73] ) , .A3 ( phfnn_281 ) , 
    .A4 ( port2_i_port_fifo_mem[9] ) , .A5 ( ctmn_7116 ) , .Y ( ctmn_7117 ) ) ;
AO221X1_RVT ctmi_7899 ( .A1 ( phfnn_305 ) , 
    .A2 ( port2_i_port_fifo_mem[121] ) , .A3 ( phfnn_301 ) , 
    .A4 ( port2_i_port_fifo_mem[89] ) , .A5 ( ctmn_7115 ) , .Y ( ctmn_7116 ) ) ;
INVX0_LVT phfnr_buf_992 ( .A ( ctmn_6617 ) , .Y ( phfnn_311 ) ) ;
NAND2X0_RVT ctmi_7324 ( .A1 ( phfnn_326 ) , .A2 ( ctmn_6731 ) , 
    .Y ( ctmn_6732 ) ) ;
AO22X1_RVT ctmi_7325 ( .A1 ( ctmn_6723 ) , .A2 ( ctmn_6714 ) , 
    .A3 ( HFSNET_5 ) , .A4 ( HFSNET_6 ) , .Y ( ctmn_6731 ) ) ;
CGLNPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_5 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port0_i_port_fifo_N4 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) ) ;
AO22X1_RVT ctmi_7900 ( .A1 ( phfnn_302 ) , .A2 ( port2_i_port_fifo_mem[25] ) , 
    .A3 ( phfnn_280 ) , .A4 ( port2_i_port_fifo_mem[57] ) , .Y ( ctmn_7115 ) ) ;
AO221X1_RVT ctmi_7901 ( .A1 ( phfnn_303 ) , 
    .A2 ( port2_i_port_fifo_mem[106] ) , .A3 ( phfnn_304 ) , 
    .A4 ( port2_i_port_fifo_mem[42] ) , .A5 ( ctmn_7120 ) , 
    .Y ( port2_i_port_fifo_N31 ) ) ;
NAND2X1_RVT ctmi_7402 ( .A1 ( port2_valid_in ) , .A2 ( ctmn_6797 ) , 
    .Y ( ctmn_6798 ) ) ;
NAND2X1_RVT ctmi_7327 ( .A1 ( port0_valid_in ) , .A2 ( ctmn_6733 ) , 
    .Y ( ctmn_6734 ) ) ;
NAND2X0_RVT ctmi_7328 ( .A1 ( port0_i_port_fifo_fifo_count[3] ) , 
    .A2 ( ctmn_6650 ) , .Y ( ctmn_6733 ) ) ;
CGLNPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_18 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port2_i_port_fifo_N5 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) ) ;
AOI222X1_RVT ctmi_7811 ( .A1 ( ctmn_7046 ) , .A2 ( ctmn_6920 ) , 
    .A3 ( ctmn_7046 ) , .A4 ( ctmn_6641 ) , .A5 ( ctmn_7046 ) , 
    .A6 ( ctmn_6640 ) , .Y ( port1_i_port_fifo_N22 ) ) ;
OA221X1_RVT ctmi_7330 ( .A1 ( port0_i_port_fifo_mem[20] ) , 
    .A2 ( ctmn_6600 ) , .A3 ( ctmn_6598 ) , 
    .A4 ( port0_i_port_fifo_mem[68] ) , .A5 ( ctmn_6737 ) , 
    .Y ( port0_i_port_fifo_N37 ) ) ;
OA221X1_RVT ctmi_7547 ( .A1 ( port3_i_port_fifo_mem[17] ) , 
    .A2 ( ctmn_6615 ) , .A3 ( ctmn_6619 ) , 
    .A4 ( port3_i_port_fifo_mem[65] ) , .A5 ( ctmn_6905_CDR1 ) , 
    .Y ( port3_i_port_fifo_N40 ) ) ;
OA221X1_RVT ctmi_7548 ( .A1 ( ctmn_6618 ) , 
    .A2 ( port3_i_port_fifo_mem[33] ) , .A3 ( port3_i_port_fifo_mem[97] ) , 
    .A4 ( ctmn_6614 ) , .A5 ( ctmn_6904_CDR1 ) , .Y ( ctmn_6905_CDR1 ) ) ;
INVX0_HVT clock_gate_inv_658 ( 
    .A ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Y ( clock_gate_net_45 ) ) ;
NOR4X0_HVT ctmi_7545 ( .A1 ( ctmn_6897 ) , .A2 ( ctmn_6894 ) , 
    .A3 ( ctmn_6902 ) , .A4 ( ctmn_6734 ) , .Y ( port0_i_port_fifo_N2 ) ) ;
OA221X1_RVT ctmi_7334 ( .A1 ( port3_i_port_fifo_mem[20] ) , 
    .A2 ( ctmn_6615 ) , .A3 ( ctmn_6614 ) , 
    .A4 ( port3_i_port_fifo_mem[100] ) , .A5 ( ctmn_6740 ) , 
    .Y ( port3_i_port_fifo_N37 ) ) ;
OA221X1_RVT ctmi_7335 ( .A1 ( port3_i_port_fifo_mem[116] ) , 
    .A2 ( ctmn_6617 ) , .A3 ( ctmn_6621 ) , .A4 ( port3_i_port_fifo_mem[4] ) , 
    .A5 ( ctmn_6739 ) , .Y ( ctmn_6740 ) ) ;
OA221X1_RVT ctmi_7336 ( .A1 ( port3_i_port_fifo_mem[68] ) , 
    .A2 ( ctmn_6619 ) , .A3 ( ctmn_6618 ) , 
    .A4 ( port3_i_port_fifo_mem[36] ) , .A5 ( ctmn_6738_CDR1 ) , 
    .Y ( ctmn_6739 ) ) ;
OA22X1_RVT ctmi_7337 ( .A1 ( port3_i_port_fifo_mem[84] ) , .A2 ( ctmn_6612 ) , 
    .A3 ( ctmn_6620 ) , .A4 ( port3_i_port_fifo_mem[52] ) , 
    .Y ( ctmn_6738_CDR1 ) ) ;
OA221X1_RVT ctmi_7338 ( .A1 ( port2_i_port_fifo_mem[116] ) , 
    .A2 ( ctmn_6632 ) , .A3 ( ctmn_6629 ) , 
    .A4 ( port2_i_port_fifo_mem[100] ) , .A5 ( ctmn_6743 ) , 
    .Y ( port2_i_port_fifo_N37 ) ) ;
OA221X1_RVT ctmi_7339 ( .A1 ( port2_i_port_fifo_mem[68] ) , 
    .A2 ( ctmn_6630 ) , .A3 ( ctmn_6636 ) , 
    .A4 ( port2_i_port_fifo_mem[36] ) , .A5 ( ctmn_6742 ) , .Y ( ctmn_6743 ) ) ;
OA221X1_RVT ctmi_7340 ( .A1 ( ctmn_6633 ) , 
    .A2 ( port2_i_port_fifo_mem[52] ) , .A3 ( port2_i_port_fifo_mem[84] ) , 
    .A4 ( ctmn_6627 ) , .A5 ( ctmn_6741_CDR1 ) , .Y ( ctmn_6742 ) ) ;
OA22X1_RVT ctmi_7341 ( .A1 ( ctmn_6635 ) , .A2 ( port2_i_port_fifo_mem[20] ) , 
    .A3 ( port2_i_port_fifo_mem[4] ) , .A4 ( ctmn_6634 ) , 
    .Y ( ctmn_6741_CDR1 ) ) ;
AO221X1_RVT ctmi_7902 ( .A1 ( phfnn_279 ) , 
    .A2 ( port2_i_port_fifo_mem[74] ) , .A3 ( phfnn_281 ) , 
    .A4 ( port2_i_port_fifo_mem[10] ) , .A5 ( ctmn_7119 ) , .Y ( ctmn_7120 ) ) ;
AO221X1_RVT ctmi_7903 ( .A1 ( phfnn_305 ) , 
    .A2 ( port2_i_port_fifo_mem[122] ) , .A3 ( phfnn_301 ) , 
    .A4 ( port2_i_port_fifo_mem[90] ) , .A5 ( ctmn_7118 ) , .Y ( ctmn_7119 ) ) ;
AO221X1_RVT ctmi_7812 ( .A1 ( ctmn_6641 ) , .A2 ( phfnn_277 ) , 
    .A3 ( port1_i_port_fifo_fifo_count[3] ) , .A4 ( ctmn_7045 ) , 
    .A5 ( phfnn_195 ) , .Y ( ctmn_7046 ) ) ;
INVX1_HVT phfnr_buf_993 ( .A ( ctmn_6909 ) , .Y ( phfnn_312 ) ) ;
OA221X1_RVT ctmi_7342 ( .A1 ( ctmn_6589 ) , 
    .A2 ( port1_i_port_fifo_mem[116] ) , .A3 ( port1_i_port_fifo_mem[4] ) , 
    .A4 ( ctmn_6585 ) , .A5 ( ctmn_6746 ) , .Y ( port1_i_port_fifo_N37 ) ) ;
OA221X1_RVT ctmi_7343 ( .A1 ( port1_i_port_fifo_mem[68] ) , 
    .A2 ( ctmn_6584 ) , .A3 ( ctmn_6583 ) , 
    .A4 ( port1_i_port_fifo_mem[100] ) , .A5 ( ctmn_6745 ) , 
    .Y ( ctmn_6746 ) ) ;
OA221X1_RVT ctmi_7344 ( .A1 ( port1_i_port_fifo_mem[36] ) , 
    .A2 ( ctmn_6581 ) , .A3 ( ctmn_6590 ) , 
    .A4 ( port1_i_port_fifo_mem[52] ) , .A5 ( ctmn_6744 ) , .Y ( ctmn_6745 ) ) ;
OA22X1_RVT ctmi_7345 ( .A1 ( ctmn_6591 ) , .A2 ( port1_i_port_fifo_mem[20] ) , 
    .A3 ( port1_i_port_fifo_mem[84] ) , .A4 ( ctmn_6587 ) , .Y ( ctmn_6744 ) ) ;
INVX0_HVT clock_gate_inv_643 ( 
    .A ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Y ( clock_gate_net_30 ) ) ;
OAI221X1_RVT ctmi_7347 ( .A1 ( phfnn_318 ) , .A2 ( phfnn_333 ) , 
    .A3 ( ctmn_6766 ) , .A4 ( phfnn_330 ) , .A5 ( ctmn_6791 ) , 
    .Y ( top_arb_i_N23 ) ) ;
INVX0_RVT phfnr_buf_1014 ( .A ( ctmn_6761 ) , .Y ( phfnn_333 ) ) ;
NOR4X1_RVT ctmi_7349 ( .A1 ( ctmn_6748 ) , .A2 ( port0_i_current_state[0] ) , 
    .A3 ( ctmn_6749 ) , .A4 ( ctmn_6760 ) , .Y ( ctmn_6761 ) ) ;
AO22X1_RVT ctmi_7904 ( .A1 ( phfnn_280 ) , .A2 ( port2_i_port_fifo_mem[58] ) , 
    .A3 ( phfnn_302 ) , .A4 ( port2_i_port_fifo_mem[26] ) , .Y ( ctmn_7118 ) ) ;
CGLNPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_6 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port0_i_port_fifo_N3 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) ) ;
INVX1_HVT phfnr_buf_994 ( .A ( ctmn_6649 ) , .Y ( phfnn_313 ) ) ;
AOI22X1_RVT ctmi_7352 ( .A1 ( HFSNET_7 ) , .A2 ( top_arb_i_N22 ) , 
    .A3 ( ctmn_6757 ) , .A4 ( ctmn_6759 ) , .Y ( ctmn_6760 ) ) ;
OA222X1_RVT ctmi_7353 ( .A1 ( phfnn_315 ) , .A2 ( ctmn_6690 ) , 
    .A3 ( phfnn_315 ) , .A4 ( ctmn_6697 ) , .A5 ( ctmn_6756 ) , 
    .A6 ( phfnn_318 ) , .Y ( ctmn_6757 ) ) ;
AND2X1_RVT ctmi_7354 ( .A1 ( phfnn_312 ) , .A2 ( ctmn_6755 ) , 
    .Y ( ctmn_6756 ) ) ;
INVX0_HVT phfnr_buf_996 ( .A ( ctmn_6689 ) , .Y ( phfnn_315 ) ) ;
NAND2X0_RVT ctmi_7357 ( .A1 ( port1_i_port_fifo_N37 ) , .A2 ( ctmn_6642 ) , 
    .Y ( ctmn_6751 ) ) ;
AO221X1_RVT ctmi_7905 ( .A1 ( phfnn_303 ) , 
    .A2 ( port2_i_port_fifo_mem[107] ) , .A3 ( phfnn_304 ) , 
    .A4 ( port2_i_port_fifo_mem[43] ) , .A5 ( ctmn_7123 ) , 
    .Y ( port2_i_port_fifo_N30 ) ) ;
INVX0_RVT phfnr_buf_997 ( .A ( ctmn_6825 ) , .Y ( phfnn_316 ) ) ;
NAND2X0_RVT ctmi_7360 ( .A1 ( top_arb_i_common_ptr[1] ) , 
    .A2 ( top_arb_i_N22 ) , .Y ( ctmn_6753 ) ) ;
OA222X1_RVT ctmi_7361 ( .A1 ( phfnn_316 ) , .A2 ( ctmn_6649 ) , 
    .A3 ( phfnn_316 ) , .A4 ( ctmn_6666 ) , .A5 ( ctmn_6758 ) , 
    .A6 ( phfnn_317 ) , .Y ( ctmn_6759 ) ) ;
AND2X1_RVT ctmi_7362 ( .A1 ( ctmn_6721 ) , .A2 ( ctmn_6728 ) , 
    .Y ( ctmn_6758 ) ) ;
INVX0_HVT phfnr_buf_998 ( .A ( phfnn_177 ) , .Y ( phfnn_317 ) ) ;
NAND2X0_RVT ctmi_7364 ( .A1 ( ctmn_6763 ) , .A2 ( ctmn_6765 ) , 
    .Y ( ctmn_6766 ) ) ;
INVX0_RVT phfnr_buf_999 ( .A ( ctmn_6826 ) , .Y ( phfnn_318 ) ) ;
AO221X1_RVT ctmi_7906 ( .A1 ( phfnn_281 ) , 
    .A2 ( port2_i_port_fifo_mem[11] ) , .A3 ( phfnn_279 ) , 
    .A4 ( port2_i_port_fifo_mem[75] ) , .A5 ( ctmn_7122_CDR1 ) , 
    .Y ( ctmn_7123 ) ) ;
AO221X1_RVT ctmi_7907 ( .A1 ( phfnn_305 ) , 
    .A2 ( port2_i_port_fifo_mem[123] ) , .A3 ( phfnn_301 ) , 
    .A4 ( port2_i_port_fifo_mem[91] ) , .A5 ( ctmn_7121_CDR1 ) , 
    .Y ( ctmn_7122_CDR1 ) ) ;
AO22X1_RVT ctmi_7908 ( .A1 ( phfnn_280 ) , .A2 ( port2_i_port_fifo_mem[59] ) , 
    .A3 ( phfnn_302 ) , .A4 ( port2_i_port_fifo_mem[27] ) , 
    .Y ( ctmn_7121_CDR1 ) ) ;
AO221X1_RVT ctmi_7909 ( .A1 ( phfnn_303 ) , 
    .A2 ( port2_i_port_fifo_mem[108] ) , .A3 ( phfnn_304 ) , 
    .A4 ( port2_i_port_fifo_mem[44] ) , .A5 ( ctmn_7126 ) , 
    .Y ( port2_i_port_fifo_N29 ) ) ;
AO221X1_RVT ctmi_7910 ( .A1 ( phfnn_279 ) , 
    .A2 ( port2_i_port_fifo_mem[76] ) , .A3 ( phfnn_281 ) , 
    .A4 ( port2_i_port_fifo_mem[12] ) , .A5 ( ctmn_7125 ) , .Y ( ctmn_7126 ) ) ;
INVX1_HVT phfnr_buf_1002 ( .A ( ctmn_6751 ) , .Y ( phfnn_321 ) ) ;
AO22X1_RVT ctmi_7815 ( .A1 ( ctmn_7049 ) , .A2 ( ctmn_7050 ) , 
    .A3 ( ctmn_7052 ) , .A4 ( phfnn_336 ) , .Y ( port1_i_port_fifo_N23 ) ) ;
AOI222X1_RVT ctmi_7816 ( .A1 ( ctmn_6795 ) , .A2 ( ctmn_7047 ) , 
    .A3 ( ctmn_6795 ) , .A4 ( ctmn_7048 ) , .A5 ( ctmn_6795 ) , 
    .A6 ( port1_valid_in ) , .Y ( ctmn_7049 ) ) ;
INVX0_HVT clock_gate_inv_644 ( 
    .A ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Y ( clock_gate_net_31 ) ) ;
NOR2X0_RVT ctmi_7818 ( .A1 ( port1_i_port_fifo_fifo_count[1] ) , 
    .A2 ( HFSNET_3 ) , .Y ( ctmn_7048 ) ) ;
OR2X1_RVT ctmi_7819 ( .A1 ( phfnn_332 ) , .A2 ( ctmn_6884 ) , 
    .Y ( ctmn_7050 ) ) ;
AO22X1_RVT ctmi_7366 ( .A1 ( ctmn_6764 ) , .A2 ( ctmn_6751 ) , 
    .A3 ( HFSNET_5 ) , .A4 ( HFSNET_6 ) , .Y ( ctmn_6765 ) ) ;
INVX0_HVT phfnr_buf_1003 ( .A ( phfnn_182 ) , .Y ( phfnn_322 ) ) ;
OAI221X1_RVT ctmi_7393 ( .A1 ( phfnn_316 ) , .A2 ( phfnn_333 ) , 
    .A3 ( ctmn_6669 ) , .A4 ( phfnn_330 ) , .A5 ( ctmn_6792 ) , 
    .Y ( top_arb_i_N24 ) ) ;
AO221X1_RVT ctmi_7911 ( .A1 ( phfnn_305 ) , 
    .A2 ( port2_i_port_fifo_mem[124] ) , .A3 ( phfnn_301 ) , 
    .A4 ( port2_i_port_fifo_mem[92] ) , .A5 ( ctmn_7124 ) , .Y ( ctmn_7125 ) ) ;
AO22X1_RVT ctmi_7912 ( .A1 ( phfnn_280 ) , .A2 ( port2_i_port_fifo_mem[60] ) , 
    .A3 ( phfnn_302 ) , .A4 ( port2_i_port_fifo_mem[28] ) , .Y ( ctmn_7124 ) ) ;
AO221X1_RVT ctmi_7913 ( .A1 ( phfnn_303 ) , 
    .A2 ( port2_i_port_fifo_mem[109] ) , .A3 ( phfnn_304 ) , 
    .A4 ( port2_i_port_fifo_mem[45] ) , .A5 ( ctmn_7129 ) , 
    .Y ( port2_i_port_fifo_N28 ) ) ;
AO221X1_RVT ctmi_7914 ( .A1 ( phfnn_279 ) , 
    .A2 ( port2_i_port_fifo_mem[77] ) , .A3 ( phfnn_281 ) , 
    .A4 ( port2_i_port_fifo_mem[13] ) , .A5 ( ctmn_7128 ) , .Y ( ctmn_7129 ) ) ;
AO221X1_RVT ctmi_7915 ( .A1 ( phfnn_305 ) , 
    .A2 ( port2_i_port_fifo_mem[125] ) , .A3 ( phfnn_301 ) , 
    .A4 ( port2_i_port_fifo_mem[93] ) , .A5 ( ctmn_7127 ) , .Y ( ctmn_7128 ) ) ;
AO221X1_RVT ctmi_7594 ( .A1 ( fifo_data_out0[9] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[9] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6926 ) , 
    .Y ( MXIOP_39_0 ) ) ;
AO22X1_RVT ctmi_7916 ( .A1 ( phfnn_280 ) , .A2 ( port2_i_port_fifo_mem[61] ) , 
    .A3 ( phfnn_302 ) , .A4 ( port2_i_port_fifo_mem[29] ) , .Y ( ctmn_7127 ) ) ;
AO221X1_RVT ctmi_7917 ( .A1 ( phfnn_303 ) , 
    .A2 ( port2_i_port_fifo_mem[110] ) , .A3 ( phfnn_304 ) , 
    .A4 ( port2_i_port_fifo_mem[46] ) , .A5 ( ctmn_7132 ) , 
    .Y ( port2_i_port_fifo_N27 ) ) ;
AO221X1_RVT ctmi_7918 ( .A1 ( phfnn_279 ) , 
    .A2 ( port2_i_port_fifo_mem[78] ) , .A3 ( phfnn_281 ) , 
    .A4 ( port2_i_port_fifo_mem[14] ) , .A5 ( ctmn_7131 ) , .Y ( ctmn_7132 ) ) ;
AO221X1_RVT ctmi_7919 ( .A1 ( phfnn_305 ) , 
    .A2 ( port2_i_port_fifo_mem[126] ) , .A3 ( phfnn_301 ) , 
    .A4 ( port2_i_port_fifo_mem[94] ) , .A5 ( ctmn_7130 ) , .Y ( ctmn_7131 ) ) ;
AO22X1_RVT ctmi_7920 ( .A1 ( phfnn_280 ) , .A2 ( port2_i_port_fifo_mem[62] ) , 
    .A3 ( phfnn_302 ) , .A4 ( port2_i_port_fifo_mem[30] ) , .Y ( ctmn_7130 ) ) ;
AO221X1_RVT ctmi_7921 ( .A1 ( phfnn_303 ) , 
    .A2 ( port2_i_port_fifo_mem[111] ) , .A3 ( phfnn_304 ) , 
    .A4 ( port2_i_port_fifo_mem[47] ) , .A5 ( ctmn_7135 ) , 
    .Y ( port2_i_port_fifo_N26 ) ) ;
OA22X1_RVT ctmi_7394 ( .A1 ( ctmn_6663 ) , .A2 ( ctmn_6790 ) , 
    .A3 ( phfnn_329 ) , .A4 ( phfnn_331 ) , .Y ( ctmn_6792 ) ) ;
AO221X1_RVT ctmi_7922 ( .A1 ( phfnn_279 ) , 
    .A2 ( port2_i_port_fifo_mem[79] ) , .A3 ( phfnn_281 ) , 
    .A4 ( port2_i_port_fifo_mem[15] ) , .A5 ( ctmn_7134 ) , .Y ( ctmn_7135 ) ) ;
AO221X1_RVT ctmi_7923 ( .A1 ( phfnn_305 ) , 
    .A2 ( port2_i_port_fifo_mem[127] ) , .A3 ( phfnn_301 ) , 
    .A4 ( port2_i_port_fifo_mem[95] ) , .A5 ( ctmn_7133 ) , .Y ( ctmn_7134 ) ) ;
INVX0_RVT phfnr_buf_1004 ( .A ( ctmn_6763 ) , .Y ( phfnn_323 ) ) ;
AO22X1_RVT ctmi_7827 ( .A1 ( ctmn_7059 ) , .A2 ( ctmn_6886 ) , 
    .A3 ( ctmn_7061 ) , .A4 ( phfnn_334 ) , .Y ( port2_i_port_fifo_N23 ) ) ;
AOI222X1_RVT ctmi_7828 ( .A1 ( ctmn_6797 ) , .A2 ( ctmn_7057 ) , 
    .A3 ( ctmn_6797 ) , .A4 ( ctmn_7058 ) , .A5 ( ctmn_6797 ) , 
    .A6 ( port2_valid_in ) , .Y ( ctmn_7059 ) ) ;
CGLNPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_7 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port0_i_port_fifo_N2 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) ) ;
NOR2X1_RVT ctmi_7830 ( .A1 ( port2_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port2_i_port_fifo_fifo_count[0] ) , .Y ( ctmn_7058 ) ) ;
OA21X1_RVT ctmi_7831 ( .A1 ( port2_i_port_fifo_fifo_count[2] ) , 
    .A2 ( ctmn_7060 ) , .A3 ( phfnn_282 ) , .Y ( ctmn_7061 ) ) ;
AND2X1_RVT ctmi_7832 ( .A1 ( port2_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port2_i_port_fifo_fifo_count[0] ) , .Y ( ctmn_7060 ) ) ;
NAND2X0_RVT ctmi_7403 ( .A1 ( port2_i_port_fifo_fifo_count[3] ) , 
    .A2 ( ctmn_6657 ) , .Y ( ctmn_6797 ) ) ;
AO22X1_RVT ctmi_7924 ( .A1 ( phfnn_302 ) , .A2 ( port2_i_port_fifo_mem[31] ) , 
    .A3 ( phfnn_280 ) , .A4 ( port2_i_port_fifo_mem[63] ) , .Y ( ctmn_7133 ) ) ;
AO22X1_RVT ctmi_7595 ( .A1 ( fifo_data_out1[9] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out2[9] ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6926 ) ) ;
INVX0_RVT ctmi_165 ( .A ( ctmn_6798 ) , .Y ( port2_i_port_fifo_N13 ) ) ;
AO22X1_RVT ctmi_7934 ( .A1 ( phfnn_311 ) , 
    .A2 ( port3_i_port_fifo_mem[120] ) , .A3 ( phfnn_307 ) , 
    .A4 ( port3_i_port_fifo_mem[88] ) , .Y ( ctmn_7144 ) ) ;
INVX1_HVT ctmi_166 ( .A ( ctmn_6800 ) , .Y ( port3_i_port_fifo_N13 ) ) ;
INVX0_HVT phfnr_buf_1005 ( .A ( ctmn_6665 ) , .Y ( phfnn_324 ) ) ;
AO221X1_RVT ctmi_7937 ( .A1 ( phfnn_309 ) , 
    .A2 ( port3_i_port_fifo_mem[105] ) , .A3 ( phfnn_310 ) , 
    .A4 ( port3_i_port_fifo_mem[41] ) , .A5 ( ctmn_7149 ) , 
    .Y ( port3_i_port_fifo_N32 ) ) ;
INVX0_HVT phfnr_buf_1009 ( .A ( ctmn_6788 ) , .Y ( phfnn_328 ) ) ;
NAND2X1_RVT ctmi_7405 ( .A1 ( port3_valid_in ) , .A2 ( ctmn_6799 ) , 
    .Y ( ctmn_6800 ) ) ;
NAND2X0_RVT ctmi_7406 ( .A1 ( port3_i_port_fifo_fifo_count[3] ) , 
    .A2 ( ctmn_6646 ) , .Y ( ctmn_6799 ) ) ;
INVX1_HVT phfnr_buf_1010 ( .A ( ctmn_6776 ) , .Y ( phfnn_329 ) ) ;
AO221X1_RVT ctmi_7408 ( .A1 ( fifo_data_out0[15] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[15] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6807 ) , 
    .Y ( MXIOP_33_0 ) ) ;
AND3X2_RVT ctmi_7409 ( .A1 ( ctmn_6801 ) , .A2 ( ctmn_6802 ) , 
    .A3 ( TDBUF_345 ) , .Y ( ctmn_6803 ) ) ;
INVX0_HVT clock_gate_inv_645 ( 
    .A ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Y ( clock_gate_net_32 ) ) ;
INVX0_HVT clock_gate_inv_646 ( 
    .A ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Y ( clock_gate_net_33 ) ) ;
AND3X4_LVT ctmi_7412 ( .A1 ( mux_sel0[1] ) , .A2 ( TDBUF_345 ) , 
    .A3 ( mux_sel0[0] ) , .Y ( ctmn_6804 ) ) ;
AO22X1_RVT ctmi_7413 ( .A1 ( fifo_data_out1[15] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( HFSNET_1 ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6807 ) ) ;
AND3X2_RVT ctmi_7414 ( .A1 ( ctmn_6801 ) , .A2 ( TDBUF_345 ) , 
    .A3 ( mux_sel0[0] ) , .Y ( ctmn_6805 ) ) ;
AND3X2_RVT ctmi_7415 ( .A1 ( ctmn_6802 ) , .A2 ( mux_sel0[1] ) , 
    .A3 ( TDBUF_345 ) , .Y ( ctmn_6806 ) ) ;
AO221X1_RVT ctmi_7416 ( .A1 ( fifo_data_out0[14] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[14] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6808 ) , 
    .Y ( MXIOP_34_0 ) ) ;
AO22X1_RVT ctmi_7417 ( .A1 ( fifo_data_out1[14] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( ZBUF_80_0 ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6808 ) ) ;
AO221X1_RVT ctmi_7418 ( .A1 ( fifo_data_out0[13] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[13] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6809 ) , 
    .Y ( MXIOP_35_0 ) ) ;
AO22X1_RVT ctmi_7419 ( .A1 ( fifo_data_out1[13] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( HFSNET_10 ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6809 ) ) ;
AO221X1_RVT ctmi_7420 ( .A1 ( fifo_data_out0[12] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[12] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6810 ) , 
    .Y ( MXIOP_36_0 ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[125] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[124] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[123] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[122] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[121] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[120] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[119] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[118] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[117] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[116] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[115] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[114] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[113] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[112] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[111] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[110] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[109] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[108] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[107] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[106] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[105] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[104] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[103] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[102] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[101] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[100] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[99] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[98] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[97] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_31 ) , 
    .Q ( port0_i_port_fifo_mem[96] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[95] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[94] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[93] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[92] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[91] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[90] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[89] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[88] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[87] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[86] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[85] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[84] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[83] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[82] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[81] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_30 ) , 
    .Q ( port0_i_port_fifo_mem[80] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[79] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[78] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[77] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[76] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[75] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[74] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[73] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[72] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[71] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[70] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[69] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[68] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[67] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[66] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[65] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_29 ) , 
    .Q ( port0_i_port_fifo_mem[64] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[63] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[62] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[61] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[60] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[59] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[58] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[57] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[56] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[55] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[54] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[53] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[52] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[51] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[50] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[49] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_28 ) , 
    .Q ( port0_i_port_fifo_mem[48] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[47] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[46] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[45] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[44] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[43] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[42] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[41] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[40] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[39] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[38] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[37] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[36] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[35] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[34] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[33] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_27 ) , 
    .Q ( port0_i_port_fifo_mem[32] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[31] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[30] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[29] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[28] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[27] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[26] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[25] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[24] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[23] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[22] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[21] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[20] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[19] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[18] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[17] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_26 ) , 
    .Q ( port0_i_port_fifo_mem[16] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[15] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[14] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[13] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[12] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[11] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[10] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[9] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[8] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[7] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[6] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[5] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[4] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[3] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[2] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[1] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_25 ) , 
    .Q ( port0_i_port_fifo_mem[0] ) ) ;
OR2X2_RVT ctmi_7148 ( .A1 ( port1_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6580 ) , .Y ( ctmn_6581 ) ) ;
INVX0_RVT phfnr_buf_1011 ( .A ( ctmn_6771 ) , .Y ( phfnn_330 ) ) ;
AO22X1_RVT ctmi_7421 ( .A1 ( fifo_data_out1[12] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out2[12] ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6810 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_rd_ptr_reg_2_ ( .D ( port0_i_port_fifo_N18 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_13 ) , 
    .RSTB ( rst_n ) , .Q ( port0_i_port_fifo_rd_ptr[2] ) , .QN ( ctmn_6595 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_rd_ptr_reg_0_ ( .D ( port0_i_port_fifo_N20 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_13 ) , 
    .RSTB ( rst_n ) , .Q ( port0_i_port_fifo_rd_ptr[0] ) , 
    .QN ( port0_i_port_fifo_N20 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_fifo_count_reg_3_ ( 
    .D ( port0_i_port_fifo_N22 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_5 ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_port_fifo_fifo_count[3] ) , .QN ( ctmn_6651 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_rd_ptr_reg_1_ ( .D ( port0_i_port_fifo_N19 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_13 ) , 
    .RSTB ( rst_n ) , .Q ( port0_i_port_fifo_rd_ptr[1] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_fifo_count_reg_2_ ( 
    .D ( port0_i_port_fifo_N23 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_5 ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_port_fifo_fifo_count[2] ) , .QN ( ctmn_7038 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_fifo_count_reg_0_ ( 
    .D ( port0_i_port_fifo_N25 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_14 ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_port_fifo_fifo_count[0] ) , .QN ( ctmn_7023 ) ) ;
SDFFARX1_HVT port1_i_current_state_reg_1_ ( .D ( port1_i_next_state[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port1_i_current_state[1] ) , .QN ( ctmn_6874 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_fifo_count_reg_1_ ( 
    .D ( port0_i_port_fifo_N24 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_5 ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_port_fifo_fifo_count[1] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_14_ ( 
    .D ( port0_i_port_fifo_N27 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[14] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_13_ ( 
    .D ( port0_i_port_fifo_N28 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[13] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_12_ ( 
    .D ( port0_i_port_fifo_N29 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[12] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_11_ ( 
    .D ( port0_i_port_fifo_N30 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[11] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_10_ ( 
    .D ( port0_i_port_fifo_N31 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[10] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_9_ ( 
    .D ( port0_i_port_fifo_N32 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[9] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_8_ ( 
    .D ( port0_i_port_fifo_N33 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[8] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_7_ ( 
    .D ( port0_i_port_fifo_N34 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[7] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_6_ ( 
    .D ( port0_i_port_fifo_N35 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[6] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_5_ ( 
    .D ( port0_i_port_fifo_N36 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[5] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_4_ ( 
    .D ( port0_i_port_fifo_N37 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[4] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_3_ ( 
    .D ( port0_i_port_fifo_N38 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[3] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_2_ ( 
    .D ( port0_i_port_fifo_N39 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[2] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_1_ ( 
    .D ( port0_i_port_fifo_N40 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[1] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_0_ ( 
    .D ( port0_i_port_fifo_N41 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[0] ) ) ;
SDFFARX1_HVT port1_i_current_state_reg_0_ ( .D ( port1_i_next_state[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port1_i_current_state[0] ) , .QN ( ctmn_6787 ) ) ;
AO221X1_RVT ctmi_7938 ( .A1 ( phfnn_284 ) , 
    .A2 ( port3_i_port_fifo_mem[73] ) , .A3 ( phfnn_286 ) , 
    .A4 ( port3_i_port_fifo_mem[9] ) , .A5 ( ctmn_7148 ) , .Y ( ctmn_7149 ) ) ;
AO221X1_RVT ctmi_7422 ( .A1 ( fifo_data_out0[11] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[11] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6811 ) , 
    .Y ( MXIOP_37_0 ) ) ;
CGLNPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_19 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port2_i_port_fifo_N4 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) ) ;
AND4X1_HVT ctmi_7544 ( .A1 ( port0_i_port_fifo_N16 ) , .A2 ( rst_n ) , 
    .A3 ( port0_i_port_fifo_wr_ptr[1] ) , .A4 ( ctmn_6901 ) , 
    .Y ( port0_i_port_fifo_N3 ) ) ;
AO221X1_RVT ctmi_7939 ( .A1 ( phfnn_308 ) , 
    .A2 ( port3_i_port_fifo_mem[25] ) , .A3 ( phfnn_285 ) , 
    .A4 ( port3_i_port_fifo_mem[57] ) , .A5 ( ctmn_7147 ) , .Y ( ctmn_7148 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_wr_ptr_reg_0_ ( .D ( port0_i_port_fifo_N16 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_15 ) , 
    .RSTB ( rst_n ) , .Q ( port0_i_port_fifo_wr_ptr[0] ) , 
    .QN ( port0_i_port_fifo_N16 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_15_ ( 
    .D ( port0_i_port_fifo_N26 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_13 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out0[15] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_wr_ptr_reg_0_ ( .D ( port1_i_port_fifo_N16 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_18 ) , 
    .RSTB ( rst_n ) , .Q ( port1_i_port_fifo_wr_ptr[0] ) , 
    .QN ( port1_i_port_fifo_N16 ) ) ;
AO22X1_RVT ctmi_7423 ( .A1 ( fifo_data_out1[11] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out2[11] ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6811 ) ) ;
AO221X1_RVT ctmi_7614 ( .A1 ( fifo_data_out0[15] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[15] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6942 ) , 
    .Y ( MXIOP_49_0 ) ) ;
AND3X2_RVT ctmi_7615 ( .A1 ( ctmn_6936 ) , .A2 ( ctmn_6937 ) , 
    .A3 ( TDBUF_346 ) , .Y ( ctmn_6938 ) ) ;
AO221X1_RVT ctmi_7424 ( .A1 ( fifo_data_out0[10] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[10] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6812 ) , 
    .Y ( MXIOP_38_0 ) ) ;
CGLNPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_8 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port1_i_port_fifo_N9 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) ) ;
INVX0_HVT clock_gate_inv_647 ( 
    .A ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Y ( clock_gate_net_34 ) ) ;
AO22X1_RVT ctmi_7425 ( .A1 ( fifo_data_out1[10] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out2[10] ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6812 ) ) ;
AND3X2_RVT ctmi_7618 ( .A1 ( mux_sel1[1] ) , .A2 ( TDBUF_346 ) , 
    .A3 ( mux_sel1[0] ) , .Y ( ctmn_6939 ) ) ;
OA221X1_RVT ctmi_7426 ( .A1 ( port0_i_port_fifo_mem[18] ) , 
    .A2 ( ctmn_6600 ) , .A3 ( ctmn_6598 ) , 
    .A4 ( port0_i_port_fifo_mem[66] ) , .A5 ( ctmn_6815_CDR1 ) , 
    .Y ( port0_i_port_fifo_N39 ) ) ;
AO22X1_RVT ctmi_7619 ( .A1 ( fifo_data_out1[15] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( HFSNET_1 ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6942 ) ) ;
OA221X1_RVT ctmi_7427 ( .A1 ( ctmn_6603 ) , 
    .A2 ( port0_i_port_fifo_mem[34] ) , .A3 ( port0_i_port_fifo_mem[98] ) , 
    .A4 ( ctmn_6597 ) , .A5 ( ctmn_6814_CDR1 ) , .Y ( ctmn_6815_CDR1 ) ) ;
OA221X1_RVT ctmi_7428 ( .A1 ( ctmn_6606 ) , 
    .A2 ( port0_i_port_fifo_mem[50] ) , .A3 ( port0_i_port_fifo_mem[2] ) , 
    .A4 ( ctmn_6601 ) , .A5 ( ctmn_6813_CDR1 ) , .Y ( ctmn_6814_CDR1 ) ) ;
OA22X1_RVT ctmi_7429 ( .A1 ( ctmn_6605 ) , 
    .A2 ( port0_i_port_fifo_mem[114] ) , .A3 ( port0_i_port_fifo_mem[82] ) , 
    .A4 ( ctmn_6602 ) , .Y ( ctmn_6813_CDR1 ) ) ;
OA221X1_RVT ctmi_7430 ( .A1 ( ctmn_6598 ) , 
    .A2 ( port0_i_port_fifo_mem[67] ) , .A3 ( port0_i_port_fifo_mem[19] ) , 
    .A4 ( ctmn_6600 ) , .A5 ( ctmn_6818 ) , .Y ( port0_i_port_fifo_N38 ) ) ;
OA221X1_RVT ctmi_7431 ( .A1 ( port0_i_port_fifo_mem[99] ) , 
    .A2 ( ctmn_6597 ) , .A3 ( ctmn_6603 ) , 
    .A4 ( port0_i_port_fifo_mem[35] ) , .A5 ( ctmn_6817 ) , .Y ( ctmn_6818 ) ) ;
OA221X1_RVT ctmi_7432 ( .A1 ( port0_i_port_fifo_mem[3] ) , .A2 ( ctmn_6601 ) , 
    .A3 ( ctmn_6606 ) , .A4 ( port0_i_port_fifo_mem[51] ) , 
    .A5 ( ctmn_6816 ) , .Y ( ctmn_6817 ) ) ;
OA22X1_RVT ctmi_7433 ( .A1 ( port0_i_port_fifo_mem[83] ) , .A2 ( ctmn_6602 ) , 
    .A3 ( ctmn_6605 ) , .A4 ( port0_i_port_fifo_mem[115] ) , 
    .Y ( ctmn_6816 ) ) ;
OA221X1_RVT ctmi_7434 ( .A1 ( ctmn_6598 ) , 
    .A2 ( port0_i_port_fifo_mem[65] ) , .A3 ( port0_i_port_fifo_mem[17] ) , 
    .A4 ( ctmn_6600 ) , .A5 ( ctmn_6821 ) , .Y ( port0_i_port_fifo_N40 ) ) ;
OA221X1_RVT ctmi_7435 ( .A1 ( ctmn_6603 ) , 
    .A2 ( port0_i_port_fifo_mem[33] ) , .A3 ( port0_i_port_fifo_mem[97] ) , 
    .A4 ( ctmn_6597 ) , .A5 ( ctmn_6820 ) , .Y ( ctmn_6821 ) ) ;
OA221X1_RVT ctmi_7436 ( .A1 ( port0_i_port_fifo_mem[1] ) , .A2 ( ctmn_6601 ) , 
    .A3 ( ctmn_6606 ) , .A4 ( port0_i_port_fifo_mem[49] ) , 
    .A5 ( ctmn_6819 ) , .Y ( ctmn_6820 ) ) ;
OA22X1_RVT ctmi_7437 ( .A1 ( port0_i_port_fifo_mem[81] ) , .A2 ( ctmn_6602 ) , 
    .A3 ( ctmn_6605 ) , .A4 ( port0_i_port_fifo_mem[113] ) , 
    .Y ( ctmn_6819 ) ) ;
OA221X1_RVT ctmi_7438 ( .A1 ( ctmn_6598 ) , 
    .A2 ( port0_i_port_fifo_mem[64] ) , .A3 ( port0_i_port_fifo_mem[16] ) , 
    .A4 ( ctmn_6600 ) , .A5 ( ctmn_6824 ) , .Y ( port0_i_port_fifo_N41 ) ) ;
OA221X1_RVT ctmi_7439 ( .A1 ( ctmn_6603 ) , 
    .A2 ( port0_i_port_fifo_mem[32] ) , .A3 ( port0_i_port_fifo_mem[96] ) , 
    .A4 ( ctmn_6597 ) , .A5 ( ctmn_6823 ) , .Y ( ctmn_6824 ) ) ;
OA221X1_RVT ctmi_7440 ( .A1 ( port0_i_port_fifo_mem[0] ) , .A2 ( ctmn_6601 ) , 
    .A3 ( ctmn_6606 ) , .A4 ( port0_i_port_fifo_mem[48] ) , 
    .A5 ( ctmn_6822 ) , .Y ( ctmn_6823 ) ) ;
OA22X1_RVT ctmi_7441 ( .A1 ( port0_i_port_fifo_mem[80] ) , .A2 ( ctmn_6602 ) , 
    .A3 ( ctmn_6605 ) , .A4 ( port0_i_port_fifo_mem[112] ) , 
    .Y ( ctmn_6822 ) ) ;
INVX0_RVT phfnr_buf_1012 ( .A ( ctmn_6781 ) , .Y ( phfnn_331 ) ) ;
NAND2X0_RVT ctmi_7443 ( .A1 ( phfnn_333 ) , .A2 ( ctmn_6834 ) , 
    .Y ( ctmn_6835 ) ) ;
NAND3X0_RVT ctmi_7444 ( .A1 ( port0_i_current_state[0] ) , .A2 ( ctmn_6748 ) , 
    .A3 ( ctmn_6833 ) , .Y ( ctmn_6834 ) ) ;
AO221X1_RVT ctmi_1024 ( .A1 ( ctmn_6768 ) , .A2 ( ctmn_6768 ) , 
    .A3 ( ctmn_6855 ) , .A4 ( ctmn_6856 ) , .A5 ( ctmn_340 ) , 
    .Y ( ctmn_6860 ) ) ;
AO221X1_RVT ctmi_7446 ( .A1 ( ctmn_6825 ) , .A2 ( port0_i_port_fifo_N40 ) , 
    .A3 ( ctmn_6826 ) , .A4 ( port0_i_port_fifo_N41 ) , .A5 ( ctmn_6827 ) , 
    .Y ( ctmn_6828 ) ) ;
INVX1_HVT phfnr_buf_1013 ( .A ( ctmn_6790 ) , .Y ( phfnn_332 ) ) ;
INVX0_HVT phfnr_buf_1015 ( .A ( phfnn_196 ) , .Y ( phfnn_334 ) ) ;
AO22X1_RVT ctmi_7449 ( .A1 ( ctmn_6689 ) , .A2 ( port0_i_port_fifo_N39 ) , 
    .A3 ( phfnn_177 ) , .A4 ( port0_i_port_fifo_N38 ) , .Y ( ctmn_6827 ) ) ;
NAND4X0_RVT ctmi_7450 ( .A1 ( ctmn_6825 ) , .A2 ( port0_i_port_fifo_N35 ) , 
    .A3 ( phfnn_177 ) , .A4 ( port0_i_port_fifo_N37 ) , .Y ( ctmn_6829 ) ) ;
MUX21X1_RVT ctmi_1026 ( .A1 ( ctmn_341 ) , .A2 ( ctmn_6920 ) , 
    .S0 ( port1_i_port_fifo_fifo_count[0] ) , .Y ( clkgt_enable_net_6 ) ) ;
XNOR2X1_RVT ctmi_7452 ( .A1 ( port0_i_port_fifo_N39 ) , 
    .A2 ( port0_i_port_fifo_N41 ) , .Y ( ctmn_6830 ) ) ;
OR2X1_RVT ctmi_7453 ( .A1 ( port0_i_port_fifo_N39 ) , 
    .A2 ( port0_i_port_fifo_N41 ) , .Y ( ctmn_6831 ) ) ;
INVX0_HVT phfnr_buf_1016 ( .A ( phfnn_197 ) , .Y ( phfnn_335 ) ) ;
NAND2X0_RVT ctmi_7455 ( .A1 ( ctmn_6837 ) , .A2 ( phfnn_198 ) , 
    .Y ( port0_i_port_fifo_N21 ) ) ;
INVX0_HVT phfnr_buf_1017 ( .A ( phfnn_195 ) , .Y ( phfnn_336 ) ) ;
INVX0_HVT phfnr_buf_1018 ( .A ( phfnn_198 ) , .Y ( phfnn_337 ) ) ;
OA221X1_RVT ctmi_7458 ( .A1 ( port2_i_port_fifo_mem[98] ) , 
    .A2 ( ctmn_6629 ) , .A3 ( ctmn_6636 ) , 
    .A4 ( port2_i_port_fifo_mem[34] ) , .A5 ( ctmn_6841 ) , 
    .Y ( port2_i_port_fifo_N39 ) ) ;
OA221X1_RVT ctmi_7459 ( .A1 ( port2_i_port_fifo_mem[66] ) , 
    .A2 ( ctmn_6630 ) , .A3 ( ctmn_6635 ) , 
    .A4 ( port2_i_port_fifo_mem[18] ) , .A5 ( ctmn_6840_CDR1 ) , 
    .Y ( ctmn_6841 ) ) ;
AO22X1_RVT ctmi_7940 ( .A1 ( phfnn_311 ) , 
    .A2 ( port3_i_port_fifo_mem[121] ) , .A3 ( phfnn_307 ) , 
    .A4 ( port3_i_port_fifo_mem[89] ) , .Y ( ctmn_7147 ) ) ;
AO221X1_RVT ctmi_7941 ( .A1 ( phfnn_309 ) , 
    .A2 ( port3_i_port_fifo_mem[106] ) , .A3 ( phfnn_310 ) , 
    .A4 ( port3_i_port_fifo_mem[42] ) , .A5 ( ctmn_7152 ) , 
    .Y ( port3_i_port_fifo_N31 ) ) ;
OA221X1_RVT ctmi_7460 ( .A1 ( ctmn_6627 ) , 
    .A2 ( port2_i_port_fifo_mem[82] ) , .A3 ( port2_i_port_fifo_mem[114] ) , 
    .A4 ( ctmn_6632 ) , .A5 ( ctmn_6839_CDR1 ) , .Y ( ctmn_6840_CDR1 ) ) ;
OA22X1_RVT ctmi_7461 ( .A1 ( port2_i_port_fifo_mem[50] ) , .A2 ( ctmn_6633 ) , 
    .A3 ( ctmn_6634 ) , .A4 ( port2_i_port_fifo_mem[2] ) , 
    .Y ( ctmn_6839_CDR1 ) ) ;
OA221X1_RVT ctmi_7462 ( .A1 ( ctmn_6636 ) , 
    .A2 ( port2_i_port_fifo_mem[35] ) , .A3 ( port2_i_port_fifo_mem[99] ) , 
    .A4 ( ctmn_6629 ) , .A5 ( ctmn_6844_CDR1 ) , 
    .Y ( port2_i_port_fifo_N38 ) ) ;
OA221X1_RVT ctmi_7463 ( .A1 ( ctmn_6634 ) , .A2 ( port2_i_port_fifo_mem[3] ) , 
    .A3 ( port2_i_port_fifo_mem[67] ) , .A4 ( ctmn_6630 ) , 
    .A5 ( ctmn_6843_CDR1 ) , .Y ( ctmn_6844_CDR1 ) ) ;
OA221X1_RVT ctmi_7464 ( .A1 ( ctmn_6627 ) , 
    .A2 ( port2_i_port_fifo_mem[83] ) , .A3 ( port2_i_port_fifo_mem[115] ) , 
    .A4 ( ctmn_6632 ) , .A5 ( ctmn_6842_CDR1 ) , .Y ( ctmn_6843_CDR1 ) ) ;
OA22X1_RVT ctmi_7465 ( .A1 ( ctmn_6635 ) , .A2 ( port2_i_port_fifo_mem[19] ) , 
    .A3 ( port2_i_port_fifo_mem[51] ) , .A4 ( ctmn_6633 ) , 
    .Y ( ctmn_6842_CDR1 ) ) ;
OA221X1_RVT ctmi_7466 ( .A1 ( port2_i_port_fifo_mem[97] ) , 
    .A2 ( ctmn_6629 ) , .A3 ( ctmn_6636 ) , 
    .A4 ( port2_i_port_fifo_mem[33] ) , .A5 ( ctmn_6847 ) , 
    .Y ( port2_i_port_fifo_N40 ) ) ;
OA221X1_RVT ctmi_7467 ( .A1 ( ctmn_6634 ) , .A2 ( port2_i_port_fifo_mem[1] ) , 
    .A3 ( port2_i_port_fifo_mem[65] ) , .A4 ( ctmn_6630 ) , 
    .A5 ( ctmn_6846 ) , .Y ( ctmn_6847 ) ) ;
AO221X1_RVT ctmi_7942 ( .A1 ( phfnn_284 ) , 
    .A2 ( port3_i_port_fifo_mem[74] ) , .A3 ( phfnn_286 ) , 
    .A4 ( port3_i_port_fifo_mem[10] ) , .A5 ( ctmn_7151 ) , .Y ( ctmn_7152 ) ) ;
OA221X1_RVT ctmi_7468 ( .A1 ( ctmn_6627 ) , 
    .A2 ( port2_i_port_fifo_mem[81] ) , .A3 ( port2_i_port_fifo_mem[113] ) , 
    .A4 ( ctmn_6632 ) , .A5 ( ctmn_6845_CDR1 ) , .Y ( ctmn_6846 ) ) ;
OA221X1_RVT ctmi_7522 ( .A1 ( ctmn_6618 ) , 
    .A2 ( port3_i_port_fifo_mem[34] ) , .A3 ( port3_i_port_fifo_mem[98] ) , 
    .A4 ( ctmn_6614 ) , .A5 ( ctmn_6890_CDR1 ) , 
    .Y ( port3_i_port_fifo_N39 ) ) ;
OA22X1_RVT ctmi_7469 ( .A1 ( ctmn_6635 ) , .A2 ( port2_i_port_fifo_mem[17] ) , 
    .A3 ( port2_i_port_fifo_mem[49] ) , .A4 ( ctmn_6633 ) , 
    .Y ( ctmn_6845_CDR1 ) ) ;
OA221X1_RVT ctmi_7470 ( .A1 ( ctmn_6629 ) , 
    .A2 ( port2_i_port_fifo_mem[96] ) , .A3 ( ctmn_6636 ) , 
    .A4 ( port2_i_port_fifo_mem[32] ) , .A5 ( ctmn_6850_CDR1 ) , 
    .Y ( port2_i_port_fifo_N41 ) ) ;
OA221X1_RVT ctmi_7471 ( .A1 ( port2_i_port_fifo_mem[64] ) , 
    .A2 ( ctmn_6630 ) , .A3 ( port2_i_port_fifo_mem[112] ) , 
    .A4 ( ctmn_6632 ) , .A5 ( ctmn_6849_CDR1 ) , .Y ( ctmn_6850_CDR1 ) ) ;
OA221X1_RVT ctmi_7472 ( .A1 ( ctmn_6634 ) , .A2 ( port2_i_port_fifo_mem[0] ) , 
    .A3 ( port2_i_port_fifo_mem[80] ) , .A4 ( ctmn_6627 ) , 
    .A5 ( ctmn_6848_CDR1 ) , .Y ( ctmn_6849_CDR1 ) ) ;
OA22X1_RVT ctmi_7473 ( .A1 ( ctmn_6635 ) , .A2 ( port2_i_port_fifo_mem[16] ) , 
    .A3 ( port2_i_port_fifo_mem[48] ) , .A4 ( ctmn_6633 ) , 
    .Y ( ctmn_6848_CDR1 ) ) ;
AND2X1_RVT ctmi_7474 ( .A1 ( phfnn_278 ) , .A2 ( ctmn_6861 ) , 
    .Y ( port2_i_next_state[1] ) ) ;
MUX21X1_RVT ctmi_7475 ( .A1 ( ctmn_6767 ) , .A2 ( port2_i_current_state[1] ) , 
    .S0 ( port2_i_current_state[0] ) , .Y ( ctmn_6851 ) ) ;
AO221X1_RVT ctmi_7943 ( .A1 ( phfnn_308 ) , 
    .A2 ( port3_i_port_fifo_mem[26] ) , .A3 ( phfnn_285 ) , 
    .A4 ( port3_i_port_fifo_mem[58] ) , .A5 ( ctmn_7150 ) , .Y ( ctmn_7151 ) ) ;
AO221X1_RVT ctmi_1019 ( .A1 ( ctmn_6749 ) , .A2 ( ctmn_6749 ) , 
    .A3 ( ctmn_6828 ) , .A4 ( ctmn_6829 ) , .A5 ( ctmn_338 ) , 
    .Y ( ctmn_6833 ) ) ;
NAND3X0_RVT ctmi_7477 ( .A1 ( port2_i_current_state[0] ) , .A2 ( ctmn_6767 ) , 
    .A3 ( ctmn_6860 ) , .Y ( ctmn_6861 ) ) ;
MUX21X1_RVT ctmi_1030 ( .A1 ( ctmn_343 ) , .A2 ( ctmn_6922 ) , 
    .S0 ( port2_i_port_fifo_fifo_count[0] ) , .Y ( clkgt_enable_net_12 ) ) ;
AO221X1_RVT ctmi_7479 ( .A1 ( phfnn_324 ) , .A2 ( port2_i_port_fifo_N40 ) , 
    .A3 ( ctmn_6763 ) , .A4 ( port2_i_port_fifo_N41 ) , .A5 ( ctmn_6854 ) , 
    .Y ( ctmn_6855 ) ) ;
MUX41X1_RVT ctmi_1020 ( .A1 ( ctmn_6830 ) , .A3 ( ctmn_6831 ) , 
    .A2 ( ctmn_6831 ) , .A4 ( port0_i_port_fifo_N38 ) , 
    .S0 ( port0_i_port_fifo_N38 ) , .S1 ( port0_i_port_fifo_N40 ) , 
    .Y ( ctmn_338 ) ) ;
AO22X1_RVT ctmi_7481 ( .A1 ( phfnn_325 ) , .A2 ( port2_i_port_fifo_N39 ) , 
    .A3 ( phfnn_326 ) , .A4 ( port2_i_port_fifo_N38 ) , .Y ( ctmn_6854 ) ) ;
NAND4X0_RVT ctmi_7482 ( .A1 ( phfnn_324 ) , .A2 ( port2_i_port_fifo_N35 ) , 
    .A3 ( phfnn_326 ) , .A4 ( port2_i_port_fifo_N37 ) , .Y ( ctmn_6856 ) ) ;
INVX0_HVT ctmi_1031 ( .A ( phfnn_334 ) , .Y ( ctmn_343 ) ) ;
AO22X1_RVT ctmi_7944 ( .A1 ( phfnn_311 ) , 
    .A2 ( port3_i_port_fifo_mem[122] ) , .A3 ( phfnn_307 ) , 
    .A4 ( port3_i_port_fifo_mem[90] ) , .Y ( ctmn_7150 ) ) ;
XNOR2X1_RVT ctmi_7484 ( .A1 ( port2_i_port_fifo_N39 ) , 
    .A2 ( port2_i_port_fifo_N41 ) , .Y ( ctmn_6857 ) ) ;
OR2X1_RVT ctmi_7485 ( .A1 ( port2_i_port_fifo_N39 ) , 
    .A2 ( port2_i_port_fifo_N41 ) , .Y ( ctmn_6858 ) ) ;
AO21X1_RVT ctmi_7486 ( .A1 ( ctmn_6851 ) , .A2 ( ctmn_6659 ) , 
    .A3 ( ctmn_6771 ) , .Y ( port2_i_next_state[0] ) ) ;
OA221X1_RVT ctmi_7487 ( .A1 ( ctmn_6583 ) , 
    .A2 ( port1_i_port_fifo_mem[99] ) , .A3 ( port1_i_port_fifo_mem[35] ) , 
    .A4 ( ctmn_6581 ) , .A5 ( ctmn_6864_CDR1 ) , 
    .Y ( port1_i_port_fifo_N38 ) ) ;
OA221X1_RVT ctmi_7488 ( .A1 ( ctmn_6585 ) , .A2 ( port1_i_port_fifo_mem[3] ) , 
    .A3 ( port1_i_port_fifo_mem[67] ) , .A4 ( ctmn_6584 ) , 
    .A5 ( ctmn_6863_CDR1 ) , .Y ( ctmn_6864_CDR1 ) ) ;
OA221X1_RVT ctmi_7489 ( .A1 ( ctmn_6589 ) , 
    .A2 ( port1_i_port_fifo_mem[115] ) , .A3 ( port1_i_port_fifo_mem[83] ) , 
    .A4 ( ctmn_6587 ) , .A5 ( ctmn_6862_CDR1 ) , .Y ( ctmn_6863_CDR1 ) ) ;
OA22X1_RVT ctmi_7490 ( .A1 ( ctmn_6591 ) , .A2 ( port1_i_port_fifo_mem[19] ) , 
    .A3 ( port1_i_port_fifo_mem[51] ) , .A4 ( ctmn_6590 ) , 
    .Y ( ctmn_6862_CDR1 ) ) ;
OA221X1_RVT ctmi_7491 ( .A1 ( ctmn_6583 ) , 
    .A2 ( port1_i_port_fifo_mem[98] ) , .A3 ( port1_i_port_fifo_mem[34] ) , 
    .A4 ( ctmn_6581 ) , .A5 ( ctmn_6867_CDR1 ) , 
    .Y ( port1_i_port_fifo_N39 ) ) ;
AO221X1_RVT ctmi_7961 ( .A1 ( phfnn_310 ) , 
    .A2 ( port3_i_port_fifo_mem[47] ) , .A3 ( phfnn_309 ) , 
    .A4 ( port3_i_port_fifo_mem[111] ) , .A5 ( ctmn_7167 ) , 
    .Y ( port3_i_port_fifo_N26 ) ) ;
NAND2X0_RVT ctmi_7774 ( .A1 ( ctmn_6654 ) , .A2 ( ctmn_6753 ) , 
    .Y ( top_arb_i_N21 ) ) ;
INVX0_HVT ctmi_7535 ( .A ( rst_n ) , .Y ( ctmn_6897 ) ) ;
NAND2X0_RVT ctmi_7536 ( .A1 ( port0_i_port_fifo_wr_ptr[0] ) , 
    .A2 ( ctmn_6895 ) , .Y ( ctmn_6898 ) ) ;
NAND2X0_RVT ctmi_7538 ( .A1 ( port0_i_port_fifo_wr_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_N16 ) , .Y ( ctmn_6899 ) ) ;
AND3X1_RVT ctmi_7540 ( .A1 ( ctmn_6894 ) , 
    .A2 ( port0_i_port_fifo_wr_ptr[0] ) , 
    .A3 ( port0_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_6900 ) ) ;
AND2X1_RVT ctmi_7542 ( .A1 ( port0_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( port0_i_port_fifo_N13 ) , .Y ( ctmn_6901 ) ) ;
NAND2X0_RVT ctmi_7546 ( .A1 ( port0_i_port_fifo_wr_ptr[0] ) , 
    .A2 ( port0_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_6902 ) ) ;
AO221X1_RVT ctmi_7945 ( .A1 ( phfnn_309 ) , 
    .A2 ( port3_i_port_fifo_mem[107] ) , .A3 ( phfnn_310 ) , 
    .A4 ( port3_i_port_fifo_mem[43] ) , .A5 ( ctmn_7155 ) , 
    .Y ( port3_i_port_fifo_N30 ) ) ;
AO221X1_RVT ctmi_7946 ( .A1 ( phfnn_284 ) , 
    .A2 ( port3_i_port_fifo_mem[75] ) , .A3 ( phfnn_286 ) , 
    .A4 ( port3_i_port_fifo_mem[11] ) , .A5 ( ctmn_7154 ) , .Y ( ctmn_7155 ) ) ;
AO221X1_RVT ctmi_7947 ( .A1 ( phfnn_308 ) , 
    .A2 ( port3_i_port_fifo_mem[27] ) , .A3 ( phfnn_285 ) , 
    .A4 ( port3_i_port_fifo_mem[59] ) , .A5 ( ctmn_7153 ) , .Y ( ctmn_7154 ) ) ;
AO22X1_RVT ctmi_7948 ( .A1 ( phfnn_311 ) , 
    .A2 ( port3_i_port_fifo_mem[123] ) , .A3 ( phfnn_307 ) , 
    .A4 ( port3_i_port_fifo_mem[91] ) , .Y ( ctmn_7153 ) ) ;
AO221X1_RVT ctmi_7949 ( .A1 ( phfnn_309 ) , 
    .A2 ( port3_i_port_fifo_mem[108] ) , .A3 ( phfnn_310 ) , 
    .A4 ( port3_i_port_fifo_mem[44] ) , .A5 ( ctmn_7158 ) , 
    .Y ( port3_i_port_fifo_N29 ) ) ;
AO221X1_RVT ctmi_7950 ( .A1 ( phfnn_284 ) , 
    .A2 ( port3_i_port_fifo_mem[76] ) , .A3 ( phfnn_286 ) , 
    .A4 ( port3_i_port_fifo_mem[12] ) , .A5 ( ctmn_7157 ) , .Y ( ctmn_7158 ) ) ;
OA221X1_RVT ctmi_7492 ( .A1 ( ctmn_6585 ) , .A2 ( port1_i_port_fifo_mem[2] ) , 
    .A3 ( port1_i_port_fifo_mem[66] ) , .A4 ( ctmn_6584 ) , 
    .A5 ( ctmn_6866_CDR1 ) , .Y ( ctmn_6867_CDR1 ) ) ;
CGLNPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_9 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port1_i_port_fifo_N7 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) ) ;
OR2X1_RVT ctmi_8129 ( .A1 ( ctmn_7058 ) , .A2 ( ctmn_7060 ) , 
    .Y ( ctmn_7209 ) ) ;
AND2X1_RVT ctmi_7777 ( .A1 ( ctmn_7024 ) , .A2 ( port1_i_port_fifo_N21 ) , 
    .Y ( port1_i_port_fifo_N25 ) ) ;
OA221X1_RVT ctmi_7493 ( .A1 ( ctmn_6589 ) , 
    .A2 ( port1_i_port_fifo_mem[114] ) , .A3 ( port1_i_port_fifo_mem[82] ) , 
    .A4 ( ctmn_6587 ) , .A5 ( ctmn_6865_CDR1 ) , .Y ( ctmn_6866_CDR1 ) ) ;
AO221X1_RVT ctmi_7951 ( .A1 ( phfnn_308 ) , 
    .A2 ( port3_i_port_fifo_mem[28] ) , .A3 ( phfnn_285 ) , 
    .A4 ( port3_i_port_fifo_mem[60] ) , .A5 ( ctmn_7156 ) , .Y ( ctmn_7157 ) ) ;
OA22X1_RVT ctmi_7494 ( .A1 ( ctmn_6591 ) , .A2 ( port1_i_port_fifo_mem[18] ) , 
    .A3 ( port1_i_port_fifo_mem[50] ) , .A4 ( ctmn_6590 ) , 
    .Y ( ctmn_6865_CDR1 ) ) ;
AO22X1_RVT ctmi_7952 ( .A1 ( phfnn_311 ) , 
    .A2 ( port3_i_port_fifo_mem[124] ) , .A3 ( phfnn_307 ) , 
    .A4 ( port3_i_port_fifo_mem[92] ) , .Y ( ctmn_7156 ) ) ;
OA221X1_RVT ctmi_7495 ( .A1 ( port1_i_port_fifo_mem[33] ) , 
    .A2 ( ctmn_6581 ) , .A3 ( ctmn_6583 ) , 
    .A4 ( port1_i_port_fifo_mem[97] ) , .A5 ( ctmn_6870_CDR1 ) , 
    .Y ( port1_i_port_fifo_N40 ) ) ;
OA221X1_RVT ctmi_7496 ( .A1 ( ctmn_6585 ) , .A2 ( port1_i_port_fifo_mem[1] ) , 
    .A3 ( port1_i_port_fifo_mem[65] ) , .A4 ( ctmn_6584 ) , 
    .A5 ( ctmn_6869_CDR1 ) , .Y ( ctmn_6870_CDR1 ) ) ;
OA221X1_RVT ctmi_7497 ( .A1 ( ctmn_6589 ) , 
    .A2 ( port1_i_port_fifo_mem[113] ) , .A3 ( port1_i_port_fifo_mem[81] ) , 
    .A4 ( ctmn_6587 ) , .A5 ( ctmn_6868_CDR1 ) , .Y ( ctmn_6869_CDR1 ) ) ;
OA22X1_RVT ctmi_7498 ( .A1 ( ctmn_6591 ) , .A2 ( port1_i_port_fifo_mem[17] ) , 
    .A3 ( port1_i_port_fifo_mem[49] ) , .A4 ( ctmn_6590 ) , 
    .Y ( ctmn_6868_CDR1 ) ) ;
MUX21X1_RVT ctmi_1021 ( .A1 ( ctmn_339 ) , .A2 ( ctmn_6837 ) , 
    .S0 ( port0_i_port_fifo_fifo_count[0] ) , .Y ( clkgt_enable_net_0 ) ) ;
OA221X1_RVT ctmi_7499 ( .A1 ( port1_i_port_fifo_mem[32] ) , 
    .A2 ( ctmn_6581 ) , .A3 ( ctmn_6583 ) , 
    .A4 ( port1_i_port_fifo_mem[96] ) , .A5 ( ctmn_6873 ) , 
    .Y ( port1_i_port_fifo_N41 ) ) ;
OA221X1_RVT ctmi_7500 ( .A1 ( port1_i_port_fifo_mem[64] ) , 
    .A2 ( ctmn_6584 ) , .A3 ( ctmn_6585 ) , .A4 ( port1_i_port_fifo_mem[0] ) , 
    .A5 ( ctmn_6872_CDR1 ) , .Y ( ctmn_6873 ) ) ;
OA221X1_RVT ctmi_7501 ( .A1 ( ctmn_6589 ) , 
    .A2 ( port1_i_port_fifo_mem[112] ) , .A3 ( port1_i_port_fifo_mem[80] ) , 
    .A4 ( ctmn_6587 ) , .A5 ( ctmn_6871 ) , .Y ( ctmn_6872_CDR1 ) ) ;
OA22X1_RVT ctmi_7502 ( .A1 ( port1_i_port_fifo_mem[48] ) , .A2 ( ctmn_6590 ) , 
    .A3 ( ctmn_6591 ) , .A4 ( port1_i_port_fifo_mem[16] ) , .Y ( ctmn_6871 ) ) ;
AO221X1_RVT ctmi_7953 ( .A1 ( phfnn_309 ) , 
    .A2 ( port3_i_port_fifo_mem[109] ) , .A3 ( phfnn_310 ) , 
    .A4 ( port3_i_port_fifo_mem[45] ) , .A5 ( ctmn_7161 ) , 
    .Y ( port3_i_port_fifo_N28 ) ) ;
NOR2X1_RVT ctmi_7503 ( .A1 ( ctmn_6875 ) , .A2 ( ctmn_6884 ) , 
    .Y ( port1_i_next_state[1] ) ) ;
AO22X1_RVT ctmi_7504 ( .A1 ( ctmn_6787 ) , .A2 ( ctmn_6874 ) , 
    .A3 ( port1_i_current_state[0] ) , .A4 ( port1_i_current_state[1] ) , 
    .Y ( ctmn_6875 ) ) ;
INVX0_HVT clock_gate_inv_648 ( 
    .A ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Y ( clock_gate_net_35 ) ) ;
AO222X1_RVT ctmi_7506 ( .A1 ( ctmn_6876 ) , .A2 ( ctmn_6879 ) , 
    .A3 ( ctmn_6876 ) , .A4 ( phfnn_328 ) , .A5 ( ctmn_6876 ) , 
    .A6 ( ctmn_6883 ) , .Y ( ctmn_6884 ) ) ;
AND2X1_RVT ctmi_7507 ( .A1 ( ctmn_6874 ) , .A2 ( port1_i_current_state[0] ) , 
    .Y ( ctmn_6876 ) ) ;
INVX0_HVT ctmi_1027 ( .A ( phfnn_336 ) , .Y ( ctmn_341 ) ) ;
XNOR2X1_RVT ctmi_7509 ( .A1 ( port1_i_port_fifo_N38 ) , 
    .A2 ( port1_i_port_fifo_N41 ) , .Y ( ctmn_6877 ) ) ;
OR2X1_RVT ctmi_7510 ( .A1 ( port1_i_port_fifo_N38 ) , 
    .A2 ( port1_i_port_fifo_N41 ) , .Y ( ctmn_6878 ) ) ;
AO221X1_RVT ctmi_7954 ( .A1 ( phfnn_284 ) , 
    .A2 ( port3_i_port_fifo_mem[77] ) , .A3 ( phfnn_286 ) , 
    .A4 ( port3_i_port_fifo_mem[13] ) , .A5 ( ctmn_7160 ) , .Y ( ctmn_7161 ) ) ;
INVX0_HVT ctmi_1022 ( .A ( phfnn_337 ) , .Y ( ctmn_339 ) ) ;
OA221X1_RVT ctmi_7512 ( .A1 ( ctmn_6881 ) , .A2 ( phfnn_182 ) , 
    .A3 ( ctmn_6881 ) , .A4 ( port1_i_port_fifo_N39 ) , .A5 ( ctmn_6882 ) , 
    .Y ( ctmn_6883 ) ) ;
AO222X1_RVT ctmi_7513 ( .A1 ( phfnn_319 ) , .A2 ( port1_i_port_fifo_N40 ) , 
    .A3 ( phfnn_320 ) , .A4 ( port1_i_port_fifo_N38 ) , .A5 ( phfnn_321 ) , 
    .A6 ( port1_i_port_fifo_N41 ) , .Y ( ctmn_6881 ) ) ;
NAND4X0_RVT ctmi_7514 ( .A1 ( phfnn_319 ) , .A2 ( port1_i_port_fifo_N35 ) , 
    .A3 ( phfnn_320 ) , .A4 ( port1_i_port_fifo_N37 ) , .Y ( ctmn_6882 ) ) ;
CGLNPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_10 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port1_i_port_fifo_N6 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) ) ;
OA21X1_RVT ctmi_7516 ( .A1 ( ctmn_6884 ) , .A2 ( phfnn_332 ) , 
    .A3 ( ctmn_6642 ) , .Y ( port1_i_port_fifo_N17 ) ) ;
MUX41X1_RVT ctmi_1023 ( .A1 ( ctmn_6877 ) , .A3 ( ctmn_6878 ) , 
    .A2 ( ctmn_6878 ) , .A4 ( port1_i_port_fifo_N39 ) , 
    .S0 ( port1_i_port_fifo_N39 ) , .S1 ( port1_i_port_fifo_N40 ) , 
    .Y ( ctmn_6879 ) ) ;
MUX41X1_RVT ctmi_1025 ( .A1 ( ctmn_6857 ) , .A3 ( ctmn_6858 ) , 
    .A2 ( ctmn_6858 ) , .A4 ( port2_i_port_fifo_N38 ) , 
    .S0 ( port2_i_port_fifo_N38 ) , .S1 ( port2_i_port_fifo_N40 ) , 
    .Y ( ctmn_340 ) ) ;
AO221X1_RVT ctmi_7955 ( .A1 ( phfnn_308 ) , 
    .A2 ( port3_i_port_fifo_mem[29] ) , .A3 ( phfnn_285 ) , 
    .A4 ( port3_i_port_fifo_mem[61] ) , .A5 ( ctmn_7159 ) , .Y ( ctmn_7160 ) ) ;
NAND2X0_RVT ctmi_7519 ( .A1 ( phfnn_330 ) , .A2 ( ctmn_6861 ) , 
    .Y ( ctmn_6886 ) ) ;
AO221X1_RVT ctmi_1028 ( .A1 ( ctmn_6778 ) , .A2 ( ctmn_6778 ) , 
    .A3 ( ctmn_6911 ) , .A4 ( ctmn_6912 ) , .A5 ( ctmn_342 ) , 
    .Y ( ctmn_6916 ) ) ;
INVX0_HVT clock_gate_inv_649 ( 
    .A ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Y ( clock_gate_net_36 ) ) ;
OA221X1_RVT ctmi_7523 ( .A1 ( ctmn_6621 ) , .A2 ( port3_i_port_fifo_mem[2] ) , 
    .A3 ( port3_i_port_fifo_mem[66] ) , .A4 ( ctmn_6619 ) , 
    .A5 ( ctmn_6889_CDR1 ) , .Y ( ctmn_6890_CDR1 ) ) ;
OA221X1_RVT ctmi_7524 ( .A1 ( ctmn_6620 ) , 
    .A2 ( port3_i_port_fifo_mem[50] ) , .A3 ( port3_i_port_fifo_mem[18] ) , 
    .A4 ( ctmn_6615 ) , .A5 ( ctmn_6888 ) , .Y ( ctmn_6889_CDR1 ) ) ;
OA22X1_RVT ctmi_7525 ( .A1 ( port3_i_port_fifo_mem[114] ) , 
    .A2 ( ctmn_6617 ) , .A3 ( ctmn_6612 ) , 
    .A4 ( port3_i_port_fifo_mem[82] ) , .Y ( ctmn_6888 ) ) ;
OA221X1_RVT ctmi_7526 ( .A1 ( ctmn_6618 ) , 
    .A2 ( port3_i_port_fifo_mem[35] ) , .A3 ( port3_i_port_fifo_mem[99] ) , 
    .A4 ( ctmn_6614 ) , .A5 ( ctmn_6893_CDR1 ) , 
    .Y ( port3_i_port_fifo_N38 ) ) ;
AO22X1_RVT ctmi_7956 ( .A1 ( phfnn_311 ) , 
    .A2 ( port3_i_port_fifo_mem[125] ) , .A3 ( phfnn_307 ) , 
    .A4 ( port3_i_port_fifo_mem[93] ) , .Y ( ctmn_7159 ) ) ;
AO221X1_RVT ctmi_7957 ( .A1 ( phfnn_309 ) , 
    .A2 ( port3_i_port_fifo_mem[110] ) , .A3 ( phfnn_310 ) , 
    .A4 ( port3_i_port_fifo_mem[46] ) , .A5 ( ctmn_7164 ) , 
    .Y ( port3_i_port_fifo_N27 ) ) ;
AO221X1_RVT ctmi_7958 ( .A1 ( phfnn_284 ) , 
    .A2 ( port3_i_port_fifo_mem[78] ) , .A3 ( phfnn_286 ) , 
    .A4 ( port3_i_port_fifo_mem[14] ) , .A5 ( ctmn_7163 ) , .Y ( ctmn_7164 ) ) ;
AO221X1_RVT ctmi_7959 ( .A1 ( phfnn_285 ) , 
    .A2 ( port3_i_port_fifo_mem[62] ) , .A3 ( phfnn_308 ) , 
    .A4 ( port3_i_port_fifo_mem[30] ) , .A5 ( ctmn_7162 ) , .Y ( ctmn_7163 ) ) ;
AO22X1_RVT ctmi_7960 ( .A1 ( phfnn_311 ) , 
    .A2 ( port3_i_port_fifo_mem[126] ) , .A3 ( phfnn_307 ) , 
    .A4 ( port3_i_port_fifo_mem[94] ) , .Y ( ctmn_7162 ) ) ;
OA221X1_RVT ctmi_7527 ( .A1 ( port3_i_port_fifo_mem[19] ) , 
    .A2 ( ctmn_6615 ) , .A3 ( port3_i_port_fifo_mem[67] ) , 
    .A4 ( ctmn_6619 ) , .A5 ( ctmn_6892_CDR1 ) , .Y ( ctmn_6893_CDR1 ) ) ;
OA221X1_RVT ctmi_7528 ( .A1 ( ctmn_6620 ) , 
    .A2 ( port3_i_port_fifo_mem[51] ) , .A3 ( ctmn_6621 ) , 
    .A4 ( port3_i_port_fifo_mem[3] ) , .A5 ( ctmn_6891_CDR1 ) , 
    .Y ( ctmn_6892_CDR1 ) ) ;
OA22X1_RVT ctmi_7529 ( .A1 ( ctmn_6612 ) , .A2 ( port3_i_port_fifo_mem[83] ) , 
    .A3 ( port3_i_port_fifo_mem[115] ) , .A4 ( ctmn_6617 ) , 
    .Y ( ctmn_6891_CDR1 ) ) ;
AND3X1_HVT ctmi_7530 ( .A1 ( ctmn_6894 ) , .A2 ( port0_i_port_fifo_N13 ) , 
    .A3 ( ctmn_6896 ) , .Y ( port0_i_port_fifo_N11 ) ) ;
AO221X1_RVT ctmi_7962 ( .A1 ( phfnn_284 ) , 
    .A2 ( port3_i_port_fifo_mem[79] ) , .A3 ( phfnn_286 ) , 
    .A4 ( port3_i_port_fifo_mem[15] ) , .A5 ( ctmn_7166 ) , .Y ( ctmn_7167 ) ) ;
CGLNPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_11 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port1_i_port_fifo_N5 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) ) ;
AND3X1_HVT ctmi_7532 ( .A1 ( ctmn_6895 ) , .A2 ( port0_i_port_fifo_N16 ) , 
    .A3 ( rst_n ) , .Y ( ctmn_6896 ) ) ;
INVX0_HVT clock_gate_inv_650 ( 
    .A ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Y ( clock_gate_net_37 ) ) ;
NOR4X0_HVT ctmi_7534 ( .A1 ( ctmn_6897 ) , .A2 ( ctmn_6898 ) , 
    .A3 ( ctmn_6734 ) , .A4 ( port0_i_port_fifo_wr_ptr[2] ) , 
    .Y ( port0_i_port_fifo_N9 ) ) ;
NOR4X0_HVT ctmi_7537 ( .A1 ( ctmn_6897 ) , .A2 ( ctmn_6899 ) , 
    .A3 ( ctmn_6734 ) , .A4 ( port0_i_port_fifo_wr_ptr[2] ) , 
    .Y ( port0_i_port_fifo_N7 ) ) ;
AO221X1_RVT ctmi_7963 ( .A1 ( phfnn_308 ) , 
    .A2 ( port3_i_port_fifo_mem[31] ) , .A3 ( phfnn_285 ) , 
    .A4 ( port3_i_port_fifo_mem[63] ) , .A5 ( ctmn_7165 ) , .Y ( ctmn_7166 ) ) ;
AND3X1_HVT ctmi_7539 ( .A1 ( rst_n ) , .A2 ( port0_i_port_fifo_N13 ) , 
    .A3 ( ctmn_6900 ) , .Y ( port0_i_port_fifo_N6 ) ) ;
AND2X1_HVT ctmi_7541 ( .A1 ( ctmn_6901 ) , .A2 ( ctmn_6896 ) , 
    .Y ( port0_i_port_fifo_N5 ) ) ;
AND4X1_HVT ctmi_7543 ( .A1 ( ctmn_6895 ) , .A2 ( rst_n ) , 
    .A3 ( port0_i_port_fifo_wr_ptr[0] ) , .A4 ( ctmn_6901 ) , 
    .Y ( port0_i_port_fifo_N4 ) ) ;
OA221X1_RVT ctmi_7549 ( .A1 ( ctmn_6612 ) , 
    .A2 ( port3_i_port_fifo_mem[81] ) , .A3 ( ctmn_6621 ) , 
    .A4 ( port3_i_port_fifo_mem[1] ) , .A5 ( ctmn_6903_CDR1 ) , 
    .Y ( ctmn_6904_CDR1 ) ) ;
OA22X1_RVT ctmi_7550 ( .A1 ( port3_i_port_fifo_mem[113] ) , 
    .A2 ( ctmn_6617 ) , .A3 ( port3_i_port_fifo_mem[49] ) , 
    .A4 ( ctmn_6620 ) , .Y ( ctmn_6903_CDR1 ) ) ;
AO22X1_RVT ctmi_7964 ( .A1 ( phfnn_311 ) , 
    .A2 ( port3_i_port_fifo_mem[127] ) , .A3 ( phfnn_307 ) , 
    .A4 ( port3_i_port_fifo_mem[95] ) , .Y ( ctmn_7165 ) ) ;
OA221X1_RVT ctmi_7551 ( .A1 ( port3_i_port_fifo_mem[16] ) , 
    .A2 ( ctmn_6615 ) , .A3 ( ctmn_6619 ) , 
    .A4 ( port3_i_port_fifo_mem[64] ) , .A5 ( ctmn_6908_CDR1 ) , 
    .Y ( port3_i_port_fifo_N41 ) ) ;
OA221X1_RVT ctmi_7552 ( .A1 ( ctmn_6618 ) , 
    .A2 ( port3_i_port_fifo_mem[32] ) , .A3 ( port3_i_port_fifo_mem[96] ) , 
    .A4 ( ctmn_6614 ) , .A5 ( ctmn_6907_CDR1 ) , .Y ( ctmn_6908_CDR1 ) ) ;
OA221X1_RVT ctmi_7553 ( .A1 ( ctmn_6612 ) , 
    .A2 ( port3_i_port_fifo_mem[80] ) , .A3 ( port3_i_port_fifo_mem[48] ) , 
    .A4 ( ctmn_6620 ) , .A5 ( ctmn_6906_CDR1 ) , .Y ( ctmn_6907_CDR1 ) ) ;
OA22X1_RVT ctmi_7554 ( .A1 ( ctmn_6621 ) , .A2 ( port3_i_port_fifo_mem[0] ) , 
    .A3 ( port3_i_port_fifo_mem[112] ) , .A4 ( ctmn_6617 ) , 
    .Y ( ctmn_6906_CDR1 ) ) ;
CGLNPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_12 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port1_i_port_fifo_N4 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) ) ;
NAND2X0_RVT ctmi_7557 ( .A1 ( phfnn_331 ) , .A2 ( ctmn_6917 ) , 
    .Y ( ctmn_6918 ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[125] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[124] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[123] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[122] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[121] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[120] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[119] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[118] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[117] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[116] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[115] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[114] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[113] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[112] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[111] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[110] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[109] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[108] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[107] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[106] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[105] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[104] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[103] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[102] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[101] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[100] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[99] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[98] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[97] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_39 ) , 
    .Q ( port1_i_port_fifo_mem[96] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[95] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[94] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[93] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[92] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[91] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[90] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[89] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[88] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[87] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[86] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[85] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[84] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[83] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[82] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[81] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_38 ) , 
    .Q ( port1_i_port_fifo_mem[80] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[79] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[78] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[77] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[76] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[75] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[74] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[73] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[72] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[71] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[70] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[69] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[68] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[67] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[66] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[65] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_37 ) , 
    .Q ( port1_i_port_fifo_mem[64] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[63] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[62] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[61] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[60] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[59] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[58] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[57] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[56] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[55] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[54] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[53] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[52] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[51] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[50] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[49] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_36 ) , 
    .Q ( port1_i_port_fifo_mem[48] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[47] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[46] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[45] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[44] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[43] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[42] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[41] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[40] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[39] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[38] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[37] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[36] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[35] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[34] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[33] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_35 ) , 
    .Q ( port1_i_port_fifo_mem[32] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[31] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[30] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[29] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[28] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[27] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[26] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[25] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[24] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[23] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[22] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[21] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[20] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[19] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[18] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[17] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_34 ) , 
    .Q ( port1_i_port_fifo_mem[16] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[15] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[14] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[13] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[12] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[11] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[10] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[9] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[8] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[7] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[6] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[5] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[4] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[3] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[2] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[1] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_33 ) , 
    .Q ( port1_i_port_fifo_mem[0] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[127] ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel3_reg_0_ ( .D ( top_arb_i_N20 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel3[0] ) , 
    .QN ( ctmn_6988 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_rd_ptr_reg_2_ ( .D ( port1_i_port_fifo_N18 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_16 ) , 
    .RSTB ( rst_n ) , .Q ( port1_i_port_fifo_rd_ptr[2] ) , .QN ( ctmn_6582 ) ) ;
NAND3X0_RVT ctmi_7558 ( .A1 ( port3_i_current_state[0] ) , .A2 ( ctmn_6777 ) , 
    .A3 ( ctmn_6916 ) , .Y ( ctmn_6917 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_rd_ptr_reg_0_ ( .D ( port1_i_port_fifo_N20 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_16 ) , 
    .RSTB ( rst_n ) , .Q ( port1_i_port_fifo_rd_ptr[0] ) , 
    .QN ( port1_i_port_fifo_N20 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_fifo_count_reg_3_ ( 
    .D ( port1_i_port_fifo_N22 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_11 ) , .RSTB ( rst_n ) , 
    .Q ( port1_i_port_fifo_fifo_count[3] ) , .QN ( ctmn_6641 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_rd_ptr_reg_1_ ( .D ( port1_i_port_fifo_N19 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_16 ) , 
    .RSTB ( rst_n ) , .Q ( port1_i_port_fifo_rd_ptr[1] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_fifo_count_reg_2_ ( 
    .D ( port1_i_port_fifo_N23 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_11 ) , .RSTB ( rst_n ) , 
    .Q ( port1_i_port_fifo_fifo_count[2] ) , .QN ( ctmn_7047 ) ) ;
SDFFASX1_HVT port1_i_port_fifo_fifo_count_reg_1_ ( .D ( ctmn_7208 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_11 ) , 
    .SETB ( rst_n ) , .QN ( port1_i_port_fifo_fifo_count[1] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_fifo_count_reg_0_ ( 
    .D ( port1_i_port_fifo_N25 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_17 ) , .RSTB ( rst_n ) , 
    .Q ( port1_i_port_fifo_fifo_count[0] ) , .QN ( ctmn_7024 ) ) ;
SDFFARX1_HVT port2_i_current_state_reg_1_ ( .D ( port2_i_next_state[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_current_state[1] ) , .QN ( ctmn_6767 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_14_ ( 
    .D ( port1_i_port_fifo_N27 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[14] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_13_ ( 
    .D ( port1_i_port_fifo_N28 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[13] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_12_ ( 
    .D ( port1_i_port_fifo_N29 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[12] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_11_ ( 
    .D ( port1_i_port_fifo_N30 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[11] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_10_ ( 
    .D ( port1_i_port_fifo_N31 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[10] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_9_ ( 
    .D ( port1_i_port_fifo_N32 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[9] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_8_ ( 
    .D ( port1_i_port_fifo_N33 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[8] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_7_ ( 
    .D ( port1_i_port_fifo_N34 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[7] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_6_ ( 
    .D ( port1_i_port_fifo_N35 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[6] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_5_ ( 
    .D ( port1_i_port_fifo_N36 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[5] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_4_ ( 
    .D ( port1_i_port_fifo_N37 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[4] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_3_ ( 
    .D ( port1_i_port_fifo_N38 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[3] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_2_ ( 
    .D ( port1_i_port_fifo_N39 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[2] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_1_ ( 
    .D ( port1_i_port_fifo_N40 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[1] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_0_ ( 
    .D ( port1_i_port_fifo_N41 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[0] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_wr_ptr_reg_1_ ( .D ( port2_i_port_fifo_N15 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_21 ) , 
    .RSTB ( rst_n ) , .Q ( port2_i_port_fifo_wr_ptr[1] ) , .QN ( ctmn_7010 ) ) ;
MUX41X1_RVT ctmi_1029 ( .A1 ( ctmn_6913 ) , .A3 ( ctmn_6914 ) , 
    .A2 ( ctmn_6914 ) , .A4 ( port3_i_port_fifo_N38 ) , 
    .S0 ( port3_i_port_fifo_N38 ) , .S1 ( port3_i_port_fifo_N40 ) , 
    .Y ( ctmn_342 ) ) ;
MUX21X1_RVT ctmi_1032 ( .A1 ( ctmn_344 ) , .A2 ( ctmn_6924 ) , 
    .S0 ( HFSNET_4 ) , .Y ( clkgt_enable_net_58 ) ) ;
AO221X1_RVT ctmi_7560 ( .A1 ( phfnn_313 ) , .A2 ( port3_i_port_fifo_N40 ) , 
    .A3 ( ctmn_6909 ) , .A4 ( port3_i_port_fifo_N41 ) , .A5 ( ctmn_6910 ) , 
    .Y ( ctmn_6911 ) ) ;
INVX0_HVT ctmi_1033 ( .A ( phfnn_335 ) , .Y ( ctmn_344 ) ) ;
AO22X1_RVT ctmi_7562 ( .A1 ( phfnn_314 ) , .A2 ( port3_i_port_fifo_N39 ) , 
    .A3 ( phfnn_327 ) , .A4 ( port3_i_port_fifo_N38 ) , .Y ( ctmn_6910 ) ) ;
NAND4X0_RVT ctmi_7563 ( .A1 ( phfnn_313 ) , .A2 ( port3_i_port_fifo_N35 ) , 
    .A3 ( phfnn_327 ) , .A4 ( port3_i_port_fifo_N37 ) , .Y ( ctmn_6912 ) ) ;
INVX0_HVT ctmi_184 ( 
    .A ( clk_clock_gate_port0_i_port_fifo_fifo_count_reg_clock_gate_port0_i_port_fifo_fifo_count_reg_29 ) , 
    .Y ( clock_gate_net_5 ) ) ;
XNOR2X1_RVT ctmi_7565 ( .A1 ( port3_i_port_fifo_N39 ) , 
    .A2 ( port3_i_port_fifo_N41 ) , .Y ( ctmn_6913 ) ) ;
OR2X1_RVT ctmi_7566 ( .A1 ( port3_i_port_fifo_N39 ) , 
    .A2 ( port3_i_port_fifo_N41 ) , .Y ( ctmn_6914 ) ) ;
AO22X1_RVT ctmi_7974 ( .A1 ( phfnn_293 ) , .A2 ( port0_i_port_fifo_mem[88] ) , 
    .A3 ( phfnn_294 ) , .A4 ( port0_i_port_fifo_mem[120] ) , 
    .Y ( ctmn_7176 ) ) ;
INVX0_HVT ctmi_185 ( .A ( ctmn_6953 ) , .Y ( ctmn_6954 ) ) ;
INVX0_HVT ctmi_186 ( .A ( ctmn_6955 ) , .Y ( ctmn_6956 ) ) ;
AO221X1_RVT ctmi_7977 ( .A1 ( phfnn_292 ) , 
    .A2 ( port0_i_port_fifo_mem[25] ) , .A3 ( phfnn_272 ) , 
    .A4 ( port0_i_port_fifo_mem[73] ) , .A5 ( ctmn_7181 ) , 
    .Y ( port0_i_port_fifo_N32 ) ) ;
AO221X1_RVT ctmi_7978 ( .A1 ( phfnn_290 ) , 
    .A2 ( port0_i_port_fifo_mem[105] ) , .A3 ( phfnn_291 ) , 
    .A4 ( port0_i_port_fifo_mem[41] ) , .A5 ( ctmn_7180 ) , .Y ( ctmn_7181 ) ) ;
INVX0_HVT ctmi_187 ( 
    .A ( clk_clock_gate_port1_i_port_fifo_fifo_count_reg_clock_gate_port1_i_port_fifo_fifo_count_reg_30 ) , 
    .Y ( clock_gate_net_11 ) ) ;
INVX0_HVT clock_gate_inv_659 ( 
    .A ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Y ( clock_gate_net_46 ) ) ;
AO221X1_RVT ctmi_7655 ( .A1 ( fifo_data_out0[6] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[6] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6959 ) , 
    .Y ( MXIOP_46_0 ) ) ;
AO22X1_RVT ctmi_7656 ( .A1 ( fifo_data_out1[6] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( fifo_data_out2[6] ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6959 ) ) ;
AO221X1_RVT ctmi_7979 ( .A1 ( phfnn_274 ) , 
    .A2 ( port0_i_port_fifo_mem[57] ) , .A3 ( phfnn_273 ) , 
    .A4 ( port0_i_port_fifo_mem[9] ) , .A5 ( ctmn_7179 ) , .Y ( ctmn_7180 ) ) ;
INVX0_HVT ctmi_7568 ( .A ( clk ) , .Y ( clock_gate_net_12 ) ) ;
AO22X1_RVT ctmi_7980 ( .A1 ( phfnn_293 ) , .A2 ( port0_i_port_fifo_mem[89] ) , 
    .A3 ( phfnn_294 ) , .A4 ( port0_i_port_fifo_mem[121] ) , 
    .Y ( ctmn_7179 ) ) ;
INVX0_HVT ctmi_7569 ( .A ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , 
    .Y ( clock_gate_net_13 ) ) ;
NAND2X0_RVT ctmi_7570 ( .A1 ( ctmn_6920 ) , .A2 ( phfnn_195 ) , 
    .Y ( port1_i_port_fifo_N21 ) ) ;
AO221X1_RVT ctmi_7981 ( .A1 ( phfnn_292 ) , 
    .A2 ( port0_i_port_fifo_mem[26] ) , .A3 ( phfnn_272 ) , 
    .A4 ( port0_i_port_fifo_mem[74] ) , .A5 ( ctmn_7184 ) , 
    .Y ( port0_i_port_fifo_N31 ) ) ;
AO221X1_RVT ctmi_7982 ( .A1 ( phfnn_290 ) , 
    .A2 ( port0_i_port_fifo_mem[106] ) , .A3 ( phfnn_291 ) , 
    .A4 ( port0_i_port_fifo_mem[42] ) , .A5 ( ctmn_7183 ) , .Y ( ctmn_7184 ) ) ;
NAND2X0_RVT ctmi_7571 ( .A1 ( port1_i_port_fifo_N17 ) , .A2 ( ctmn_6796 ) , 
    .Y ( ctmn_6920 ) ) ;
INVX0_HVT ctmi_188 ( .A ( port1_i_port_fifo_N13 ) , .Y ( ctmn_6796 ) ) ;
INVX0_HVT ctmi_7573 ( .A ( clk_clock_gate_port0_i_port_fifo_fifo_count_reg ) , 
    .Y ( clock_gate_net_14 ) ) ;
INVX0_HVT clock_gate_inv_651 ( 
    .A ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Y ( clock_gate_net_38 ) ) ;
INVX0_HVT ctmi_7575 ( .A ( clk_clock_gate_port0_i_port_fifo_wr_ptr_reg ) , 
    .Y ( clock_gate_net_15 ) ) ;
INVX0_HVT ctmi_7576 ( .A ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , 
    .Y ( clock_gate_net_16 ) ) ;
INVX0_HVT ctmi_7577 ( .A ( clk_clock_gate_port1_i_port_fifo_fifo_count_reg ) , 
    .Y ( clock_gate_net_17 ) ) ;
INVX0_HVT ctmi_7578 ( .A ( clk_clock_gate_port1_i_port_fifo_wr_ptr_reg ) , 
    .Y ( clock_gate_net_18 ) ) ;
AO221X1_RVT ctmi_7983 ( .A1 ( phfnn_273 ) , 
    .A2 ( port0_i_port_fifo_mem[10] ) , .A3 ( phfnn_274 ) , 
    .A4 ( port0_i_port_fifo_mem[58] ) , .A5 ( ctmn_7182 ) , .Y ( ctmn_7183 ) ) ;
INVX0_HVT ctmi_7579 ( .A ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , 
    .Y ( clock_gate_net_19 ) ) ;
NAND2X0_RVT ctmi_7580 ( .A1 ( ctmn_6922 ) , .A2 ( phfnn_196 ) , 
    .Y ( port2_i_port_fifo_N21 ) ) ;
NBUFFX4_HVT TDBUF_1034 ( .A ( port0_valid_out ) , .Y ( TDBUF_345 ) ) ;
NBUFFX4_HVT TDBUF_1035 ( .A ( port1_valid_out ) , .Y ( TDBUF_346 ) ) ;
INVX0_HVT ctmi_7583 ( .A ( clk_clock_gate_port2_i_port_fifo_fifo_count_reg ) , 
    .Y ( clock_gate_net_20 ) ) ;
CGLNPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_13 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port1_i_port_fifo_N3 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) ) ;
INVX0_HVT ctmi_7585 ( .A ( clk_clock_gate_port2_i_port_fifo_wr_ptr_reg ) , 
    .Y ( clock_gate_net_21 ) ) ;
INVX0_HVT ctmi_7586 ( .A ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , 
    .Y ( clock_gate_net_22 ) ) ;
AO22X1_RVT ctmi_7984 ( .A1 ( phfnn_293 ) , .A2 ( port0_i_port_fifo_mem[90] ) , 
    .A3 ( phfnn_294 ) , .A4 ( port0_i_port_fifo_mem[122] ) , 
    .Y ( ctmn_7182 ) ) ;
INVX0_HVT ctmi_7587 ( .A ( clk_clock_gate_port3_i_port_fifo_fifo_count_reg ) , 
    .Y ( clock_gate_net_23 ) ) ;
INVX0_HVT ctmi_7588 ( .A ( clk_clock_gate_port3_i_port_fifo_wr_ptr_reg ) , 
    .Y ( clock_gate_net_24 ) ) ;
NAND2X0_RVT ctmi_7589 ( .A1 ( ctmn_6924 ) , .A2 ( phfnn_197 ) , 
    .Y ( port3_i_port_fifo_N21 ) ) ;
INVX0_HVT ctmi_189 ( 
    .A ( clk_clock_gate_port2_i_port_fifo_fifo_count_reg_clock_gate_port2_i_port_fifo_fifo_count_reg_31 ) , 
    .Y ( clock_gate_net_57 ) ) ;
INVX0_HVT ctmi_190 ( 
    .A ( clk_clock_gate_port3_i_port_fifo_fifo_count_reg_clock_gate_port3_i_port_fifo_fifo_count_reg_32 ) , 
    .Y ( clock_gate_net_63 ) ) ;
NAND2X0_RVT ctmi_7592 ( .A1 ( ctmn_6775 ) , .A2 ( ctmn_6784 ) , 
    .Y ( top_arb_i_N28 ) ) ;
NAND2X0_RVT ctmi_7593 ( .A1 ( ctmn_6766 ) , .A2 ( ctmn_6775 ) , 
    .Y ( top_arb_i_N27 ) ) ;
AO221X1_RVT ctmi_7596 ( .A1 ( fifo_data_out0[8] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[8] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6927 ) , 
    .Y ( MXIOP_40_0 ) ) ;
AO22X1_RVT ctmi_7597 ( .A1 ( fifo_data_out1[8] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out2[8] ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6927 ) ) ;
AO221X1_RVT ctmi_7598 ( .A1 ( fifo_data_out0[7] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[7] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6928 ) , 
    .Y ( MXIOP_29_0 ) ) ;
AO22X1_RVT ctmi_7599 ( .A1 ( fifo_data_out1[7] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out2[7] ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6928 ) ) ;
AO221X1_RVT ctmi_7600 ( .A1 ( fifo_data_out0[6] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[6] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6929 ) , 
    .Y ( MXIOP_30_0 ) ) ;
AO22X1_RVT ctmi_7601 ( .A1 ( fifo_data_out1[6] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out2[6] ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6929 ) ) ;
AO221X1_RVT ctmi_7602 ( .A1 ( fifo_data_out0[5] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[5] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6930 ) , 
    .Y ( MXIOP_31_0 ) ) ;
AO22X1_RVT ctmi_7603 ( .A1 ( fifo_data_out1[5] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out2[5] ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6930 ) ) ;
AO221X1_RVT ctmi_7604 ( .A1 ( fifo_data_out0[4] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[4] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6931 ) , 
    .Y ( MXIOP_32_0 ) ) ;
AO22X1_RVT ctmi_7605 ( .A1 ( fifo_data_out1[4] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( HFSNET_2 ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6931 ) ) ;
AO221X1_RVT ctmi_7606 ( .A1 ( fifo_data_out0[3] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[3] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6932 ) , 
    .Y ( MXIOP_25_0 ) ) ;
AO221X1_RVT ctmi_7985 ( .A1 ( phfnn_292 ) , 
    .A2 ( port0_i_port_fifo_mem[27] ) , .A3 ( phfnn_272 ) , 
    .A4 ( port0_i_port_fifo_mem[75] ) , .A5 ( ctmn_7187 ) , 
    .Y ( port0_i_port_fifo_N30 ) ) ;
AO22X1_RVT ctmi_7607 ( .A1 ( fifo_data_out1[3] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out2[3] ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6932 ) ) ;
AO221X1_RVT ctmi_7631 ( .A1 ( fifo_data_out0[10] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[10] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6947 ) , 
    .Y ( MXIOP_54_0 ) ) ;
AO221X1_RVT ctmi_7608 ( .A1 ( fifo_data_out0[2] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[2] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6933 ) , 
    .Y ( MXIOP_26_0 ) ) ;
AO22X1_RVT ctmi_7609 ( .A1 ( fifo_data_out1[2] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out2[2] ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6933 ) ) ;
AO221X1_RVT ctmi_7610 ( .A1 ( fifo_data_out0[1] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[1] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6934 ) , 
    .Y ( MXIOP_27_0 ) ) ;
AO22X1_RVT ctmi_7611 ( .A1 ( fifo_data_out1[1] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out2[1] ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6934 ) ) ;
AO221X1_RVT ctmi_7612 ( .A1 ( fifo_data_out0[0] ) , .A2 ( ctmn_6803 ) , 
    .A3 ( fifo_data_out3[0] ) , .A4 ( ctmn_6804 ) , .A5 ( ctmn_6935 ) , 
    .Y ( MXIOP_28_0 ) ) ;
AO22X1_RVT ctmi_7613 ( .A1 ( fifo_data_out1[0] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( HFSNET_0 ) , .A4 ( ctmn_6806 ) , .Y ( ctmn_6935 ) ) ;
AND3X2_RVT ctmi_7620 ( .A1 ( ctmn_6936 ) , .A2 ( TDBUF_346 ) , 
    .A3 ( mux_sel1[0] ) , .Y ( ctmn_6940 ) ) ;
AO221X1_RVT ctmi_7986 ( .A1 ( phfnn_290 ) , 
    .A2 ( port0_i_port_fifo_mem[107] ) , .A3 ( phfnn_291 ) , 
    .A4 ( port0_i_port_fifo_mem[43] ) , .A5 ( ctmn_7186 ) , .Y ( ctmn_7187 ) ) ;
AO221X1_RVT ctmi_7987 ( .A1 ( phfnn_273 ) , 
    .A2 ( port0_i_port_fifo_mem[11] ) , .A3 ( phfnn_274 ) , 
    .A4 ( port0_i_port_fifo_mem[59] ) , .A5 ( ctmn_7185 ) , .Y ( ctmn_7186 ) ) ;
AO22X1_RVT ctmi_7988 ( .A1 ( phfnn_293 ) , .A2 ( port0_i_port_fifo_mem[91] ) , 
    .A3 ( phfnn_294 ) , .A4 ( port0_i_port_fifo_mem[123] ) , 
    .Y ( ctmn_7185 ) ) ;
AO221X1_RVT ctmi_7989 ( .A1 ( phfnn_292 ) , 
    .A2 ( port0_i_port_fifo_mem[28] ) , .A3 ( phfnn_272 ) , 
    .A4 ( port0_i_port_fifo_mem[76] ) , .A5 ( ctmn_7190 ) , 
    .Y ( port0_i_port_fifo_N29 ) ) ;
AND3X2_RVT ctmi_7621 ( .A1 ( ctmn_6937 ) , .A2 ( mux_sel1[1] ) , 
    .A3 ( TDBUF_346 ) , .Y ( ctmn_6941 ) ) ;
AO221X1_RVT ctmi_7990 ( .A1 ( phfnn_290 ) , 
    .A2 ( port0_i_port_fifo_mem[108] ) , .A3 ( phfnn_291 ) , 
    .A4 ( port0_i_port_fifo_mem[44] ) , .A5 ( ctmn_7189 ) , .Y ( ctmn_7190 ) ) ;
AO221X1_RVT ctmi_7991 ( .A1 ( phfnn_273 ) , 
    .A2 ( port0_i_port_fifo_mem[12] ) , .A3 ( phfnn_274 ) , 
    .A4 ( port0_i_port_fifo_mem[60] ) , .A5 ( ctmn_7188 ) , .Y ( ctmn_7189 ) ) ;
AO221X1_RVT ctmi_7622 ( .A1 ( fifo_data_out0[14] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[14] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6943 ) , 
    .Y ( MXIOP_50_0 ) ) ;
AO22X1_RVT ctmi_7623 ( .A1 ( fifo_data_out1[14] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( ZBUF_80_0 ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6943 ) ) ;
AO221X1_RVT ctmi_7624 ( .A1 ( fifo_data_out0[13] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[13] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6944 ) , 
    .Y ( MXIOP_51_0 ) ) ;
CGLNPRX2_HVT clock_gate_port1_i_port_fifo_fifo_count_reg_30 ( 
    .CLK ( clk_clock_gate_port1_i_port_fifo_fifo_count_reg ) , 
    .EN ( clkgt_enable_net_6 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_fifo_count_reg_clock_gate_port1_i_port_fifo_fifo_count_reg_30 ) ) ;
INVX0_HVT clock_gate_inv_652 ( 
    .A ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Y ( clock_gate_net_39 ) ) ;
AND2X1_RVT ctmi_7779 ( .A1 ( ctmn_7025 ) , .A2 ( port2_i_port_fifo_N21 ) , 
    .Y ( port2_i_port_fifo_N25 ) ) ;
AO22X1_RVT ctmi_7625 ( .A1 ( fifo_data_out1[13] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( fifo_data_out2[13] ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6944 ) ) ;
AO221X1_RVT ctmi_7626 ( .A1 ( fifo_data_out0[12] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[12] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6945 ) , 
    .Y ( MXIOP_52_0 ) ) ;
CGLNPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_20 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port2_i_port_fifo_N3 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) ) ;
CGLNPRX2_HVT clock_gate_port0_i_port_fifo_data_out_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port0_i_port_fifo_N17 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) ) ;
CGLNPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_14 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port1_i_port_fifo_N2 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) ) ;
INVX0_HVT clock_gate_inv_653 ( 
    .A ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Y ( clock_gate_net_40 ) ) ;
NOR3X0_HVT ctmi_7641 ( .A1 ( ctmn_6897 ) , 
    .A2 ( port1_i_port_fifo_wr_ptr[0] ) , 
    .A3 ( port1_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_6952 ) ) ;
OR2X1_RVT ctmi_7643 ( .A1 ( port1_i_port_fifo_wr_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_N16 ) , .Y ( ctmn_6953 ) ) ;
INVX0_HVT ctmi_191 ( .A ( ctmn_7013 ) , .Y ( ctmn_7014 ) ) ;
NAND2X0_RVT ctmi_7646 ( .A1 ( port1_i_port_fifo_wr_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_N16 ) , .Y ( ctmn_6955 ) ) ;
AND3X1_RVT ctmi_7649 ( .A1 ( ctmn_6951 ) , 
    .A2 ( port1_i_port_fifo_wr_ptr[0] ) , 
    .A3 ( port1_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_6957 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_wr_ptr_reg_1_ ( .D ( port1_i_port_fifo_N15 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_18 ) , 
    .RSTB ( rst_n ) , .Q ( port1_i_port_fifo_wr_ptr[1] ) ) ;
NAND2X0_RVT ctmi_7654 ( .A1 ( port1_i_port_fifo_wr_ptr[0] ) , 
    .A2 ( port1_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_6958 ) ) ;
AND4X1_HVT ctmi_7651 ( .A1 ( rst_n ) , .A2 ( port1_i_port_fifo_wr_ptr[2] ) , 
    .A3 ( port1_i_port_fifo_N13 ) , .A4 ( ctmn_6954 ) , 
    .Y ( port1_i_port_fifo_N4 ) ) ;
AND3X1_HVT ctmi_7639 ( .A1 ( ctmn_6951 ) , .A2 ( port1_i_port_fifo_N13 ) , 
    .A3 ( ctmn_6952 ) , .Y ( port1_i_port_fifo_N11 ) ) ;
AND2X1_RVT ctmi_7765 ( .A1 ( phfnn_271 ) , .A2 ( ctmn_6834 ) , 
    .Y ( port0_i_next_state[1] ) ) ;
AO22X1_RVT ctmi_7627 ( .A1 ( fifo_data_out1[12] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( fifo_data_out2[12] ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6945 ) ) ;
AO221X1_RVT ctmi_7628 ( .A1 ( fifo_data_out0[11] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[11] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6946 ) , 
    .Y ( MXIOP_53_0 ) ) ;
AO22X1_RVT ctmi_7629 ( .A1 ( fifo_data_out1[11] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( fifo_data_out2[11] ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6946 ) ) ;
CGLNPRX2_HVT clock_gate_port0_i_port_fifo_fifo_count_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port0_i_port_fifo_N21 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port0_i_port_fifo_fifo_count_reg ) ) ;
INVX0_HVT clock_gate_inv_660 ( 
    .A ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Y ( clock_gate_net_47 ) ) ;
CGLNPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_21 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port2_i_port_fifo_N2 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_15_ ( 
    .D ( port1_i_port_fifo_N26 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_16 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out1[15] ) ) ;
AO221X1_RVT ctmi_7657 ( .A1 ( fifo_data_out0[5] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[5] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6960 ) , 
    .Y ( MXIOP_47_0 ) ) ;
INVX0_HVT clock_gate_inv_661 ( 
    .A ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Y ( clock_gate_net_48 ) ) ;
AND2X1_RVT ctmi_7781 ( .A1 ( ctmn_7026 ) , .A2 ( port3_i_port_fifo_N21 ) , 
    .Y ( port3_i_port_fifo_N25 ) ) ;
AO22X1_RVT ctmi_7632 ( .A1 ( fifo_data_out1[10] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( fifo_data_out2[10] ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6947 ) ) ;
AO221X1_RVT ctmi_7633 ( .A1 ( fifo_data_out0[9] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[9] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6948 ) , 
    .Y ( MXIOP_55_0 ) ) ;
CGLNPRX2_HVT clock_gate_port0_i_port_fifo_wr_ptr_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port0_i_port_fifo_N13 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port0_i_port_fifo_wr_ptr_reg ) ) ;
CGLNPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port3_i_port_fifo_N11 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) ) ;
AOI222X1_RVT ctmi_7800 ( .A1 ( ctmn_7037 ) , .A2 ( ctmn_6651 ) , 
    .A3 ( ctmn_7037 ) , .A4 ( ctmn_6837 ) , .A5 ( ctmn_7037 ) , 
    .A6 ( ctmn_6650 ) , .Y ( port0_i_port_fifo_N22 ) ) ;
AO221X1_RVT ctmi_7662 ( .A1 ( fifo_data_out0[3] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[3] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6962 ) , 
    .Y ( MXIOP_41_0 ) ) ;
AO221X1_RVT ctmi_7801 ( .A1 ( ctmn_6651 ) , .A2 ( phfnn_275 ) , 
    .A3 ( port0_i_port_fifo_fifo_count[3] ) , .A4 ( ctmn_7036 ) , 
    .A5 ( phfnn_198 ) , .Y ( ctmn_7037 ) ) ;
AO22X1_RVT ctmi_7634 ( .A1 ( fifo_data_out1[9] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( fifo_data_out2[9] ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6948 ) ) ;
AO221X1_RVT ctmi_7635 ( .A1 ( fifo_data_out0[8] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[8] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6949 ) , 
    .Y ( MXIOP_56_0 ) ) ;
AO22X1_RVT ctmi_7636 ( .A1 ( fifo_data_out1[8] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( fifo_data_out2[8] ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6949 ) ) ;
AO221X1_RVT ctmi_7637 ( .A1 ( fifo_data_out0[7] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[7] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6950 ) , 
    .Y ( MXIOP_45_0 ) ) ;
INVX0_HVT clock_gate_inv_662 ( 
    .A ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Y ( clock_gate_net_49 ) ) ;
CGLNPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_22 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port3_i_port_fifo_N9 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) ) ;
INVX0_HVT clock_gate_inv_663 ( 
    .A ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Y ( clock_gate_net_50 ) ) ;
AO22X1_RVT ctmi_7638 ( .A1 ( fifo_data_out1[7] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( fifo_data_out2[7] ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6950 ) ) ;
CGLNPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_23 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port3_i_port_fifo_N7 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) ) ;
NOR4X0_HVT ctmi_7798 ( .A1 ( ctmn_6897 ) , .A2 ( ctmn_7027 ) , 
    .A3 ( ctmn_6800 ) , .A4 ( ctmn_7034 ) , .Y ( port3_i_port_fifo_N2 ) ) ;
INVX0_HVT clock_gate_inv_664 ( 
    .A ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Y ( clock_gate_net_51 ) ) ;
NOR4X0_HVT ctmi_7762 ( .A1 ( ctmn_6897 ) , .A2 ( ctmn_7011 ) , 
    .A3 ( ctmn_6798 ) , .A4 ( ctmn_7018 ) , .Y ( port2_i_port_fifo_N2 ) ) ;
CGLNPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_24 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port3_i_port_fifo_N6 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) ) ;
NOR4X0_HVT ctmi_7653 ( .A1 ( ctmn_6897 ) , .A2 ( ctmn_6951 ) , 
    .A3 ( ctmn_6796 ) , .A4 ( ctmn_6958 ) , .Y ( port1_i_port_fifo_N2 ) ) ;
AND4X1_HVT ctmi_7642 ( .A1 ( ctmn_6951 ) , .A2 ( rst_n ) , 
    .A3 ( port1_i_port_fifo_N13 ) , .A4 ( ctmn_6954 ) , 
    .Y ( port1_i_port_fifo_N9 ) ) ;
INVX0_HVT clock_gate_inv_665 ( 
    .A ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Y ( clock_gate_net_52 ) ) ;
AND4X1_HVT ctmi_7645 ( .A1 ( ctmn_6951 ) , .A2 ( rst_n ) , 
    .A3 ( port1_i_port_fifo_N13 ) , .A4 ( ctmn_6956 ) , 
    .Y ( port1_i_port_fifo_N7 ) ) ;
INVX0_HVT ctmi_192 ( .A ( ctmn_7029 ) , .Y ( ctmn_7030 ) ) ;
AND3X1_HVT ctmi_7648 ( .A1 ( rst_n ) , .A2 ( port1_i_port_fifo_N13 ) , 
    .A3 ( ctmn_6957 ) , .Y ( port1_i_port_fifo_N6 ) ) ;
CGLNPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_25 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port3_i_port_fifo_N5 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) ) ;
AND4X1_HVT ctmi_7652 ( .A1 ( rst_n ) , .A2 ( port1_i_port_fifo_wr_ptr[2] ) , 
    .A3 ( port1_i_port_fifo_N13 ) , .A4 ( ctmn_6956 ) , 
    .Y ( port1_i_port_fifo_N3 ) ) ;
INVX0_HVT clock_gate_inv_666 ( 
    .A ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Y ( clock_gate_net_53 ) ) ;
AND3X1_HVT ctmi_7650 ( .A1 ( port1_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( port1_i_port_fifo_N13 ) , .A3 ( ctmn_6952 ) , 
    .Y ( port1_i_port_fifo_N5 ) ) ;
SDFFARX1_HVT port2_i_current_state_reg_0_ ( .D ( port2_i_next_state[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_current_state[0] ) ) ;
AO22X1_RVT ctmi_7658 ( .A1 ( fifo_data_out1[5] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( fifo_data_out2[5] ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6960 ) ) ;
AO221X1_RVT ctmi_7659 ( .A1 ( fifo_data_out0[4] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[4] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6961 ) , 
    .Y ( MXIOP_48_0 ) ) ;
AO22X1_RVT ctmi_7660 ( .A1 ( fifo_data_out1[4] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( HFSNET_2 ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6961 ) ) ;
CGLNPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_26 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port3_i_port_fifo_N4 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) ) ;
AND4X1_HVT ctmi_7761 ( .A1 ( port2_i_port_fifo_N16 ) , .A2 ( rst_n ) , 
    .A3 ( port2_i_port_fifo_wr_ptr[1] ) , .A4 ( ctmn_7017 ) , 
    .Y ( port2_i_port_fifo_N3 ) ) ;
AND3X1_HVT ctmi_7760 ( .A1 ( rst_n ) , .A2 ( ctmn_7017 ) , .A3 ( ctmn_7014 ) , 
    .Y ( port2_i_port_fifo_N4 ) ) ;
NAND2X0_RVT ctmi_7763 ( .A1 ( port2_i_port_fifo_wr_ptr[0] ) , 
    .A2 ( port2_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_7018 ) ) ;
INVX0_HVT clock_gate_inv_667 ( 
    .A ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Y ( clock_gate_net_54 ) ) ;
AND4X1_HVT ctmi_7758 ( .A1 ( ctmn_7010 ) , .A2 ( port2_i_port_fifo_N16 ) , 
    .A3 ( rst_n ) , .A4 ( ctmn_7017 ) , .Y ( port2_i_port_fifo_N5 ) ) ;
AND3X1_HVT ctmi_7756 ( .A1 ( rst_n ) , .A2 ( port2_i_port_fifo_N13 ) , 
    .A3 ( ctmn_7016 ) , .Y ( port2_i_port_fifo_N6 ) ) ;
AND3X1_RVT ctmi_7757 ( .A1 ( ctmn_7011 ) , 
    .A2 ( port2_i_port_fifo_wr_ptr[0] ) , 
    .A3 ( port2_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_7016 ) ) ;
NOR4X0_HVT ctmi_7754 ( .A1 ( ctmn_6897 ) , .A2 ( ctmn_7015 ) , 
    .A3 ( ctmn_6798 ) , .A4 ( port2_i_port_fifo_wr_ptr[2] ) , 
    .Y ( port2_i_port_fifo_N7 ) ) ;
AND4X1_HVT ctmi_7751 ( .A1 ( ctmn_7011 ) , .A2 ( rst_n ) , 
    .A3 ( port2_i_port_fifo_N13 ) , .A4 ( ctmn_7014 ) , 
    .Y ( port2_i_port_fifo_N9 ) ) ;
INVX0_HVT clock_gate_inv_668 ( 
    .A ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Y ( clock_gate_net_55 ) ) ;
AND4X1_HVT ctmi_7797 ( .A1 ( port3_i_port_fifo_N16 ) , .A2 ( rst_n ) , 
    .A3 ( port3_i_port_fifo_wr_ptr[1] ) , .A4 ( ctmn_7033 ) , 
    .Y ( port3_i_port_fifo_N3 ) ) ;
AND3X1_HVT ctmi_7796 ( .A1 ( rst_n ) , .A2 ( ctmn_7033 ) , .A3 ( ctmn_7030 ) , 
    .Y ( port3_i_port_fifo_N4 ) ) ;
CGLNPRX2_HVT clock_gate_port1_i_port_fifo_data_out_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port1_i_port_fifo_N17 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) ) ;
NAND2X0_RVT ctmi_7799 ( .A1 ( port3_i_port_fifo_wr_ptr[0] ) , 
    .A2 ( port3_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_7034 ) ) ;
CGLNPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_28 ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port3_i_port_fifo_N2 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) ) ;
AND2X1_HVT ctmi_7794 ( .A1 ( ctmn_7033 ) , .A2 ( ctmn_7028 ) , 
    .Y ( port3_i_port_fifo_N5 ) ) ;
AND3X1_HVT ctmi_7792 ( .A1 ( rst_n ) , .A2 ( port3_i_port_fifo_N13 ) , 
    .A3 ( ctmn_7032 ) , .Y ( port3_i_port_fifo_N6 ) ) ;
AND3X1_RVT ctmi_7793 ( .A1 ( ctmn_7027 ) , 
    .A2 ( port3_i_port_fifo_wr_ptr[0] ) , 
    .A3 ( port3_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_7032 ) ) ;
NOR4X0_HVT ctmi_7790 ( .A1 ( ctmn_6897 ) , .A2 ( ctmn_7031 ) , 
    .A3 ( ctmn_6800 ) , .A4 ( port3_i_port_fifo_wr_ptr[2] ) , 
    .Y ( port3_i_port_fifo_N7 ) ) ;
AND4X1_HVT ctmi_7787 ( .A1 ( ctmn_7027 ) , .A2 ( rst_n ) , 
    .A3 ( port3_i_port_fifo_N13 ) , .A4 ( ctmn_7030 ) , 
    .Y ( port3_i_port_fifo_N9 ) ) ;
AO22X1_RVT ctmi_7992 ( .A1 ( phfnn_293 ) , .A2 ( port0_i_port_fifo_mem[92] ) , 
    .A3 ( phfnn_294 ) , .A4 ( port0_i_port_fifo_mem[124] ) , 
    .Y ( ctmn_7188 ) ) ;
AO221X1_RVT ctmi_7993 ( .A1 ( phfnn_292 ) , 
    .A2 ( port0_i_port_fifo_mem[29] ) , .A3 ( phfnn_272 ) , 
    .A4 ( port0_i_port_fifo_mem[77] ) , .A5 ( ctmn_7193 ) , 
    .Y ( port0_i_port_fifo_N28 ) ) ;
AO221X1_RVT ctmi_7994 ( .A1 ( phfnn_291 ) , 
    .A2 ( port0_i_port_fifo_mem[45] ) , .A3 ( phfnn_290 ) , 
    .A4 ( port0_i_port_fifo_mem[109] ) , .A5 ( ctmn_7192 ) , 
    .Y ( ctmn_7193 ) ) ;
AO221X1_RVT ctmi_7995 ( .A1 ( phfnn_273 ) , 
    .A2 ( port0_i_port_fifo_mem[13] ) , .A3 ( phfnn_274 ) , 
    .A4 ( port0_i_port_fifo_mem[61] ) , .A5 ( ctmn_7191 ) , .Y ( ctmn_7192 ) ) ;
AO22X1_RVT ctmi_7996 ( .A1 ( phfnn_293 ) , .A2 ( port0_i_port_fifo_mem[93] ) , 
    .A3 ( phfnn_294 ) , .A4 ( port0_i_port_fifo_mem[125] ) , 
    .Y ( ctmn_7191 ) ) ;
AO221X1_RVT ctmi_7997 ( .A1 ( phfnn_292 ) , 
    .A2 ( port0_i_port_fifo_mem[30] ) , .A3 ( phfnn_272 ) , 
    .A4 ( port0_i_port_fifo_mem[78] ) , .A5 ( ctmn_7196 ) , 
    .Y ( port0_i_port_fifo_N27 ) ) ;
AO221X1_RVT ctmi_7998 ( .A1 ( phfnn_291 ) , 
    .A2 ( port0_i_port_fifo_mem[46] ) , .A3 ( phfnn_290 ) , 
    .A4 ( port0_i_port_fifo_mem[110] ) , .A5 ( ctmn_7195 ) , 
    .Y ( ctmn_7196 ) ) ;
AO221X1_RVT ctmi_7999 ( .A1 ( phfnn_273 ) , 
    .A2 ( port0_i_port_fifo_mem[14] ) , .A3 ( phfnn_274 ) , 
    .A4 ( port0_i_port_fifo_mem[62] ) , .A5 ( ctmn_7194 ) , .Y ( ctmn_7195 ) ) ;
AO22X1_RVT ctmi_8000 ( .A1 ( phfnn_293 ) , .A2 ( port0_i_port_fifo_mem[94] ) , 
    .A3 ( phfnn_294 ) , .A4 ( port0_i_port_fifo_mem[126] ) , 
    .Y ( ctmn_7194 ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[125] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[124] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[123] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[122] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[121] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[120] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[119] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[118] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[117] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[116] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[115] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[114] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[113] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_48 ) , 
    .Q ( port2_i_port_fifo_mem[112] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[111] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[110] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[109] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[108] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[107] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[106] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[105] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[104] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[103] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[102] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[101] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[100] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[99] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[98] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[97] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_47 ) , 
    .Q ( port2_i_port_fifo_mem[96] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[95] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[94] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[93] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[92] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[91] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[90] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[89] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[88] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[87] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[86] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[85] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[84] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[83] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[82] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[81] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_46 ) , 
    .Q ( port2_i_port_fifo_mem[80] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[79] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[78] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[77] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[76] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[75] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[74] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[73] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[72] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[71] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[70] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[69] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[68] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[67] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[66] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[65] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_45 ) , 
    .Q ( port2_i_port_fifo_mem[64] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[63] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[62] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[61] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[60] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[59] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[58] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[57] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[56] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[55] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[54] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[53] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[52] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[51] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[50] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[49] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_44 ) , 
    .Q ( port2_i_port_fifo_mem[48] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[47] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[46] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[45] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[44] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[43] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[42] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[41] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[40] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[39] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[38] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[37] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[36] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[35] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[34] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[33] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_43 ) , 
    .Q ( port2_i_port_fifo_mem[32] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[31] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[30] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[29] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[28] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[27] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[26] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[25] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[24] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[23] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[22] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[21] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[20] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[19] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[18] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[17] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_42 ) , 
    .Q ( port2_i_port_fifo_mem[16] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[15] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[14] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[13] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[12] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[11] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[10] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[9] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[8] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[7] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[6] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[5] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[4] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[3] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[2] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[1] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_41 ) , 
    .Q ( port2_i_port_fifo_mem[0] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[127] ) ) ;
AO221X1_RVT ctmi_8001 ( .A1 ( phfnn_272 ) , 
    .A2 ( port0_i_port_fifo_mem[79] ) , .A3 ( phfnn_290 ) , 
    .A4 ( port0_i_port_fifo_mem[111] ) , .A5 ( ctmn_7199_CDR1 ) , 
    .Y ( port0_i_port_fifo_N26 ) ) ;
AO221X1_RVT ctmi_8002 ( .A1 ( phfnn_292 ) , 
    .A2 ( port0_i_port_fifo_mem[31] ) , .A3 ( phfnn_273 ) , 
    .A4 ( port0_i_port_fifo_mem[15] ) , .A5 ( ctmn_7198_CDR1 ) , 
    .Y ( ctmn_7199_CDR1 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_rd_ptr_reg_2_ ( .D ( port2_i_port_fifo_N18 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_19 ) , 
    .RSTB ( rst_n ) , .Q ( port2_i_port_fifo_rd_ptr[2] ) , .QN ( ctmn_6625 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_rd_ptr_reg_0_ ( .D ( port2_i_port_fifo_N20 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_19 ) , 
    .RSTB ( rst_n ) , .Q ( port2_i_port_fifo_rd_ptr[0] ) , 
    .QN ( port2_i_port_fifo_N20 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_fifo_count_reg_3_ ( 
    .D ( port2_i_port_fifo_N22 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_57 ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_port_fifo_fifo_count[3] ) , .QN ( ctmn_6658 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_rd_ptr_reg_1_ ( .D ( port2_i_port_fifo_N19 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_19 ) , 
    .RSTB ( rst_n ) , .Q ( port2_i_port_fifo_rd_ptr[1] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_fifo_count_reg_2_ ( 
    .D ( port2_i_port_fifo_N23 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_57 ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_port_fifo_fifo_count[2] ) , .QN ( ctmn_7057 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_fifo_count_reg_0_ ( 
    .D ( port2_i_port_fifo_N25 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_20 ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_port_fifo_fifo_count[0] ) , .QN ( ctmn_7025 ) ) ;
SDFFARX1_HVT port3_i_current_state_reg_1_ ( .D ( port3_i_next_state[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port3_i_current_state[1] ) , .QN ( ctmn_6777 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_fifo_count_reg_1_ ( 
    .D ( port2_i_port_fifo_N24 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_57 ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_port_fifo_fifo_count[1] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_14_ ( 
    .D ( port2_i_port_fifo_N27 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[14] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_13_ ( 
    .D ( port2_i_port_fifo_N28 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[13] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_12_ ( 
    .D ( port2_i_port_fifo_N29 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[12] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_11_ ( 
    .D ( port2_i_port_fifo_N30 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[11] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_10_ ( 
    .D ( port2_i_port_fifo_N31 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[10] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_9_ ( 
    .D ( port2_i_port_fifo_N32 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[9] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_8_ ( 
    .D ( port2_i_port_fifo_N33 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[8] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_7_ ( 
    .D ( port2_i_port_fifo_N34 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[7] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_6_ ( 
    .D ( port2_i_port_fifo_N35 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[6] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_5_ ( 
    .D ( port2_i_port_fifo_N36 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[5] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_4_ ( 
    .D ( port2_i_port_fifo_N37 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[4] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_3_ ( 
    .D ( port2_i_port_fifo_N38 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[3] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_2_ ( 
    .D ( port2_i_port_fifo_N39 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[2] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_1_ ( 
    .D ( port2_i_port_fifo_N40 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[1] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_0_ ( 
    .D ( port2_i_port_fifo_N41 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[0] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_wr_ptr_reg_0_ ( .D ( port3_i_port_fifo_N16 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_24 ) , 
    .RSTB ( rst_n ) , .Q ( port3_i_port_fifo_wr_ptr[0] ) , 
    .QN ( port3_i_port_fifo_N16 ) ) ;
AO221X1_RVT ctmi_8003 ( .A1 ( phfnn_291 ) , 
    .A2 ( port0_i_port_fifo_mem[47] ) , .A3 ( phfnn_274 ) , 
    .A4 ( port0_i_port_fifo_mem[63] ) , .A5 ( ctmn_7197 ) , 
    .Y ( ctmn_7198_CDR1 ) ) ;
AO22X1_RVT ctmi_8004 ( .A1 ( phfnn_293 ) , .A2 ( port0_i_port_fifo_mem[95] ) , 
    .A3 ( phfnn_294 ) , .A4 ( port0_i_port_fifo_mem[127] ) , 
    .Y ( ctmn_7197 ) ) ;
INVX0_HVT clock_gate_inv_669 ( 
    .A ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Y ( clock_gate_net_56 ) ) ;
NBUFFX4_HVT TDBUF_1036 ( .A ( port2_valid_out ) , .Y ( TDBUF_347 ) ) ;
INVX1_HVT ctmi_193 ( .A ( ctmn_6734 ) , .Y ( port0_i_port_fifo_N13 ) ) ;
AND2X1_RVT ctmi_672 ( .A1 ( port2_i_port_fifo_N37 ) , .A2 ( ctmn_6659 ) , 
    .Y ( ctmn_6763 ) ) ;
NBUFFX4_HVT TDBUF_1037 ( .A ( port3_valid_out ) , .Y ( TDBUF_348 ) ) ;
AND2X1_RVT ctmi_674 ( .A1 ( port0_i_port_fifo_N37 ) , .A2 ( ctmn_6652 ) , 
    .Y ( ctmn_6826 ) ) ;
NBUFFX2_RVT HFSBUF_79_1038 ( .A ( fifo_data_out2[0] ) , .Y ( HFSNET_0 ) ) ;
AND2X1_RVT ctmi_676 ( .A1 ( port3_i_port_fifo_N37 ) , .A2 ( ctmn_6648 ) , 
    .Y ( ctmn_6909 ) ) ;
NBUFFX2_RVT HFSBUF_105_1039 ( .A ( fifo_data_out2[15] ) , .Y ( HFSNET_1 ) ) ;
AND2X1_RVT ctmi_678 ( .A1 ( port0_i_port_fifo_N36 ) , .A2 ( ctmn_6652 ) , 
    .Y ( ctmn_6825 ) ) ;
NBUFFX2_RVT HFSBUF_72_1040 ( .A ( fifo_data_out2[4] ) , .Y ( HFSNET_2 ) ) ;
AND2X1_RVT ctmi_680 ( .A1 ( port0_i_port_fifo_N35 ) , .A2 ( ctmn_6652 ) , 
    .Y ( ctmn_6689 ) ) ;
NBUFFX2_RVT HFSBUF_91_1041 ( .A ( port1_i_port_fifo_fifo_count[0] ) , 
    .Y ( HFSNET_3 ) ) ;
NBUFFX2_RVT HFSBUF_101_1042 ( .A ( port3_i_port_fifo_fifo_count[0] ) , 
    .Y ( HFSNET_4 ) ) ;
NBUFFX2_RVT HFSBUF_151_1043 ( .A ( top_arb_i_N22 ) , .Y ( HFSNET_5 ) ) ;
NBUFFX2_RVT HFSBUF_126_1044 ( .A ( top_arb_i_common_ptr[1] ) , 
    .Y ( HFSNET_6 ) ) ;
NBUFFX2_RVT HFSBUF_234_1045 ( .A ( ctmn_6645 ) , .Y ( HFSNET_7 ) ) ;
AND2X2_HVT ctmi_686 ( .A1 ( port1_valid_in ) , .A2 ( ctmn_6795 ) , 
    .Y ( port1_i_port_fifo_N13 ) ) ;
OA221X1_RVT ctmTdsLR_1_1048 ( .A1 ( port3_i_port_fifo_fifo_count[2] ) , 
    .A2 ( port3_i_port_fifo_fifo_count[1] ) , 
    .A3 ( port3_i_port_fifo_fifo_count[2] ) , 
    .A4 ( port3_i_port_fifo_fifo_count[0] ) , .A5 ( phfnn_287 ) , 
    .Y ( ctmn_7070 ) ) ;
OA221X1_RVT ctmTdsLR_1_1049 ( .A1 ( port1_i_port_fifo_fifo_count[2] ) , 
    .A2 ( port1_i_port_fifo_fifo_count[1] ) , 
    .A3 ( port1_i_port_fifo_fifo_count[2] ) , .A4 ( HFSNET_3 ) , 
    .A5 ( phfnn_277 ) , .Y ( ctmn_7052 ) ) ;
CGLNPRX2_HVT clock_gate_port2_i_port_fifo_fifo_count_reg_31 ( 
    .CLK ( clk_clock_gate_port2_i_port_fifo_fifo_count_reg ) , 
    .EN ( clkgt_enable_net_12 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_fifo_count_reg_clock_gate_port2_i_port_fifo_fifo_count_reg_31 ) ) ;
OA222X1_RVT ctmTdsLR_1_1050 ( .A1 ( top_arb_i_common_ptr[1] ) , 
    .A2 ( phfnn_323 ) , .A3 ( top_arb_i_common_ptr[1] ) , .A4 ( ctmn_6751 ) , 
    .A5 ( phfnn_323 ) , .A6 ( ctmn_6753 ) , .Y ( ctmn_6755 ) ) ;
AND3X1_RVT ctmi_691 ( .A1 ( phfnn_313 ) , .A2 ( ctmn_6662 ) , 
    .A3 ( ctmn_6666 ) , .Y ( ctmn_6776 ) ) ;
AND3X1_RVT ctmi_694 ( .A1 ( port3_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port3_i_port_fifo_fifo_count[0] ) , 
    .A3 ( port3_i_port_fifo_fifo_count[2] ) , .Y ( ctmn_7064 ) ) ;
NAND2X0_RVT ctmi_858 ( .A1 ( port2_i_port_fifo_N17 ) , .A2 ( ctmn_6798 ) , 
    .Y ( ctmn_6922 ) ) ;
AND3X1_RVT ctmi_700 ( .A1 ( port2_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port2_i_port_fifo_fifo_count[0] ) , 
    .A3 ( port2_i_port_fifo_fifo_count[2] ) , .Y ( ctmn_7055 ) ) ;
AND2X1_RVT ctmi_859 ( .A1 ( ctmn_6659 ) , .A2 ( ctmn_6886 ) , 
    .Y ( port2_i_port_fifo_N17 ) ) ;
OAI21X1_RVT ctmi_860 ( .A1 ( phfnn_177 ) , .A2 ( phfnn_327 ) , 
    .A3 ( ctmn_6716 ) , .Y ( ctmn_6723 ) ) ;
AND3X1_RVT ctmi_703 ( .A1 ( port1_i_port_fifo_fifo_count[1] ) , 
    .A2 ( HFSNET_3 ) , .A3 ( port1_i_port_fifo_fifo_count[2] ) , 
    .Y ( ctmn_7045 ) ) ;
CGLNPRX2_HVT clock_gate_port3_i_port_fifo_fifo_count_reg_32 ( 
    .CLK ( clk_clock_gate_port3_i_port_fifo_fifo_count_reg ) , 
    .EN ( clkgt_enable_net_58 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_fifo_count_reg_clock_gate_port3_i_port_fifo_fifo_count_reg_32 ) ) ;
AND2X1_RVT ctmi_861 ( .A1 ( port0_i_port_fifo_N34 ) , .A2 ( ctmn_6652 ) , 
    .Y ( phfnn_177 ) ) ;
AND3X1_RVT ctmi_708 ( .A1 ( port0_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port0_i_port_fifo_fifo_count[0] ) , 
    .A3 ( port0_i_port_fifo_fifo_count[2] ) , .Y ( ctmn_7036 ) ) ;
AND2X1_RVT ctmi_862 ( .A1 ( port1_i_port_fifo_N35 ) , .A2 ( ctmn_6642 ) , 
    .Y ( phfnn_182 ) ) ;
OR2X1_RVT ctmi_864 ( .A1 ( ctmn_6798 ) , .A2 ( port2_i_port_fifo_N17 ) , 
    .Y ( phfnn_196 ) ) ;
OR2X1_RVT ctmi_865 ( .A1 ( port1_i_port_fifo_N17 ) , .A2 ( ctmn_6796 ) , 
    .Y ( phfnn_195 ) ) ;
OR2X1_RVT ctmi_866 ( .A1 ( ctmn_6800 ) , .A2 ( port3_i_port_fifo_N17 ) , 
    .Y ( phfnn_197 ) ) ;
AND2X1_RVT ctmi_867 ( .A1 ( ctmn_6648 ) , .A2 ( ctmn_6918 ) , 
    .Y ( port3_i_port_fifo_N17 ) ) ;
OAI21X1_RVT ctmi_868 ( .A1 ( phfnn_182 ) , .A2 ( phfnn_325 ) , 
    .A3 ( ctmn_6686 ) , .Y ( ctmn_6697 ) ) ;
NAND2X1_RVT ctmi_869 ( .A1 ( port3_i_port_fifo_N17 ) , .A2 ( ctmn_6800 ) , 
    .Y ( ctmn_6924 ) ) ;
NOR4X0_RVT ctmi_870 ( .A1 ( ctmn_6825 ) , .A2 ( ctmn_6689 ) , 
    .A3 ( phfnn_177 ) , .A4 ( ctmn_6826 ) , .Y ( ctmn_6749 ) ) ;
AO22X1_RVT ctmi_7663 ( .A1 ( fifo_data_out1[3] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( fifo_data_out2[3] ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6962 ) ) ;
AO221X1_RVT ctmi_7664 ( .A1 ( fifo_data_out0[2] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[2] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6963 ) , 
    .Y ( MXIOP_42_0 ) ) ;
AO22X1_RVT ctmi_7665 ( .A1 ( fifo_data_out1[2] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( fifo_data_out2[2] ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6963 ) ) ;
AO221X1_RVT ctmi_7666 ( .A1 ( fifo_data_out0[1] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[1] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6964 ) , 
    .Y ( MXIOP_43_0 ) ) ;
AO22X1_RVT ctmi_7667 ( .A1 ( fifo_data_out1[1] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( fifo_data_out2[1] ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6964 ) ) ;
AO221X1_RVT ctmi_7668 ( .A1 ( fifo_data_out0[0] ) , .A2 ( ctmn_6938 ) , 
    .A3 ( fifo_data_out3[0] ) , .A4 ( ctmn_6939 ) , .A5 ( ctmn_6965 ) , 
    .Y ( MXIOP_44_0 ) ) ;
AO22X1_RVT ctmi_7669 ( .A1 ( fifo_data_out1[0] ) , .A2 ( ctmn_6940 ) , 
    .A3 ( HFSNET_0 ) , .A4 ( ctmn_6941 ) , .Y ( ctmn_6965 ) ) ;
AO221X1_RVT ctmi_7670 ( .A1 ( fifo_data_out0[15] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[15] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6972 ) , 
    .Y ( MXIOP_65_0 ) ) ;
AND3X2_RVT ctmi_7671 ( .A1 ( ctmn_6966 ) , .A2 ( ctmn_6967 ) , 
    .A3 ( TDBUF_347 ) , .Y ( ctmn_6968 ) ) ;
AND4X1_HVT ctmi_7747 ( .A1 ( ctmn_7010 ) , .A2 ( port2_i_port_fifo_N16 ) , 
    .A3 ( rst_n ) , .A4 ( ctmn_7012 ) , .Y ( port2_i_port_fifo_N11 ) ) ;
AND3X2_RVT ctmi_7674 ( .A1 ( mux_sel2[0] ) , .A2 ( TDBUF_347 ) , 
    .A3 ( mux_sel2[1] ) , .Y ( ctmn_6969 ) ) ;
CGLNPRX2_HVT clock_gate_port1_i_port_fifo_fifo_count_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port1_i_port_fifo_N21 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port1_i_port_fifo_fifo_count_reg ) ) ;
AO22X1_RVT ctmi_7675 ( .A1 ( fifo_data_out1[15] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( HFSNET_1 ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6972 ) ) ;
AND3X2_RVT ctmi_7676 ( .A1 ( ctmn_6967 ) , .A2 ( mux_sel2[0] ) , 
    .A3 ( TDBUF_347 ) , .Y ( ctmn_6970 ) ) ;
AND3X2_RVT ctmi_7677 ( .A1 ( ctmn_6966 ) , .A2 ( TDBUF_347 ) , 
    .A3 ( mux_sel2[1] ) , .Y ( ctmn_6971 ) ) ;
AO221X1_RVT ctmi_7678 ( .A1 ( fifo_data_out0[14] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[14] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6973 ) , 
    .Y ( MXIOP_66_0 ) ) ;
AO22X1_RVT ctmi_7679 ( .A1 ( fifo_data_out1[14] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( ZBUF_80_0 ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6973 ) ) ;
AO221X1_RVT ctmi_7680 ( .A1 ( fifo_data_out0[13] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[13] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6974 ) , 
    .Y ( MXIOP_67_0 ) ) ;
AO22X1_RVT ctmi_7681 ( .A1 ( fifo_data_out1[13] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( HFSNET_10 ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6974 ) ) ;
AO221X1_RVT ctmi_7682 ( .A1 ( fifo_data_out0[12] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[12] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6975 ) , 
    .Y ( MXIOP_68_0 ) ) ;
AO22X1_RVT ctmi_7683 ( .A1 ( fifo_data_out1[12] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( fifo_data_out2[12] ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6975 ) ) ;
AO221X1_RVT ctmi_7684 ( .A1 ( fifo_data_out0[11] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[11] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6976 ) , 
    .Y ( MXIOP_69_0 ) ) ;
AO22X1_RVT ctmi_7685 ( .A1 ( fifo_data_out1[11] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( fifo_data_out2[11] ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6976 ) ) ;
AO221X1_RVT ctmi_7686 ( .A1 ( fifo_data_out0[10] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[10] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6977 ) , 
    .Y ( MXIOP_70_0 ) ) ;
AO22X1_RVT ctmi_7687 ( .A1 ( fifo_data_out1[10] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( fifo_data_out2[10] ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6977 ) ) ;
AO221X1_RVT ctmi_7688 ( .A1 ( fifo_data_out0[9] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[9] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6978 ) , 
    .Y ( MXIOP_71_0 ) ) ;
AO22X1_RVT ctmi_7689 ( .A1 ( fifo_data_out1[9] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( fifo_data_out2[9] ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6978 ) ) ;
AO221X1_RVT ctmi_7690 ( .A1 ( fifo_data_out0[8] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[8] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6979 ) , 
    .Y ( MXIOP_72_0 ) ) ;
AO22X1_RVT ctmi_7691 ( .A1 ( fifo_data_out1[8] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( fifo_data_out2[8] ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6979 ) ) ;
AO221X1_RVT ctmi_7692 ( .A1 ( fifo_data_out0[7] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[7] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6980 ) , 
    .Y ( MXIOP_61_0 ) ) ;
CGLNPRX2_HVT clock_gate_port1_i_port_fifo_wr_ptr_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port1_i_port_fifo_N13 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port1_i_port_fifo_wr_ptr_reg ) ) ;
AO22X1_RVT ctmi_7693 ( .A1 ( fifo_data_out1[7] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( fifo_data_out2[7] ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6980 ) ) ;
AO221X1_RVT ctmi_7694 ( .A1 ( fifo_data_out0[6] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[6] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6981 ) , 
    .Y ( MXIOP_62_0 ) ) ;
AND2X1_RVT ctmi_875 ( .A1 ( ctmn_6652 ) , .A2 ( ctmn_6835 ) , 
    .Y ( port0_i_port_fifo_N17 ) ) ;
AND2X1_RVT ctmi_7749 ( .A1 ( ctmn_7011 ) , .A2 ( port2_i_port_fifo_N13 ) , 
    .Y ( ctmn_7012 ) ) ;
AO22X1_RVT ctmi_7695 ( .A1 ( fifo_data_out1[6] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( fifo_data_out2[6] ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6981 ) ) ;
AO221X1_RVT ctmi_7696 ( .A1 ( fifo_data_out0[5] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[5] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6982 ) , 
    .Y ( MXIOP_63_0 ) ) ;
AO22X1_RVT ctmi_7697 ( .A1 ( fifo_data_out1[5] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( fifo_data_out2[5] ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6982 ) ) ;
AO221X1_RVT ctmi_7698 ( .A1 ( fifo_data_out0[4] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[4] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6983 ) , 
    .Y ( MXIOP_64_0 ) ) ;
AO22X1_RVT ctmi_7699 ( .A1 ( fifo_data_out1[4] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( HFSNET_2 ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6983 ) ) ;
AO221X1_RVT ctmi_7700 ( .A1 ( fifo_data_out0[3] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[3] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6984 ) , 
    .Y ( MXIOP_57_0 ) ) ;
AO22X1_RVT ctmi_7701 ( .A1 ( fifo_data_out1[3] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( fifo_data_out2[3] ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6984 ) ) ;
AO221X1_RVT ctmi_7702 ( .A1 ( fifo_data_out0[2] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[2] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6985 ) , 
    .Y ( MXIOP_58_0 ) ) ;
AO22X1_RVT ctmi_7703 ( .A1 ( fifo_data_out1[2] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( fifo_data_out2[2] ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6985 ) ) ;
CGLNPRX2_HVT clock_gate_port2_i_port_fifo_data_out_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port2_i_port_fifo_N17 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) ) ;
AO221X1_RVT ctmi_7704 ( .A1 ( fifo_data_out0[1] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[1] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6986 ) , 
    .Y ( MXIOP_59_0 ) ) ;
AO22X1_RVT ctmi_7705 ( .A1 ( fifo_data_out1[1] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( fifo_data_out2[1] ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6986 ) ) ;
AO221X1_RVT ctmi_7706 ( .A1 ( fifo_data_out0[0] ) , .A2 ( ctmn_6968 ) , 
    .A3 ( fifo_data_out3[0] ) , .A4 ( ctmn_6969 ) , .A5 ( ctmn_6987 ) , 
    .Y ( MXIOP_60_0 ) ) ;
AO22X1_RVT ctmi_7707 ( .A1 ( fifo_data_out1[0] ) , .A2 ( ctmn_6970 ) , 
    .A3 ( HFSNET_0 ) , .A4 ( ctmn_6971 ) , .Y ( ctmn_6987 ) ) ;
AO221X1_RVT ctmi_7708 ( .A1 ( fifo_data_out0[15] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[15] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_6994 ) , 
    .Y ( MXIOP_81_0 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_15_ ( 
    .D ( port2_i_port_fifo_N26 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_19 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out2[15] ) ) ;
NAND2X0_RVT ctmi_876 ( .A1 ( port0_i_port_fifo_N17 ) , .A2 ( ctmn_6734 ) , 
    .Y ( ctmn_6837 ) ) ;
AND3X2_RVT ctmi_7709 ( .A1 ( ctmn_6988 ) , .A2 ( ctmn_6989 ) , 
    .A3 ( TDBUF_348 ) , .Y ( ctmn_6990 ) ) ;
OR2X1_RVT ctmi_877 ( .A1 ( ctmn_6734 ) , .A2 ( port0_i_port_fifo_N17 ) , 
    .Y ( phfnn_198 ) ) ;
CGLNPRX2_HVT clock_gate_port2_i_port_fifo_fifo_count_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port2_i_port_fifo_N21 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port2_i_port_fifo_fifo_count_reg ) ) ;
AND3X4_LVT ctmi_7712 ( .A1 ( mux_sel3[0] ) , .A2 ( TDBUF_348 ) , 
    .A3 ( mux_sel3[1] ) , .Y ( ctmn_6991 ) ) ;
AO22X1_RVT ctmi_7713 ( .A1 ( fifo_data_out1[15] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( HFSNET_1 ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_6994 ) ) ;
AND3X2_RVT ctmi_7714 ( .A1 ( ctmn_6989 ) , .A2 ( mux_sel3[0] ) , 
    .A3 ( TDBUF_348 ) , .Y ( ctmn_6992 ) ) ;
AND3X4_LVT ctmi_7715 ( .A1 ( ctmn_6988 ) , .A2 ( TDBUF_348 ) , 
    .A3 ( mux_sel3[1] ) , .Y ( ctmn_6993 ) ) ;
AO221X1_RVT ctmi_7716 ( .A1 ( fifo_data_out0[14] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[14] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_6995 ) , 
    .Y ( MXIOP_82_0 ) ) ;
AO22X1_RVT ctmi_7717 ( .A1 ( fifo_data_out1[14] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( ZBUF_80_0 ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_6995 ) ) ;
AO221X1_RVT ctmi_7718 ( .A1 ( fifo_data_out0[13] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[13] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_6996 ) , 
    .Y ( MXIOP_83_0 ) ) ;
AO22X1_RVT ctmi_7719 ( .A1 ( fifo_data_out1[13] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( HFSNET_10 ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_6996 ) ) ;
AO221X1_RVT ctmi_7720 ( .A1 ( fifo_data_out0[12] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[12] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_6997 ) , 
    .Y ( MXIOP_84_0 ) ) ;
AO22X1_RVT ctmi_7721 ( .A1 ( fifo_data_out1[12] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( fifo_data_out2[12] ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_6997 ) ) ;
AO221X1_RVT ctmi_7722 ( .A1 ( fifo_data_out0[11] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[11] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_6998 ) , 
    .Y ( MXIOP_85_0 ) ) ;
AO22X1_RVT ctmi_7723 ( .A1 ( fifo_data_out1[11] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( fifo_data_out2[11] ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_6998 ) ) ;
AO221X1_RVT ctmi_7724 ( .A1 ( fifo_data_out0[10] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[10] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_6999 ) , 
    .Y ( MXIOP_86_0 ) ) ;
AO22X1_RVT ctmi_7725 ( .A1 ( fifo_data_out1[10] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( fifo_data_out2[10] ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_6999 ) ) ;
AO221X1_RVT ctmi_7726 ( .A1 ( fifo_data_out0[9] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[9] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_7000 ) , 
    .Y ( MXIOP_87_0 ) ) ;
AO22X1_RVT ctmi_7727 ( .A1 ( fifo_data_out1[9] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( fifo_data_out2[9] ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_7000 ) ) ;
AO221X1_RVT ctmi_7728 ( .A1 ( fifo_data_out0[8] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[8] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_7001 ) , 
    .Y ( MXIOP_88_0 ) ) ;
AO22X1_RVT ctmi_7729 ( .A1 ( fifo_data_out1[8] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( fifo_data_out2[8] ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_7001 ) ) ;
AO221X1_RVT ctmi_7730 ( .A1 ( fifo_data_out0[7] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[7] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_7002 ) , 
    .Y ( MXIOP_77_0 ) ) ;
AO22X1_RVT ctmi_7731 ( .A1 ( fifo_data_out1[7] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( fifo_data_out2[7] ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_7002 ) ) ;
AO221X1_RVT ctmi_7732 ( .A1 ( fifo_data_out0[6] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[6] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_7003 ) , 
    .Y ( MXIOP_78_0 ) ) ;
AO22X1_RVT ctmi_7733 ( .A1 ( fifo_data_out1[6] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( fifo_data_out2[6] ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_7003 ) ) ;
AO221X1_RVT ctmi_7734 ( .A1 ( fifo_data_out0[5] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[5] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_7004 ) , 
    .Y ( MXIOP_79_0 ) ) ;
AO22X1_RVT ctmi_7735 ( .A1 ( fifo_data_out1[5] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( fifo_data_out2[5] ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_7004 ) ) ;
AO221X1_RVT ctmi_7736 ( .A1 ( fifo_data_out0[4] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[4] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_7005 ) , 
    .Y ( MXIOP_80_0 ) ) ;
AO22X1_RVT ctmi_7737 ( .A1 ( fifo_data_out1[4] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( HFSNET_2 ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_7005 ) ) ;
AO221X1_RVT ctmi_7738 ( .A1 ( fifo_data_out0[3] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[3] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_7006 ) , 
    .Y ( MXIOP_73_0 ) ) ;
AO22X1_RVT ctmi_7739 ( .A1 ( fifo_data_out1[3] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( fifo_data_out2[3] ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_7006 ) ) ;
AO221X1_RVT ctmi_7740 ( .A1 ( fifo_data_out0[2] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[2] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_7007 ) , 
    .Y ( MXIOP_74_0 ) ) ;
AO22X1_RVT ctmi_7741 ( .A1 ( fifo_data_out1[2] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( fifo_data_out2[2] ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_7007 ) ) ;
AO221X1_RVT ctmi_7742 ( .A1 ( fifo_data_out0[1] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[1] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_7008 ) , 
    .Y ( MXIOP_75_0 ) ) ;
AO22X1_RVT ctmi_7743 ( .A1 ( fifo_data_out1[1] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( fifo_data_out2[1] ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_7008 ) ) ;
AO221X1_RVT ctmi_7744 ( .A1 ( fifo_data_out0[0] ) , .A2 ( ctmn_6990 ) , 
    .A3 ( fifo_data_out3[0] ) , .A4 ( ctmn_6991 ) , .A5 ( ctmn_7009 ) , 
    .Y ( MXIOP_76_0 ) ) ;
AO22X1_RVT ctmi_7745 ( .A1 ( fifo_data_out1[0] ) , .A2 ( ctmn_6992 ) , 
    .A3 ( HFSNET_0 ) , .A4 ( ctmn_6993 ) , .Y ( ctmn_7009 ) ) ;
NBUFFX4_HVT ctmi_879 ( .A ( active1 ) , .Y ( port1_valid_out ) ) ;
CGLNPRX2_HVT clock_gate_port2_i_port_fifo_wr_ptr_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port2_i_port_fifo_N13 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port2_i_port_fifo_wr_ptr_reg ) ) ;
NBUFFX4_HVT ctmi_880 ( .A ( active2 ) , .Y ( port2_valid_out ) ) ;
NAND2X0_RVT ctmi_7752 ( .A1 ( port2_i_port_fifo_wr_ptr[0] ) , 
    .A2 ( ctmn_7010 ) , .Y ( ctmn_7013 ) ) ;
NBUFFX4_HVT ctmi_881 ( .A ( active3 ) , .Y ( port3_valid_out ) ) ;
NAND2X0_RVT ctmi_7755 ( .A1 ( port2_i_port_fifo_wr_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_N16 ) , .Y ( ctmn_7015 ) ) ;
AND2X1_RVT ctmi_7759 ( .A1 ( port2_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( port2_i_port_fifo_N13 ) , .Y ( ctmn_7017 ) ) ;
MUX21X1_RVT ctmi_7766 ( .A1 ( ctmn_6748 ) , .A2 ( port0_i_current_state[1] ) , 
    .S0 ( port0_i_current_state[0] ) , .Y ( ctmn_7019 ) ) ;
NBUFFX4_HVT ctmi_882 ( .A ( active0 ) , .Y ( port0_valid_out ) ) ;
AO21X1_RVT ctmi_7768 ( .A1 ( ctmn_7019 ) , .A2 ( ctmn_6652 ) , 
    .A3 ( ctmn_6761 ) , .Y ( port0_i_next_state[0] ) ) ;
AND2X1_RVT ctmi_7769 ( .A1 ( phfnn_283 ) , .A2 ( ctmn_6917 ) , 
    .Y ( port3_i_next_state[1] ) ) ;
MUX21X1_RVT ctmi_7770 ( .A1 ( ctmn_6777 ) , .A2 ( port3_i_current_state[1] ) , 
    .S0 ( port3_i_current_state[0] ) , .Y ( ctmn_7021 ) ) ;
AO21X1_RVT ctmi_7772 ( .A1 ( ctmn_7021 ) , .A2 ( ctmn_6648 ) , 
    .A3 ( ctmn_6781 ) , .Y ( port3_i_next_state[0] ) ) ;
AO21X1_RVT ctmi_7773 ( .A1 ( ctmn_6875 ) , .A2 ( ctmn_6642 ) , 
    .A3 ( phfnn_332 ) , .Y ( port1_i_next_state[0] ) ) ;
AND2X1_RVT ctmi_7775 ( .A1 ( ctmn_7023 ) , .A2 ( port0_i_port_fifo_N21 ) , 
    .Y ( port0_i_port_fifo_N25 ) ) ;
AND3X1_HVT ctmi_7784 ( .A1 ( ctmn_7027 ) , .A2 ( port3_i_port_fifo_N13 ) , 
    .A3 ( ctmn_7028 ) , .Y ( port3_i_port_fifo_N11 ) ) ;
NOR3X0_HVT ctmi_7786 ( .A1 ( ctmn_6897 ) , 
    .A2 ( port3_i_port_fifo_wr_ptr[0] ) , 
    .A3 ( port3_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_7028 ) ) ;
OR2X1_RVT ctmi_7788 ( .A1 ( port3_i_port_fifo_wr_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_N16 ) , .Y ( ctmn_7029 ) ) ;
NAND2X0_RVT ctmi_7791 ( .A1 ( port3_i_port_fifo_wr_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_N16 ) , .Y ( ctmn_7031 ) ) ;
AND2X1_RVT ctmi_7795 ( .A1 ( port3_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( port3_i_port_fifo_N13 ) , .Y ( ctmn_7033 ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[125] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[124] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[123] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[122] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[121] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[120] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[119] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[118] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[117] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[116] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[115] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[114] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[113] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_56 ) , 
    .Q ( port3_i_port_fifo_mem[112] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[111] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[110] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[109] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[108] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[107] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[106] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[105] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[104] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[103] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[102] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[101] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[100] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[99] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[98] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[97] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_55 ) , 
    .Q ( port3_i_port_fifo_mem[96] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[95] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[94] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[93] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[92] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[91] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[90] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[89] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[88] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[87] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[86] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[85] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[84] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[83] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[82] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[81] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_54 ) , 
    .Q ( port3_i_port_fifo_mem[80] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[79] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[78] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[77] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[76] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[75] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[74] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[73] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[72] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[71] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[70] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[69] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[68] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[67] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[66] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[65] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_53 ) , 
    .Q ( port3_i_port_fifo_mem[64] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[63] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[62] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[61] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[60] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[59] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[58] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[57] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[56] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[55] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[54] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[53] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[52] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[51] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[50] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[49] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_52 ) , 
    .Q ( port3_i_port_fifo_mem[48] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[47] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[46] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[45] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[44] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[43] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[42] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[41] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[40] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[39] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[38] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[37] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[36] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[35] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[34] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[33] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_51 ) , 
    .Q ( port3_i_port_fifo_mem[32] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[31] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[30] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[29] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[28] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[27] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[26] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[25] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[24] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[23] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[22] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[21] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[20] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[19] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[18] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[17] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_50 ) , 
    .Q ( port3_i_port_fifo_mem[16] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[15] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[14] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[13] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[12] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[11] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[10] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[9] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[8] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[7] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[6] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[5] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[4] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[3] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[2] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[1] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_49 ) , 
    .Q ( port3_i_port_fifo_mem[0] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_rd_ptr_reg_2_ ( .D ( port3_i_port_fifo_N18 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_22 ) , 
    .RSTB ( rst_n ) , .Q ( port3_i_port_fifo_rd_ptr[2] ) , .QN ( ctmn_6610 ) ) ;
SDFFARX1_HVT port3_i_current_state_reg_0_ ( .D ( port3_i_next_state[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port3_i_current_state[0] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_rd_ptr_reg_0_ ( .D ( port3_i_port_fifo_N20 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_22 ) , 
    .RSTB ( rst_n ) , .Q ( port3_i_port_fifo_rd_ptr[0] ) , 
    .QN ( port3_i_port_fifo_N20 ) ) ;
SDFFARX1_HVT port3_i_port_fifo_fifo_count_reg_3_ ( 
    .D ( port3_i_port_fifo_N22 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_63 ) , .RSTB ( rst_n ) , 
    .Q ( port3_i_port_fifo_fifo_count[3] ) , .QN ( ctmn_6647 ) ) ;
SDFFARX1_HVT port3_i_port_fifo_rd_ptr_reg_1_ ( .D ( port3_i_port_fifo_N19 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_22 ) , 
    .RSTB ( rst_n ) , .Q ( port3_i_port_fifo_rd_ptr[1] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_fifo_count_reg_2_ ( 
    .D ( port3_i_port_fifo_N23 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_63 ) , .RSTB ( rst_n ) , 
    .Q ( port3_i_port_fifo_fifo_count[2] ) , .QN ( ctmn_7066 ) ) ;
SDFFASX1_HVT port3_i_port_fifo_fifo_count_reg_1_ ( .D ( ctmn_7211 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_63 ) , 
    .SETB ( rst_n ) , .QN ( port3_i_port_fifo_fifo_count[1] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_fifo_count_reg_0_ ( 
    .D ( port3_i_port_fifo_N25 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_23 ) , .RSTB ( rst_n ) , 
    .Q ( port3_i_port_fifo_fifo_count[0] ) , .QN ( ctmn_7026 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel3_reg_1_ ( .D ( top_arb_i_N19 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel3[1] ) , 
    .QN ( ctmn_6989 ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_14_ ( 
    .D ( port3_i_port_fifo_N27 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[14] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_13_ ( 
    .D ( port3_i_port_fifo_N28 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[13] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_12_ ( 
    .D ( port3_i_port_fifo_N29 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[12] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_11_ ( 
    .D ( port3_i_port_fifo_N30 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[11] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_10_ ( 
    .D ( port3_i_port_fifo_N31 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[10] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_9_ ( 
    .D ( port3_i_port_fifo_N32 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[9] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_8_ ( 
    .D ( port3_i_port_fifo_N33 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[8] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_7_ ( 
    .D ( port3_i_port_fifo_N34 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[7] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_6_ ( 
    .D ( port3_i_port_fifo_N35 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[6] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_5_ ( 
    .D ( port3_i_port_fifo_N36 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[5] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_4_ ( 
    .D ( port3_i_port_fifo_N37 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[4] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_3_ ( 
    .D ( port3_i_port_fifo_N38 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[3] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_2_ ( 
    .D ( port3_i_port_fifo_N39 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[2] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_1_ ( 
    .D ( port3_i_port_fifo_N40 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[1] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_0_ ( 
    .D ( port3_i_port_fifo_N41 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clock_gate_net_22 ) , .RSTB ( rst_n ) , .Q ( fifo_data_out3[0] ) ) ;
SDFFARX1_HVT top_arb_i_active0_reg ( .D ( top_arb_i_N23 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( active0 ) ) ;
AO22X1_RVT ctmi_7804 ( .A1 ( ctmn_7040 ) , .A2 ( ctmn_6835 ) , 
    .A3 ( ctmn_7042 ) , .A4 ( phfnn_337 ) , .Y ( port0_i_port_fifo_N23 ) ) ;
AOI222X1_RVT ctmi_7805 ( .A1 ( ctmn_6733 ) , .A2 ( ctmn_7038 ) , 
    .A3 ( ctmn_6733 ) , .A4 ( ctmn_7039 ) , .A5 ( ctmn_6733 ) , 
    .A6 ( port0_valid_in ) , .Y ( ctmn_7040 ) ) ;
NOR2X1_RVT ctmi_7807 ( .A1 ( port0_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port0_i_port_fifo_fifo_count[0] ) , .Y ( ctmn_7039 ) ) ;
OA21X1_RVT ctmi_7808 ( .A1 ( port0_i_port_fifo_fifo_count[2] ) , 
    .A2 ( ctmn_7041 ) , .A3 ( phfnn_275 ) , .Y ( ctmn_7042 ) ) ;
AND2X1_RVT ctmi_7809 ( .A1 ( port0_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port0_i_port_fifo_fifo_count[0] ) , .Y ( ctmn_7041 ) ) ;
AOI22X1_RVT ctmi_8123 ( .A1 ( ctmn_7206 ) , .A2 ( ctmn_6837 ) , 
    .A3 ( phfnn_295 ) , .A4 ( phfnn_198 ) , .Y ( port0_i_port_fifo_N24 ) ) ;
OR2X1_RVT ctmi_8124 ( .A1 ( ctmn_7039 ) , .A2 ( ctmn_7041 ) , 
    .Y ( ctmn_7206 ) ) ;
CGLNPRX2_HVT clock_gate_port3_i_port_fifo_data_out_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port3_i_port_fifo_N17 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) ) ;
CGLNPRX2_HVT clock_gate_port3_i_port_fifo_fifo_count_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port3_i_port_fifo_N21 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port3_i_port_fifo_fifo_count_reg ) ) ;
CGLNPRX2_HVT clock_gate_port3_i_port_fifo_wr_ptr_reg ( 
    .CLK ( clock_gate_net_12 ) , .EN ( port3_i_port_fifo_N13 ) , 
    .SE ( 1'b0 ) , .GCLK ( clk_clock_gate_port3_i_port_fifo_wr_ptr_reg ) ) ;
SDFFARX1_HVT port2_i_port_fifo_wr_ptr_reg_0_ ( .D ( port2_i_port_fifo_N16 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_21 ) , 
    .RSTB ( rst_n ) , .Q ( port2_i_port_fifo_wr_ptr[0] ) , 
    .QN ( port2_i_port_fifo_N16 ) ) ;
NBUFFX4_HVT MXIOP_25 ( .A ( MXIOP_25_0 ) , .Y ( port0_source_out[3] ) ) ;
NBUFFX4_HVT MXIOP_26 ( .A ( MXIOP_26_0 ) , .Y ( port0_source_out[2] ) ) ;
NBUFFX4_HVT MXIOP_27 ( .A ( MXIOP_27_0 ) , .Y ( port0_source_out[1] ) ) ;
NBUFFX4_HVT MXIOP_28 ( .A ( MXIOP_28_0 ) , .Y ( port0_source_out[0] ) ) ;
NBUFFX4_HVT MXIOP_29 ( .A ( MXIOP_29_0 ) , .Y ( port0_target_out[3] ) ) ;
NBUFFX4_HVT MXIOP_30 ( .A ( MXIOP_30_0 ) , .Y ( port0_target_out[2] ) ) ;
NBUFFX4_HVT MXIOP_31 ( .A ( MXIOP_31_0 ) , .Y ( port0_target_out[1] ) ) ;
NBUFFX4_HVT MXIOP_32 ( .A ( MXIOP_32_0 ) , .Y ( port0_target_out[0] ) ) ;
NBUFFX2_RVT MXIOP_33 ( .A ( MXIOP_33_0 ) , .Y ( port0_data_out[7] ) ) ;
NBUFFX4_HVT MXIOP_34 ( .A ( MXIOP_34_0 ) , .Y ( port0_data_out[6] ) ) ;
NBUFFX4_HVT MXIOP_35 ( .A ( MXIOP_35_0 ) , .Y ( port0_data_out[5] ) ) ;
NBUFFX4_HVT MXIOP_36 ( .A ( MXIOP_36_0 ) , .Y ( port0_data_out[4] ) ) ;
NBUFFX4_HVT MXIOP_37 ( .A ( MXIOP_37_0 ) , .Y ( port0_data_out[3] ) ) ;
NBUFFX4_HVT MXIOP_38 ( .A ( MXIOP_38_0 ) , .Y ( port0_data_out[2] ) ) ;
NBUFFX4_HVT MXIOP_39 ( .A ( MXIOP_39_0 ) , .Y ( port0_data_out[1] ) ) ;
NBUFFX4_HVT MXIOP_40 ( .A ( MXIOP_40_0 ) , .Y ( port0_data_out[0] ) ) ;
NBUFFX4_HVT MXIOP_41 ( .A ( MXIOP_41_0 ) , .Y ( port1_source_out[3] ) ) ;
NBUFFX4_HVT MXIOP_42 ( .A ( MXIOP_42_0 ) , .Y ( port1_source_out[2] ) ) ;
NBUFFX4_HVT MXIOP_43 ( .A ( MXIOP_43_0 ) , .Y ( port1_source_out[1] ) ) ;
NBUFFX4_HVT MXIOP_44 ( .A ( MXIOP_44_0 ) , .Y ( port1_source_out[0] ) ) ;
NBUFFX4_HVT MXIOP_45 ( .A ( MXIOP_45_0 ) , .Y ( port1_target_out[3] ) ) ;
NBUFFX4_HVT MXIOP_46 ( .A ( MXIOP_46_0 ) , .Y ( port1_target_out[2] ) ) ;
NBUFFX4_HVT MXIOP_47 ( .A ( MXIOP_47_0 ) , .Y ( port1_target_out[1] ) ) ;
NBUFFX4_HVT MXIOP_48 ( .A ( MXIOP_48_0 ) , .Y ( port1_target_out[0] ) ) ;
NBUFFX4_HVT MXIOP_49 ( .A ( MXIOP_49_0 ) , .Y ( port1_data_out[7] ) ) ;
NBUFFX4_HVT MXIOP_50 ( .A ( MXIOP_50_0 ) , .Y ( port1_data_out[6] ) ) ;
NBUFFX4_HVT MXIOP_51 ( .A ( MXIOP_51_0 ) , .Y ( port1_data_out[5] ) ) ;
NBUFFX4_HVT MXIOP_52 ( .A ( MXIOP_52_0 ) , .Y ( port1_data_out[4] ) ) ;
NBUFFX4_HVT MXIOP_53 ( .A ( MXIOP_53_0 ) , .Y ( port1_data_out[3] ) ) ;
NBUFFX2_RVT MXIOP_54 ( .A ( MXIOP_54_0 ) , .Y ( port1_data_out[2] ) ) ;
NBUFFX4_HVT MXIOP_55 ( .A ( MXIOP_55_0 ) , .Y ( port1_data_out[1] ) ) ;
NBUFFX4_HVT MXIOP_56 ( .A ( MXIOP_56_0 ) , .Y ( port1_data_out[0] ) ) ;
NBUFFX4_HVT MXIOP_57 ( .A ( MXIOP_57_0 ) , .Y ( port2_source_out[3] ) ) ;
NBUFFX4_HVT MXIOP_58 ( .A ( MXIOP_58_0 ) , .Y ( port2_source_out[2] ) ) ;
NBUFFX4_HVT MXIOP_59 ( .A ( MXIOP_59_0 ) , .Y ( port2_source_out[1] ) ) ;
NBUFFX4_HVT MXIOP_60 ( .A ( MXIOP_60_0 ) , .Y ( port2_source_out[0] ) ) ;
NBUFFX4_HVT MXIOP_61 ( .A ( MXIOP_61_0 ) , .Y ( port2_target_out[3] ) ) ;
NBUFFX4_HVT MXIOP_62 ( .A ( MXIOP_62_0 ) , .Y ( port2_target_out[2] ) ) ;
NBUFFX4_HVT MXIOP_63 ( .A ( MXIOP_63_0 ) , .Y ( port2_target_out[1] ) ) ;
NBUFFX4_HVT MXIOP_64 ( .A ( MXIOP_64_0 ) , .Y ( port2_target_out[0] ) ) ;
NBUFFX4_HVT MXIOP_65 ( .A ( MXIOP_65_0 ) , .Y ( port2_data_out[7] ) ) ;
NBUFFX4_HVT MXIOP_66 ( .A ( MXIOP_66_0 ) , .Y ( port2_data_out[6] ) ) ;
NBUFFX4_HVT MXIOP_67 ( .A ( MXIOP_67_0 ) , .Y ( port2_data_out[5] ) ) ;
NBUFFX4_HVT MXIOP_68 ( .A ( MXIOP_68_0 ) , .Y ( port2_data_out[4] ) ) ;
NBUFFX4_HVT MXIOP_69 ( .A ( MXIOP_69_0 ) , .Y ( port2_data_out[3] ) ) ;
NBUFFX4_HVT MXIOP_70 ( .A ( MXIOP_70_0 ) , .Y ( port2_data_out[2] ) ) ;
NBUFFX4_HVT MXIOP_71 ( .A ( MXIOP_71_0 ) , .Y ( port2_data_out[1] ) ) ;
NBUFFX4_HVT MXIOP_72 ( .A ( MXIOP_72_0 ) , .Y ( port2_data_out[0] ) ) ;
NBUFFX4_HVT MXIOP_73 ( .A ( MXIOP_73_0 ) , .Y ( port3_source_out[3] ) ) ;
NBUFFX4_HVT MXIOP_74 ( .A ( MXIOP_74_0 ) , .Y ( port3_source_out[2] ) ) ;
NBUFFX4_HVT MXIOP_75 ( .A ( MXIOP_75_0 ) , .Y ( port3_source_out[1] ) ) ;
NBUFFX4_HVT MXIOP_76 ( .A ( MXIOP_76_0 ) , .Y ( port3_source_out[0] ) ) ;
NBUFFX2_RVT MXIOP_77 ( .A ( MXIOP_77_0 ) , .Y ( port3_target_out[3] ) ) ;
NBUFFX2_RVT MXIOP_78 ( .A ( MXIOP_78_0 ) , .Y ( port3_target_out[2] ) ) ;
NBUFFX4_HVT MXIOP_79 ( .A ( MXIOP_79_0 ) , .Y ( port3_target_out[1] ) ) ;
NBUFFX4_HVT MXIOP_80 ( .A ( MXIOP_80_0 ) , .Y ( port3_target_out[0] ) ) ;
NBUFFX2_RVT MXIOP_81 ( .A ( MXIOP_81_0 ) , .Y ( port3_data_out[7] ) ) ;
NBUFFX4_HVT MXIOP_82 ( .A ( MXIOP_82_0 ) , .Y ( port3_data_out[6] ) ) ;
NBUFFX4_HVT MXIOP_83 ( .A ( MXIOP_83_0 ) , .Y ( port3_data_out[5] ) ) ;
NBUFFX4_HVT MXIOP_84 ( .A ( MXIOP_84_0 ) , .Y ( port3_data_out[4] ) ) ;
NBUFFX4_HVT MXIOP_85 ( .A ( MXIOP_85_0 ) , .Y ( port3_data_out[3] ) ) ;
NBUFFX4_HVT MXIOP_86 ( .A ( MXIOP_86_0 ) , .Y ( port3_data_out[2] ) ) ;
NBUFFX4_HVT MXIOP_87 ( .A ( MXIOP_87_0 ) , .Y ( port3_data_out[1] ) ) ;
NBUFFX2_RVT MXIOP_88 ( .A ( MXIOP_88_0 ) , .Y ( port3_data_out[0] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_wr_ptr_reg_1_ ( .D ( port3_i_port_fifo_N15 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_24 ) , 
    .RSTB ( rst_n ) , .Q ( port3_i_port_fifo_wr_ptr[1] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_wr_ptr_reg_2_ ( .D ( port1_i_port_fifo_N14 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_18 ) , 
    .RSTB ( rst_n ) , .Q ( port1_i_port_fifo_wr_ptr[2] ) , .QN ( ctmn_6951 ) ) ;
OR2X1_RVT ctmi_7174 ( .A1 ( port0_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_N20 ) , .Y ( ctmn_6599 ) ) ;
OR3X2_RVT ctmi_7209 ( .A1 ( port2_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6625 ) , 
    .Y ( ctmn_6630 ) ) ;
OR2X2_RVT ctmi_7192 ( .A1 ( port3_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6611 ) , .Y ( ctmn_6615 ) ) ;
OR3X2_RVT ctmi_7175 ( .A1 ( port0_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_rd_ptr[0] ) , 
    .A3 ( port0_i_port_fifo_rd_ptr[2] ) , .Y ( ctmn_6601 ) ) ;
OR2X2_RVT ctmi_7193 ( .A1 ( ctmn_6610 ) , .A2 ( ctmn_6616 ) , 
    .Y ( ctmn_6617 ) ) ;
OR2X2_RVT ctmi_7210 ( .A1 ( ctmn_6625 ) , .A2 ( ctmn_6631 ) , 
    .Y ( ctmn_6632 ) ) ;
OA221X1_RVT ctmi_7290 ( .A1 ( ctmn_6587 ) , 
    .A2 ( port1_i_port_fifo_mem[87] ) , .A3 ( port1_i_port_fifo_mem[71] ) , 
    .A4 ( ctmn_6584 ) , .A5 ( ctmn_6702_CDR1 ) , .Y ( ctmn_6703_CDR1 ) ) ;
OA22X1_RVT ctmi_7291 ( .A1 ( port1_i_port_fifo_mem[55] ) , .A2 ( ctmn_6590 ) , 
    .A3 ( ctmn_6591 ) , .A4 ( port1_i_port_fifo_mem[23] ) , 
    .Y ( ctmn_6702_CDR1 ) ) ;
OA221X1_RVT ctmi_7331 ( .A1 ( port0_i_port_fifo_mem[36] ) , 
    .A2 ( ctmn_6603 ) , .A3 ( ctmn_6602 ) , 
    .A4 ( port0_i_port_fifo_mem[84] ) , .A5 ( ctmn_6736_CDR1 ) , 
    .Y ( ctmn_6737 ) ) ;
OA221X1_RVT ctmi_7332 ( .A1 ( port0_i_port_fifo_mem[100] ) , 
    .A2 ( ctmn_6597 ) , .A3 ( ctmn_6606 ) , 
    .A4 ( port0_i_port_fifo_mem[52] ) , .A5 ( ctmn_6735_CDR1 ) , 
    .Y ( ctmn_6736_CDR1 ) ) ;
OA22X1_RVT ctmi_7333 ( .A1 ( port0_i_port_fifo_mem[4] ) , .A2 ( ctmn_6601 ) , 
    .A3 ( ctmn_6605 ) , .A4 ( port0_i_port_fifo_mem[116] ) , 
    .Y ( ctmn_6735_CDR1 ) ) ;
AO221X1_RVT ctmi_7367 ( .A1 ( phfnn_318 ) , .A2 ( HFSNET_7 ) , 
    .A3 ( phfnn_318 ) , .A4 ( phfnn_312 ) , .A5 ( phfnn_270 ) , 
    .Y ( ctmn_6764 ) ) ;
OA221X1_RVT ctmi_7368 ( .A1 ( ctmn_6726 ) , .A2 ( ctmn_6731 ) , 
    .A3 ( phfnn_323 ) , .A4 ( ctmn_6765 ) , .A5 ( ctmn_6770 ) , 
    .Y ( ctmn_6771 ) ) ;
OA221X1_RVT ctmi_7369 ( .A1 ( ctmn_6665 ) , .A2 ( ctmn_6668 ) , 
    .A3 ( ctmn_6695 ) , .A4 ( ctmn_6700 ) , .A5 ( ctmn_6769 ) , 
    .Y ( ctmn_6770 ) ) ;
NOR3X1_RVT ctmi_7370 ( .A1 ( ctmn_6767 ) , .A2 ( port2_i_current_state[0] ) , 
    .A3 ( ctmn_6768 ) , .Y ( ctmn_6769 ) ) ;
AND4X1_RVT ctmi_7372 ( .A1 ( ctmn_6665 ) , .A2 ( ctmn_6695 ) , 
    .A3 ( ctmn_6726 ) , .A4 ( phfnn_323 ) , .Y ( ctmn_6768 ) ) ;
OA22X1_RVT ctmi_7374 ( .A1 ( ctmn_6775 ) , .A2 ( phfnn_331 ) , 
    .A3 ( ctmn_6784 ) , .A4 ( ctmn_6790 ) , .Y ( ctmn_6791 ) ) ;
NAND2X1_RVT ctmi_7227 ( .A1 ( port3_i_port_fifo_N36 ) , .A2 ( ctmn_6648 ) , 
    .Y ( ctmn_6649 ) ) ;
NAND2X2_HVT ctmi_7228 ( .A1 ( ctmn_6646 ) , .A2 ( ctmn_6647 ) , 
    .Y ( ctmn_6648 ) ) ;
NOR3X0_RVT ctmi_7229 ( .A1 ( port3_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port3_i_port_fifo_fifo_count[0] ) , 
    .A3 ( port3_i_port_fifo_fifo_count[2] ) , .Y ( ctmn_6646 ) ) ;
NAND2X2_RVT ctmi_7232 ( .A1 ( ctmn_6650 ) , .A2 ( ctmn_6651 ) , 
    .Y ( ctmn_6652 ) ) ;
NOR3X1_RVT ctmi_7233 ( .A1 ( port0_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port0_i_port_fifo_fifo_count[0] ) , 
    .A3 ( port0_i_port_fifo_fifo_count[2] ) , .Y ( ctmn_6650 ) ) ;
NAND2X0_RVT ctmi_7235 ( .A1 ( top_arb_i_common_ptr[0] ) , .A2 ( ctmn_6645 ) , 
    .Y ( ctmn_6654 ) ) ;
AO221X1_RVT ctmi_7237 ( .A1 ( HFSNET_7 ) , .A2 ( phfnn_316 ) , 
    .A3 ( HFSNET_7 ) , .A4 ( top_arb_i_common_ptr[0] ) , .A5 ( ctmn_6661 ) , 
    .Y ( ctmn_6662 ) ) ;
AOI21X1_RVT ctmi_7238 ( .A1 ( port2_i_port_fifo_N36 ) , .A2 ( ctmn_6660 ) , 
    .A3 ( ctmn_6645 ) , .Y ( ctmn_6661 ) ) ;
NAND2X0_RVT ctmi_7194 ( .A1 ( port3_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_rd_ptr[0] ) , .Y ( ctmn_6616 ) ) ;
OA221X1_RVT ctmi_7195 ( .A1 ( port3_i_port_fifo_mem[37] ) , 
    .A2 ( ctmn_6618 ) , .A3 ( ctmn_6619 ) , 
    .A4 ( port3_i_port_fifo_mem[69] ) , .A5 ( ctmn_6622 ) , .Y ( ctmn_6623 ) ) ;
OR2X2_RVT ctmi_7196 ( .A1 ( port3_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6613 ) , .Y ( ctmn_6618 ) ) ;
OR3X2_RVT ctmi_7197 ( .A1 ( port3_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6610 ) , 
    .Y ( ctmn_6619 ) ) ;
OA22X1_RVT ctmi_7198 ( .A1 ( port3_i_port_fifo_mem[53] ) , .A2 ( ctmn_6620 ) , 
    .A3 ( ctmn_6621 ) , .A4 ( port3_i_port_fifo_mem[5] ) , .Y ( ctmn_6622 ) ) ;
NAND3X2_RVT ctmi_7199 ( .A1 ( port3_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6610 ) , 
    .Y ( ctmn_6620 ) ) ;
OR3X2_RVT ctmi_7200 ( .A1 ( port3_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_rd_ptr[0] ) , 
    .A3 ( port3_i_port_fifo_rd_ptr[2] ) , .Y ( ctmn_6621 ) ) ;
NAND2X0_RVT ctmi_7211 ( .A1 ( port2_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_rd_ptr[0] ) , .Y ( ctmn_6631 ) ) ;
OA221X1_RVT ctmi_7212 ( .A1 ( port2_i_port_fifo_mem[53] ) , 
    .A2 ( ctmn_6633 ) , .A3 ( port2_i_port_fifo_mem[21] ) , 
    .A4 ( ctmn_6635 ) , .A5 ( ctmn_6637_CDR1 ) , .Y ( ctmn_6638_CDR1 ) ) ;
NAND3X2_RVT ctmi_7213 ( .A1 ( port2_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6625 ) , 
    .Y ( ctmn_6633 ) ) ;
OR3X2_RVT ctmi_7214 ( .A1 ( port2_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_rd_ptr[0] ) , 
    .A3 ( port2_i_port_fifo_rd_ptr[2] ) , .Y ( ctmn_6634 ) ) ;
OA22X1_RVT ctmi_7215 ( .A1 ( ctmn_6634 ) , .A2 ( port2_i_port_fifo_mem[5] ) , 
    .A3 ( ctmn_6636 ) , .A4 ( port2_i_port_fifo_mem[37] ) , 
    .Y ( ctmn_6637_CDR1 ) ) ;
OR2X2_RVT ctmi_7216 ( .A1 ( port2_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6626 ) , .Y ( ctmn_6635 ) ) ;
OR2X2_RVT ctmi_7217 ( .A1 ( port2_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6628 ) , .Y ( ctmn_6636 ) ) ;
AND2X1_RVT ctmi_7239 ( .A1 ( top_arb_i_N22 ) , .A2 ( ctmn_6659 ) , 
    .Y ( ctmn_6660 ) ) ;
NAND2X2_RVT ctmi_7240 ( .A1 ( ctmn_6657 ) , .A2 ( ctmn_6658 ) , 
    .Y ( ctmn_6659 ) ) ;
NOR3X1_RVT ctmi_7241 ( .A1 ( port2_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port2_i_port_fifo_fifo_count[0] ) , 
    .A3 ( port2_i_port_fifo_fifo_count[2] ) , .Y ( ctmn_6657 ) ) ;
AO21X1_RVT ctmi_7245 ( .A1 ( ctmn_6643 ) , .A2 ( ctmn_6665 ) , 
    .A3 ( ctmn_6661 ) , .Y ( ctmn_6666 ) ) ;
NAND2X0_RVT ctmi_7246 ( .A1 ( port2_i_port_fifo_N36 ) , .A2 ( ctmn_6659 ) , 
    .Y ( ctmn_6665 ) ) ;
AO22X1_RVT ctmi_7249 ( .A1 ( top_arb_i_common_ptr[1] ) , .A2 ( HFSNET_5 ) , 
    .A3 ( ctmn_6643 ) , .A4 ( ctmn_6656 ) , .Y ( ctmn_6668 ) ) ;
OA221X1_RVT ctmi_7252 ( .A1 ( port1_i_port_fifo_mem[38] ) , 
    .A2 ( ctmn_6581 ) , .A3 ( ctmn_6590 ) , 
    .A4 ( port1_i_port_fifo_mem[54] ) , .A5 ( ctmn_6670 ) , .Y ( ctmn_6671 ) ) ;
OA221X1_RVT ctmi_7176 ( .A1 ( ctmn_6606 ) , 
    .A2 ( port0_i_port_fifo_mem[53] ) , .A3 ( ctmn_6603 ) , 
    .A4 ( port0_i_port_fifo_mem[37] ) , .A5 ( ctmn_6607_CDR1 ) , 
    .Y ( ctmn_6608_CDR1 ) ) ;
OR2X2_RVT ctmi_7177 ( .A1 ( ctmn_6595 ) , .A2 ( ctmn_6599 ) , 
    .Y ( ctmn_6602 ) ) ;
OR2X2_RVT ctmi_7178 ( .A1 ( port0_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6596 ) , .Y ( ctmn_6603 ) ) ;
OA22X1_RVT ctmi_7179 ( .A1 ( port0_i_port_fifo_mem[85] ) , .A2 ( ctmn_6602 ) , 
    .A3 ( port0_i_port_fifo_mem[117] ) , .A4 ( ctmn_6605 ) , 
    .Y ( ctmn_6607_CDR1 ) ) ;
OR2X2_RVT ctmi_7180 ( .A1 ( ctmn_6595 ) , .A2 ( ctmn_6604 ) , 
    .Y ( ctmn_6605 ) ) ;
NAND2X0_RVT ctmi_7181 ( .A1 ( port0_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_rd_ptr[0] ) , .Y ( ctmn_6604 ) ) ;
NAND3X2_RVT ctmi_7182 ( .A1 ( port0_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6595 ) , 
    .Y ( ctmn_6606 ) ) ;
OA22X1_RVT ctmi_7253 ( .A1 ( ctmn_6589 ) , 
    .A2 ( port1_i_port_fifo_mem[118] ) , .A3 ( port1_i_port_fifo_mem[86] ) , 
    .A4 ( ctmn_6587 ) , .Y ( ctmn_6670 ) ) ;
NAND3X0_RVT ctmi_7375 ( .A1 ( ctmn_6774 ) , .A2 ( port3_i_port_fifo_N37 ) , 
    .A3 ( ctmn_6648 ) , .Y ( ctmn_6775 ) ) ;
AND2X1_RVT ctmi_7376 ( .A1 ( ctmn_6755 ) , .A2 ( ctmn_6773 ) , 
    .Y ( ctmn_6774 ) ) ;
AO221X1_RVT ctmi_7377 ( .A1 ( HFSNET_7 ) , .A2 ( phfnn_318 ) , 
    .A3 ( top_arb_i_common_ptr[1] ) , .A4 ( phfnn_323 ) , 
    .A5 ( top_arb_i_common_ptr[0] ) , .Y ( ctmn_6773 ) ) ;
OA221X1_RVT ctmi_7378 ( .A1 ( ctmn_6776 ) , .A2 ( ctmn_6649 ) , 
    .A3 ( phfnn_312 ) , .A4 ( ctmn_6774 ) , .A5 ( ctmn_6780 ) , 
    .Y ( ctmn_6781 ) ) ;
OA221X1_RVT ctmi_7380 ( .A1 ( ctmn_6698 ) , .A2 ( ctmn_6690 ) , 
    .A3 ( ctmn_6721 ) , .A4 ( ctmn_6729 ) , .A5 ( ctmn_6779 ) , 
    .Y ( ctmn_6780 ) ) ;
NOR3X1_RVT ctmi_7381 ( .A1 ( ctmn_6777 ) , .A2 ( port3_i_current_state[0] ) , 
    .A3 ( ctmn_6778 ) , .Y ( ctmn_6779 ) ) ;
AND4X1_RVT ctmi_7383 ( .A1 ( ctmn_6649 ) , .A2 ( ctmn_6690 ) , 
    .A3 ( ctmn_6721 ) , .A4 ( phfnn_312 ) , .Y ( ctmn_6778 ) ) ;
NAND3X0_RVT ctmi_7385 ( .A1 ( phfnn_321 ) , .A2 ( ctmn_6773 ) , 
    .A3 ( ctmn_6764 ) , .Y ( ctmn_6784 ) ) ;
AO221X1_RVT ctmi_7387 ( .A1 ( phfnn_319 ) , .A2 ( ctmn_6785 ) , 
    .A3 ( ctmn_6784 ) , .A4 ( phfnn_321 ) , .A5 ( ctmn_6789 ) , 
    .Y ( ctmn_6790 ) ) ;
NAND2X0_RVT ctmi_7388 ( .A1 ( ctmn_6656 ) , .A2 ( ctmn_6662 ) , 
    .Y ( ctmn_6785 ) ) ;
NAND4X0_RVT ctmi_7389 ( .A1 ( ctmn_6786 ) , .A2 ( port1_i_current_state[1] ) , 
    .A3 ( ctmn_6787 ) , .A4 ( ctmn_6788 ) , .Y ( ctmn_6789 ) ) ;
OA22X1_RVT ctmi_7390 ( .A1 ( ctmn_6693 ) , .A2 ( phfnn_322 ) , 
    .A3 ( ctmn_6714 ) , .A4 ( ctmn_6724 ) , .Y ( ctmn_6786 ) ) ;
NAND4X0_RVT ctmi_7392 ( .A1 ( ctmn_6643 ) , .A2 ( phfnn_322 ) , 
    .A3 ( ctmn_6714 ) , .A4 ( ctmn_6751 ) , .Y ( ctmn_6788 ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_32 ) , 
    .Q ( port0_i_port_fifo_mem[127] ) ) ;
NAND2X0_RVT ctmi_7149 ( .A1 ( port1_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_N20 ) , .Y ( ctmn_6580 ) ) ;
OR2X2_RVT ctmi_7150 ( .A1 ( ctmn_6582 ) , .A2 ( ctmn_6580 ) , 
    .Y ( ctmn_6583 ) ) ;
OA221X1_RVT ctmi_7152 ( .A1 ( port1_i_port_fifo_mem[69] ) , 
    .A2 ( ctmn_6584 ) , .A3 ( ctmn_6585 ) , .A4 ( port1_i_port_fifo_mem[5] ) , 
    .A5 ( ctmn_6593_CDR1 ) , .Y ( ctmn_6594 ) ) ;
OR3X2_RVT ctmi_7153 ( .A1 ( port1_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6582 ) , 
    .Y ( ctmn_6584 ) ) ;
OR3X2_RVT ctmi_7154 ( .A1 ( port1_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_rd_ptr[0] ) , 
    .A3 ( port1_i_port_fifo_rd_ptr[2] ) , .Y ( ctmn_6585 ) ) ;
OA221X1_RVT ctmi_7155 ( .A1 ( port1_i_port_fifo_mem[85] ) , 
    .A2 ( ctmn_6587 ) , .A3 ( ctmn_6589 ) , 
    .A4 ( port1_i_port_fifo_mem[117] ) , .A5 ( ctmn_6592_CDR1 ) , 
    .Y ( ctmn_6593_CDR1 ) ) ;
OR2X2_RVT ctmi_7156 ( .A1 ( ctmn_6582 ) , .A2 ( ctmn_6586 ) , 
    .Y ( ctmn_6587 ) ) ;
OR2X1_RVT ctmi_7157 ( .A1 ( port1_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_N20 ) , .Y ( ctmn_6586 ) ) ;
OR2X2_RVT ctmi_7158 ( .A1 ( ctmn_6582 ) , .A2 ( ctmn_6588 ) , 
    .Y ( ctmn_6589 ) ) ;
NAND2X0_RVT ctmi_7159 ( .A1 ( port1_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_rd_ptr[0] ) , .Y ( ctmn_6588 ) ) ;
OA22X1_RVT ctmi_7160 ( .A1 ( ctmn_6591 ) , .A2 ( port1_i_port_fifo_mem[21] ) , 
    .A3 ( port1_i_port_fifo_mem[53] ) , .A4 ( ctmn_6590 ) , 
    .Y ( ctmn_6592_CDR1 ) ) ;
NAND3X2_RVT ctmi_7161 ( .A1 ( port1_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6582 ) , 
    .Y ( ctmn_6590 ) ) ;
OR2X2_RVT ctmi_7162 ( .A1 ( port1_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6586 ) , .Y ( ctmn_6591 ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clock_gate_net_40 ) , 
    .Q ( port1_i_port_fifo_mem[127] ) ) ;
endmodule


