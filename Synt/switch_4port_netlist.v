// Fusion Compiler Version V-2023.12-SP3 Verilog Writer
// Generated on 1/1/2026 at 13:37:54
// Library Name: switch_lib.dlib
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
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[126] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[126] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[126] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_wr_ptr_reg_2_ ( .D ( port2_i_port_fifo_N14 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_wr_ptr_reg ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_port_fifo_wr_ptr[2] ) , .QN ( ctmn_7012 ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[126] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_wr_ptr_reg_2_ ( .D ( port3_i_port_fifo_N14 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_wr_ptr_reg ) , .RSTB ( rst_n ) , 
    .Q ( port3_i_port_fifo_wr_ptr[2] ) , .QN ( ctmn_7027 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_wr_ptr_reg_2_ ( .D ( port0_i_port_fifo_N14 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_wr_ptr_reg ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_port_fifo_wr_ptr[2] ) , .QN ( ctmn_6896 ) ) ;
AOI22X1_RVT ctmi_8102 ( .A1 ( ctmn_7209 ) , .A2 ( ctmn_6923 ) , 
    .A3 ( phfnn_264 ) , .A4 ( phfnn_154 ) , .Y ( port2_i_port_fifo_N24 ) ) ;
SDFFARX1_HVT top_arb_i_common_ptr_reg_1_ ( .D ( top_arb_i_N21 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( top_arb_i_common_ptr[1] ) , .QN ( ctmn_6645 ) ) ;
AO221X1_RVT ctmi_7819 ( .A1 ( HFSNET_8 ) , 
    .A2 ( port1_i_port_fifo_mem[104] ) , .A3 ( ctmn_6581 ) , 
    .A4 ( port1_i_port_fifo_mem[40] ) , .A5 ( ctmn_7082 ) , 
    .Y ( port1_i_port_fifo_N33 ) ) ;
INVX0_RVT phfnr_buf_957 ( .A ( ctmn_6629 ) , .Y ( phfnn_261 ) ) ;
AO221X1_RVT ctmi_7859 ( .A1 ( phfnn_261 ) , 
    .A2 ( port2_i_port_fifo_mem[104] ) , .A3 ( phfnn_262 ) , 
    .A4 ( port2_i_port_fifo_mem[40] ) , .A5 ( ctmn_7114 ) , 
    .Y ( port2_i_port_fifo_N33 ) ) ;
INVX0_RVT phfnr_buf_958 ( .A ( ctmn_6636 ) , .Y ( phfnn_262 ) ) ;
CGLPPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg ( .CLK ( clk ) , 
    .EN ( port0_i_port_fifo_N11 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) ) ;
INVX2_HVT phfnr_buf_934 ( .A ( ctmn_6630 ) , .Y ( phfnn_238 ) ) ;
CGLPPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_1 ( .CLK ( clk ) , 
    .EN ( port0_i_port_fifo_N9 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) ) ;
AO21X1_RVT ctmi_7985 ( .A1 ( port1_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( ctmn_6961 ) , .A3 ( ctmn_6960 ) , .Y ( port1_i_port_fifo_N14 ) ) ;
AO221X1_RVT ctmi_7862 ( .A1 ( phfnn_238 ) , 
    .A2 ( port2_i_port_fifo_mem[72] ) , .A3 ( phfnn_240 ) , 
    .A4 ( port2_i_port_fifo_mem[8] ) , .A5 ( ctmn_7113 ) , .Y ( ctmn_7114 ) ) ;
CGLPPRX2_HVT clock_gate_port0_i_port_fifo_fifo_count_reg_29 ( 
    .CLK ( clk_clock_gate_port0_i_port_fifo_fifo_count_reg ) , 
    .EN ( clkgt_enable_net_0 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_fifo_count_reg_clock_gate_port0_i_port_fifo_fifo_count_reg_29 ) ) ;
INVX2_HVT phfnr_buf_936 ( .A ( ctmn_6634 ) , .Y ( phfnn_240 ) ) ;
INVX0_LVT phfnr_buf_959 ( .A ( ctmn_6632 ) , .Y ( phfnn_263 ) ) ;
NAND2X0_RVT ctmi_7986 ( .A1 ( ctmn_6958 ) , .A2 ( ctmn_6956 ) , 
    .Y ( port1_i_port_fifo_N15 ) ) ;
INVX2_HVT HFSINV_343_1021 ( .A ( ctmn_6583 ) , .Y ( HFSNET_8 ) ) ;
OA221X1_RVT ctmi_7154 ( .A1 ( ctmn_6598 ) , 
    .A2 ( port0_i_port_fifo_mem[69] ) , .A3 ( port0_i_port_fifo_mem[101] ) , 
    .A4 ( ctmn_6597 ) , .A5 ( ctmn_6609_CDR1 ) , 
    .Y ( port0_i_port_fifo_N36 ) ) ;
NAND2X0_RVT ctmi_7984 ( .A1 ( ctmn_6580 ) , .A2 ( ctmn_6586 ) , 
    .Y ( port1_i_port_fifo_N19 ) ) ;
AO221X1_RVT ctmi_7865 ( .A1 ( phfnn_263 ) , 
    .A2 ( port2_i_port_fifo_mem[120] ) , .A3 ( phfnn_259 ) , 
    .A4 ( port2_i_port_fifo_mem[88] ) , .A5 ( ctmn_7112 ) , .Y ( ctmn_7113 ) ) ;
OA221X1_RVT ctmi_7134 ( .A1 ( port1_i_port_fifo_mem[37] ) , .A2 ( HFSNET_7 ) , 
    .A3 ( ctmn_6583 ) , .A4 ( port1_i_port_fifo_mem[101] ) , 
    .A5 ( ctmn_6594 ) , .Y ( port1_i_port_fifo_N36 ) ) ;
OR2X2_RVT ctmi_7155 ( .A1 ( ctmn_6595 ) , .A2 ( ctmn_6596 ) , 
    .Y ( ctmn_6597 ) ) ;
AO21X1_RVT ctmi_7987 ( .A1 ( port2_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6631 ) , .A3 ( phfnn_239 ) , .Y ( port2_i_port_fifo_N18 ) ) ;
CGLPPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_2 ( .CLK ( clk ) , 
    .EN ( port0_i_port_fifo_N7 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) ) ;
INVX0_LVT phfnr_buf_942 ( .A ( ctmn_6584 ) , .Y ( phfnn_246 ) ) ;
NAND2X0_RVT ctmi_7157 ( .A1 ( port0_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_N20 ) , .Y ( ctmn_6596 ) ) ;
INVX2_HVT phfnr_buf_930 ( .A ( ctmn_6585 ) , .Y ( phfnn_234 ) ) ;
AO221X1_RVT ctmi_7822 ( .A1 ( phfnn_246 ) , 
    .A2 ( port1_i_port_fifo_mem[72] ) , .A3 ( phfnn_234 ) , 
    .A4 ( port1_i_port_fifo_mem[8] ) , .A5 ( ctmn_7081 ) , .Y ( ctmn_7082 ) ) ;
MUX41X1_RVT ctmi_8100 ( .A1 ( ctmn_6921 ) , .A3 ( phfnn_153 ) , 
    .A2 ( phfnn_153 ) , .A4 ( ctmn_6921 ) , 
    .S0 ( port1_i_port_fifo_fifo_count[1] ) , 
    .S1 ( port1_i_port_fifo_fifo_count[0] ) , .Y ( ctmn_7208 ) ) ;
INVX0_LVT phfnr_buf_952 ( .A ( ctmn_6587 ) , .Y ( phfnn_256 ) ) ;
INVX0_LVT phfnr_buf_954 ( .A ( ctmn_6589 ) , .Y ( phfnn_258 ) ) ;
AO21X1_RVT ctmi_7981 ( .A1 ( port0_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( ctmn_6904 ) , .A3 ( ctmn_6902 ) , .Y ( port0_i_port_fifo_N14 ) ) ;
AO21X1_RVT ctmi_7979 ( .A1 ( port0_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6604 ) , .A3 ( phfnn_232 ) , .Y ( port0_i_port_fifo_N18 ) ) ;
OR3X2_RVT ctmi_7158 ( .A1 ( port0_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6595 ) , 
    .Y ( ctmn_6598 ) ) ;
CGLPPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_3 ( .CLK ( clk ) , 
    .EN ( port0_i_port_fifo_N6 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) ) ;
NAND2X0_RVT ctmi_7980 ( .A1 ( ctmn_6599 ) , .A2 ( ctmn_6596 ) , 
    .Y ( port0_i_port_fifo_N19 ) ) ;
NAND2X0_RVT ctmi_7982 ( .A1 ( ctmn_6901 ) , .A2 ( ctmn_6900 ) , 
    .Y ( port0_i_port_fifo_N15 ) ) ;
INVX2_HVT phfnr_buf_946 ( .A ( ctmn_6600 ) , .Y ( phfnn_250 ) ) ;
AO21X1_RVT ctmi_7983 ( .A1 ( port1_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6588 ) , .A3 ( phfnn_247 ) , .Y ( port1_i_port_fifo_N18 ) ) ;
NAND2X0_RVT ctmi_7988 ( .A1 ( ctmn_6626 ) , .A2 ( ctmn_6628 ) , 
    .Y ( port2_i_port_fifo_N19 ) ) ;
OA221X1_RVT ctmi_7172 ( .A1 ( port3_i_port_fifo_mem[85] ) , 
    .A2 ( ctmn_6612 ) , .A3 ( ctmn_6614 ) , 
    .A4 ( port3_i_port_fifo_mem[101] ) , .A5 ( ctmn_6624 ) , 
    .Y ( port3_i_port_fifo_N36 ) ) ;
AO21X1_RVT ctmi_7989 ( .A1 ( port2_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( ctmn_7019 ) , .A3 ( ctmn_7017 ) , .Y ( port2_i_port_fifo_N14 ) ) ;
OR2X2_RVT ctmi_7173 ( .A1 ( ctmn_6610 ) , .A2 ( ctmn_6611 ) , 
    .Y ( ctmn_6612 ) ) ;
NAND2X0_RVT ctmi_7990 ( .A1 ( ctmn_7016 ) , .A2 ( ctmn_7014 ) , 
    .Y ( port2_i_port_fifo_N15 ) ) ;
CGLPPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_4 ( .CLK ( clk ) , 
    .EN ( port0_i_port_fifo_N5 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) ) ;
AO21X1_RVT ctmi_7991 ( .A1 ( port3_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6616 ) , .A3 ( phfnn_243 ) , .Y ( port3_i_port_fifo_N18 ) ) ;
OA221X1_RVT ctmi_7159 ( .A1 ( ctmn_6601 ) , .A2 ( port0_i_port_fifo_mem[5] ) , 
    .A3 ( port0_i_port_fifo_mem[21] ) , .A4 ( ctmn_6600 ) , 
    .A5 ( ctmn_6608 ) , .Y ( ctmn_6609_CDR1 ) ) ;
OR2X1_RVT ctmi_7175 ( .A1 ( port3_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_N20 ) , .Y ( ctmn_6611 ) ) ;
NAND2X0_RVT ctmi_7992 ( .A1 ( ctmn_6611 ) , .A2 ( ctmn_6613 ) , 
    .Y ( port3_i_port_fifo_N19 ) ) ;
AO21X1_RVT ctmi_7993 ( .A1 ( port3_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( ctmn_7034 ) , .A3 ( ctmn_7032 ) , .Y ( port3_i_port_fifo_N14 ) ) ;
OR2X2_RVT ctmi_7176 ( .A1 ( ctmn_6610 ) , .A2 ( ctmn_6613 ) , 
    .Y ( ctmn_6614 ) ) ;
NAND2X0_RVT ctmi_7994 ( .A1 ( ctmn_7031 ) , .A2 ( ctmn_7029 ) , 
    .Y ( port3_i_port_fifo_N15 ) ) ;
NAND2X0_RVT ctmi_7177 ( .A1 ( port3_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_N20 ) , .Y ( ctmn_6613 ) ) ;
AO221X1_RVT ctmi_7825 ( .A1 ( phfnn_247 ) , 
    .A2 ( port1_i_port_fifo_mem[56] ) , .A3 ( phfnn_258 ) , 
    .A4 ( port1_i_port_fifo_mem[120] ) , .A5 ( ctmn_7080_CDR1 ) , 
    .Y ( ctmn_7081 ) ) ;
INVX2_HVT phfnr_buf_926 ( .A ( ctmn_6598 ) , .Y ( phfnn_230 ) ) ;
CGLPPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg ( .CLK ( clk ) , 
    .EN ( port1_i_port_fifo_N11 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) ) ;
INVX0_RVT phfnr_buf_944 ( .A ( ctmn_6597 ) , .Y ( phfnn_248 ) ) ;
AO22X1_RVT ctmi_7828 ( .A1 ( phfnn_256 ) , .A2 ( port1_i_port_fifo_mem[88] ) , 
    .A3 ( phfnn_257 ) , .A4 ( port1_i_port_fifo_mem[24] ) , 
    .Y ( ctmn_7080_CDR1 ) ) ;
CGLPPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg ( .CLK ( clk ) , 
    .EN ( port2_i_port_fifo_N11 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) ) ;
OA221X1_RVT ctmi_7178 ( .A1 ( ctmn_6617 ) , 
    .A2 ( port3_i_port_fifo_mem[117] ) , .A3 ( port3_i_port_fifo_mem[21] ) , 
    .A4 ( ctmn_6615 ) , .A5 ( ctmn_6623 ) , .Y ( ctmn_6624 ) ) ;
AO221X1_RVT ctmi_7939 ( .A1 ( phfnn_250 ) , 
    .A2 ( port0_i_port_fifo_mem[24] ) , .A3 ( phfnn_230 ) , 
    .A4 ( port0_i_port_fifo_mem[72] ) , .A5 ( ctmn_7178 ) , 
    .Y ( port0_i_port_fifo_N33 ) ) ;
CGLPPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_5 ( .CLK ( clk ) , 
    .EN ( port0_i_port_fifo_N4 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) ) ;
CGLPPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_15 ( .CLK ( clk ) , 
    .EN ( port2_i_port_fifo_N9 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) ) ;
INVX0_RVT phfnr_buf_945 ( .A ( ctmn_6603 ) , .Y ( phfnn_249 ) ) ;
OA221X1_RVT ctmi_7189 ( .A1 ( ctmn_6629 ) , 
    .A2 ( port2_i_port_fifo_mem[101] ) , .A3 ( port2_i_port_fifo_mem[85] ) , 
    .A4 ( ctmn_6627 ) , .A5 ( ctmn_6639_CDR1 ) , 
    .Y ( port2_i_port_fifo_N36 ) ) ;
INVX2_HVT phfnr_buf_927 ( .A ( ctmn_6601 ) , .Y ( phfnn_231 ) ) ;
OR2X2_RVT ctmi_7190 ( .A1 ( ctmn_6625 ) , .A2 ( ctmn_6626 ) , 
    .Y ( ctmn_6627 ) ) ;
CGLPPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_16 ( .CLK ( clk ) , 
    .EN ( port2_i_port_fifo_N7 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) ) ;
AO221X1_RVT ctmi_7942 ( .A1 ( phfnn_248 ) , 
    .A2 ( port0_i_port_fifo_mem[104] ) , .A3 ( phfnn_249 ) , 
    .A4 ( port0_i_port_fifo_mem[40] ) , .A5 ( ctmn_7177 ) , .Y ( ctmn_7178 ) ) ;
CGLPPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_6 ( .CLK ( clk ) , 
    .EN ( port0_i_port_fifo_N3 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) ) ;
INVX2_RVT phfnr_buf_943 ( .A ( ctmn_6590 ) , .Y ( phfnn_247 ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_15_ ( 
    .D ( port3_i_port_fifo_N26 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[15] ) ) ;
OR2X2_RVT ctmi_7160 ( .A1 ( port0_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6599 ) , .Y ( ctmn_6600 ) ) ;
OR2X1_RVT ctmi_7192 ( .A1 ( port2_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_N20 ) , .Y ( ctmn_6626 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel0_reg_1_ ( .D ( top_arb_i_N27 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel0[1] ) , 
    .QN ( ctmn_6803 ) ) ;
CGLPPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_26 ( .CLK ( clk ) , 
    .EN ( port3_i_port_fifo_N4 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) ) ;
SDFFARX1_HVT top_arb_i_active2_reg ( .D ( top_arb_i_N25 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( active2 ) ) ;
SDFFARX1_HVT top_arb_i_active3_reg ( .D ( top_arb_i_N26 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( active3 ) ) ;
CGLPPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_17 ( .CLK ( clk ) , 
    .EN ( port2_i_port_fifo_N6 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel0_reg_0_ ( .D ( top_arb_i_N28 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel0[0] ) , 
    .QN ( ctmn_6804 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel1_reg_1_ ( .D ( top_arb_i_N29 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel1[1] ) , 
    .QN ( ctmn_6937 ) ) ;
SDFFARX1_HVT top_arb_i_active1_reg ( .D ( top_arb_i_N24 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( active1 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel2_reg_1_ ( .D ( top_arb_i_N31 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel2[1] ) , 
    .QN ( ctmn_6968 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel2_reg_0_ ( .D ( top_arb_i_N32 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel2[0] ) , 
    .QN ( ctmn_6967 ) ) ;
SDFFARX1_HVT port0_i_current_state_reg_1_ ( .D ( port0_i_next_state[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_current_state[1] ) , .QN ( ctmn_6748 ) ) ;
INVX0_LVT phfnr_buf_953 ( .A ( ctmn_6591 ) , .Y ( phfnn_257 ) ) ;
AO221X1_RVT ctmi_7945 ( .A1 ( phfnn_232 ) , 
    .A2 ( port0_i_port_fifo_mem[56] ) , .A3 ( phfnn_231 ) , 
    .A4 ( port0_i_port_fifo_mem[8] ) , .A5 ( ctmn_7176 ) , .Y ( ctmn_7177 ) ) ;
OR2X2_RVT ctmi_7193 ( .A1 ( ctmn_6625 ) , .A2 ( ctmn_6628 ) , 
    .Y ( ctmn_6629 ) ) ;
SDFFARX1_HVT top_arb_i_common_ptr_reg_0_ ( .D ( top_arb_i_N22 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( top_arb_i_common_ptr[0] ) , .QN ( top_arb_i_N22 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel1_reg_0_ ( .D ( top_arb_i_N30 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel1[0] ) , 
    .QN ( ctmn_6938 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_wr_ptr_reg_1_ ( .D ( port0_i_port_fifo_N15 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_wr_ptr_reg ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_port_fifo_wr_ptr[1] ) , .QN ( ctmn_6897 ) ) ;
SDFFARX1_HVT port0_i_current_state_reg_0_ ( .D ( port0_i_next_state[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_current_state[0] ) ) ;
NAND2X0_RVT ctmi_7194 ( .A1 ( port2_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_N20 ) , .Y ( ctmn_6628 ) ) ;
INVX2_HVT phfnr_buf_963 ( .A ( ctmn_6614 ) , .Y ( phfnn_267 ) ) ;
OA221X1_RVT ctmi_7195 ( .A1 ( ctmn_6636 ) , 
    .A2 ( port2_i_port_fifo_mem[37] ) , .A3 ( ctmn_6634 ) , 
    .A4 ( port2_i_port_fifo_mem[5] ) , .A5 ( ctmn_6638_CDR1 ) , 
    .Y ( ctmn_6639_CDR1 ) ) ;
INVX0_LVT phfnr_buf_964 ( .A ( ctmn_6618 ) , .Y ( phfnn_268 ) ) ;
AOI222X1_RVT ctmi_7807 ( .A1 ( ctmn_7064 ) , .A2 ( ctmn_6647 ) , 
    .A3 ( ctmn_7064 ) , .A4 ( ctmn_6925 ) , .A5 ( ctmn_7064 ) , 
    .A6 ( ctmn_6646 ) , .Y ( port3_i_port_fifo_N22 ) ) ;
AO221X1_RVT ctmi_7808 ( .A1 ( ctmn_6647 ) , .A2 ( phfnn_245 ) , 
    .A3 ( port3_i_port_fifo_fifo_count[3] ) , .A4 ( ctmn_7063 ) , 
    .A5 ( phfnn_152 ) , .Y ( ctmn_7064 ) ) ;
MUX41X1_RVT ctmi_8105 ( .A1 ( ctmn_6925 ) , .A3 ( phfnn_152 ) , 
    .A2 ( phfnn_152 ) , .A4 ( ctmn_6925 ) , 
    .S0 ( port3_i_port_fifo_fifo_count[1] ) , 
    .S1 ( port3_i_port_fifo_fifo_count[0] ) , .Y ( ctmn_7211 ) ) ;
INVX0_LVT phfnr_buf_938 ( .A ( ctmn_6619 ) , .Y ( phfnn_242 ) ) ;
AO221X1_RVT ctmi_7831 ( .A1 ( HFSNET_8 ) , 
    .A2 ( port1_i_port_fifo_mem[105] ) , .A3 ( ctmn_6581 ) , 
    .A4 ( port1_i_port_fifo_mem[41] ) , .A5 ( ctmn_7085 ) , 
    .Y ( port1_i_port_fifo_N32 ) ) ;
AO221X1_RVT ctmi_7832 ( .A1 ( phfnn_246 ) , 
    .A2 ( port1_i_port_fifo_mem[73] ) , .A3 ( phfnn_234 ) , 
    .A4 ( port1_i_port_fifo_mem[9] ) , .A5 ( ctmn_7084 ) , .Y ( ctmn_7085 ) ) ;
AO221X1_RVT ctmi_7899 ( .A1 ( phfnn_267 ) , 
    .A2 ( port3_i_port_fifo_mem[104] ) , .A3 ( phfnn_268 ) , 
    .A4 ( port3_i_port_fifo_mem[40] ) , .A5 ( ctmn_7146 ) , 
    .Y ( port3_i_port_fifo_N33 ) ) ;
INVX2_HVT phfnr_buf_940 ( .A ( ctmn_6621 ) , .Y ( phfnn_244 ) ) ;
NAND2X0_RVT ctmi_7205 ( .A1 ( ctmn_6663 ) , .A2 ( phfnn_287 ) , 
    .Y ( top_arb_i_N30 ) ) ;
CGLPPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_18 ( .CLK ( clk ) , 
    .EN ( port2_i_port_fifo_N5 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) ) ;
INVX1_HVT phfnr_buf_973 ( .A ( ctmn_6643 ) , .Y ( phfnn_277 ) ) ;
NAND3X0_RVT ctmi_7206 ( .A1 ( phfnn_277 ) , .A2 ( ctmn_6656 ) , 
    .A3 ( ctmn_6662 ) , .Y ( ctmn_6663 ) ) ;
CGLPPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_19 ( .CLK ( clk ) , 
    .EN ( port2_i_port_fifo_N4 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) ) ;
AO221X1_RVT ctmi_7902 ( .A1 ( phfnn_242 ) , 
    .A2 ( port3_i_port_fifo_mem[72] ) , .A3 ( phfnn_244 ) , 
    .A4 ( port3_i_port_fifo_mem[8] ) , .A5 ( ctmn_7145 ) , .Y ( ctmn_7146 ) ) ;
NAND2X0_RVT ctmi_7207 ( .A1 ( port1_i_port_fifo_N36 ) , .A2 ( ctmn_6642 ) , 
    .Y ( ctmn_6643 ) ) ;
CGLPPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_20 ( .CLK ( clk ) , 
    .EN ( port2_i_port_fifo_N3 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) ) ;
INVX2_HVT phfnr_buf_962 ( .A ( ctmn_6615 ) , .Y ( phfnn_266 ) ) ;
NAND2X1_RVT ctmi_7208 ( .A1 ( ctmn_6640 ) , .A2 ( ctmn_6641 ) , 
    .Y ( ctmn_6642 ) ) ;
CGLPPRX2_HVT clock_gate_port2_i_port_fifo_mem_reg_21 ( .CLK ( clk ) , 
    .EN ( port2_i_port_fifo_N2 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) ) ;
NOR3X1_RVT ctmi_7209 ( .A1 ( port1_i_port_fifo_fifo_count[1] ) , 
    .A2 ( HFSNET_2 ) , .A3 ( port1_i_port_fifo_fifo_count[2] ) , 
    .Y ( ctmn_6640 ) ) ;
INVX0_HVT phfnr_buf_924 ( .A ( ctmn_6654 ) , .Y ( phfnn_228 ) ) ;
CGLPPRX2_HVT clock_gate_port0_i_port_fifo_mem_reg_7 ( .CLK ( clk ) , 
    .EN ( port0_i_port_fifo_N2 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) ) ;
AO221X1_RVT ctmi_7905 ( .A1 ( phfnn_266 ) , 
    .A2 ( port3_i_port_fifo_mem[24] ) , .A3 ( phfnn_243 ) , 
    .A4 ( port3_i_port_fifo_mem[56] ) , .A5 ( ctmn_7144 ) , .Y ( ctmn_7145 ) ) ;
INVX0_HVT phfnr_buf_925 ( .A ( ctmn_7020 ) , .Y ( phfnn_229 ) ) ;
INVX2_RVT phfnr_buf_928 ( .A ( ctmn_6606 ) , .Y ( phfnn_232 ) ) ;
OA22X1_RVT ctmi_7212 ( .A1 ( HFSNET_6 ) , .A2 ( ctmn_6649 ) , 
    .A3 ( phfnn_274 ) , .A4 ( phfnn_228 ) , .Y ( ctmn_6656 ) ) ;
AO221X1_RVT ctmi_7833 ( .A1 ( phfnn_256 ) , 
    .A2 ( port1_i_port_fifo_mem[89] ) , .A3 ( phfnn_258 ) , 
    .A4 ( port1_i_port_fifo_mem[121] ) , .A5 ( ctmn_7083 ) , 
    .Y ( ctmn_7084 ) ) ;
AO22X1_RVT ctmi_7834 ( .A1 ( phfnn_247 ) , .A2 ( port1_i_port_fifo_mem[57] ) , 
    .A3 ( phfnn_257 ) , .A4 ( port1_i_port_fifo_mem[25] ) , .Y ( ctmn_7083 ) ) ;
AO221X1_RVT ctmi_7835 ( .A1 ( ctmn_6581 ) , 
    .A2 ( port1_i_port_fifo_mem[42] ) , .A3 ( HFSNET_8 ) , 
    .A4 ( port1_i_port_fifo_mem[106] ) , .A5 ( ctmn_7088 ) , 
    .Y ( port1_i_port_fifo_N31 ) ) ;
AO221X1_RVT ctmi_7836 ( .A1 ( phfnn_234 ) , 
    .A2 ( port1_i_port_fifo_mem[10] ) , .A3 ( phfnn_246 ) , 
    .A4 ( port1_i_port_fifo_mem[74] ) , .A5 ( ctmn_7087_CDR1 ) , 
    .Y ( ctmn_7088 ) ) ;
AOI222X1_RVT ctmi_7796 ( .A1 ( ctmn_7055 ) , .A2 ( ctmn_6658 ) , 
    .A3 ( ctmn_7055 ) , .A4 ( ctmn_6923 ) , .A5 ( ctmn_7055 ) , 
    .A6 ( ctmn_6657 ) , .Y ( port2_i_port_fifo_N22 ) ) ;
OAI221X1_RVT ctmi_7384 ( .A1 ( phfnn_273 ) , .A2 ( phfnn_292 ) , 
    .A3 ( ctmn_6701 ) , .A4 ( phfnn_289 ) , .A5 ( ctmn_6795 ) , 
    .Y ( top_arb_i_N25 ) ) ;
AO221X1_RVT ctmi_7837 ( .A1 ( phfnn_258 ) , 
    .A2 ( port1_i_port_fifo_mem[122] ) , .A3 ( phfnn_256 ) , 
    .A4 ( port1_i_port_fifo_mem[90] ) , .A5 ( ctmn_7086 ) , 
    .Y ( ctmn_7087_CDR1 ) ) ;
AO22X1_RVT ctmi_7838 ( .A1 ( phfnn_247 ) , .A2 ( port1_i_port_fifo_mem[58] ) , 
    .A3 ( phfnn_257 ) , .A4 ( port1_i_port_fifo_mem[26] ) , .Y ( ctmn_7086 ) ) ;
AO221X1_RVT ctmi_7839 ( .A1 ( HFSNET_8 ) , 
    .A2 ( port1_i_port_fifo_mem[107] ) , .A3 ( ctmn_6581 ) , 
    .A4 ( port1_i_port_fifo_mem[43] ) , .A5 ( ctmn_7091 ) , 
    .Y ( port1_i_port_fifo_N30 ) ) ;
AO221X1_RVT ctmi_7840 ( .A1 ( phfnn_246 ) , 
    .A2 ( port1_i_port_fifo_mem[75] ) , .A3 ( phfnn_234 ) , 
    .A4 ( port1_i_port_fifo_mem[11] ) , .A5 ( ctmn_7090 ) , .Y ( ctmn_7091 ) ) ;
NAND2X0_RVT ctmi_7234 ( .A1 ( phfnn_287 ) , .A2 ( ctmn_6669 ) , 
    .Y ( top_arb_i_N29 ) ) ;
NAND3X0_RVT ctmi_7235 ( .A1 ( port2_i_port_fifo_N36 ) , .A2 ( ctmn_6659 ) , 
    .A3 ( ctmn_6668 ) , .Y ( ctmn_6669 ) ) ;
AO221X1_RVT ctmi_7841 ( .A1 ( phfnn_256 ) , 
    .A2 ( port1_i_port_fifo_mem[91] ) , .A3 ( phfnn_258 ) , 
    .A4 ( port1_i_port_fifo_mem[123] ) , .A5 ( ctmn_7089 ) , 
    .Y ( ctmn_7090 ) ) ;
INVX0_HVT phfnr_buf_929 ( .A ( ctmn_7036 ) , .Y ( phfnn_233 ) ) ;
INVX0_HVT phfnr_buf_931 ( .A ( ctmn_7045 ) , .Y ( phfnn_235 ) ) ;
OA22X1_RVT ctmi_7385 ( .A1 ( ctmn_6694 ) , .A2 ( phfnn_290 ) , 
    .A3 ( ctmn_6699 ) , .A4 ( phfnn_291 ) , .Y ( ctmn_6795 ) ) ;
OA221X1_RVT ctmi_7237 ( .A1 ( ctmn_6591 ) , 
    .A2 ( port1_i_port_fifo_mem[22] ) , .A3 ( port1_i_port_fifo_mem[102] ) , 
    .A4 ( ctmn_6583 ) , .A5 ( ctmn_6672 ) , .Y ( port1_i_port_fifo_N35 ) ) ;
OA221X1_RVT ctmi_7238 ( .A1 ( port1_i_port_fifo_mem[70] ) , 
    .A2 ( ctmn_6584 ) , .A3 ( ctmn_6585 ) , .A4 ( port1_i_port_fifo_mem[6] ) , 
    .A5 ( ctmn_6671 ) , .Y ( ctmn_6672 ) ) ;
OA221X2_RVT ctmi_7241 ( .A1 ( ctmn_6605 ) , 
    .A2 ( port0_i_port_fifo_mem[118] ) , .A3 ( port0_i_port_fifo_mem[86] ) , 
    .A4 ( ctmn_6602 ) , .A5 ( ctmn_6675_CDR1 ) , 
    .Y ( port0_i_port_fifo_N35 ) ) ;
OA221X1_RVT ctmi_7242 ( .A1 ( port0_i_port_fifo_mem[22] ) , 
    .A2 ( ctmn_6600 ) , .A3 ( ctmn_6606 ) , 
    .A4 ( port0_i_port_fifo_mem[54] ) , .A5 ( ctmn_6674_CDR1 ) , 
    .Y ( ctmn_6675_CDR1 ) ) ;
OA221X1_RVT ctmi_7243 ( .A1 ( port0_i_port_fifo_mem[6] ) , .A2 ( ctmn_6601 ) , 
    .A3 ( ctmn_6598 ) , .A4 ( port0_i_port_fifo_mem[70] ) , 
    .A5 ( ctmn_6673_CDR1 ) , .Y ( ctmn_6674_CDR1 ) ) ;
OA22X1_RVT ctmi_7244 ( .A1 ( port0_i_port_fifo_mem[102] ) , 
    .A2 ( ctmn_6597 ) , .A3 ( ctmn_6603 ) , 
    .A4 ( port0_i_port_fifo_mem[38] ) , .Y ( ctmn_6673_CDR1 ) ) ;
OA221X1_RVT ctmi_7245 ( .A1 ( port2_i_port_fifo_mem[6] ) , .A2 ( ctmn_6634 ) , 
    .A3 ( ctmn_6629 ) , .A4 ( port2_i_port_fifo_mem[102] ) , 
    .A5 ( ctmn_6678 ) , .Y ( port2_i_port_fifo_N35 ) ) ;
OA221X1_RVT ctmi_7246 ( .A1 ( ctmn_6632 ) , 
    .A2 ( port2_i_port_fifo_mem[118] ) , .A3 ( ctmn_6636 ) , 
    .A4 ( port2_i_port_fifo_mem[38] ) , .A5 ( ctmn_6677_CDR1 ) , 
    .Y ( ctmn_6678 ) ) ;
OA221X1_RVT ctmi_7247 ( .A1 ( port2_i_port_fifo_mem[54] ) , 
    .A2 ( ctmn_6633 ) , .A3 ( port2_i_port_fifo_mem[22] ) , 
    .A4 ( ctmn_6635 ) , .A5 ( ctmn_6676_CDR1 ) , .Y ( ctmn_6677_CDR1 ) ) ;
OA22X1_RVT ctmi_7248 ( .A1 ( ctmn_6630 ) , .A2 ( port2_i_port_fifo_mem[70] ) , 
    .A3 ( port2_i_port_fifo_mem[86] ) , .A4 ( ctmn_6627 ) , 
    .Y ( ctmn_6676_CDR1 ) ) ;
AO22X1_RVT ctmi_7842 ( .A1 ( phfnn_247 ) , .A2 ( port1_i_port_fifo_mem[59] ) , 
    .A3 ( phfnn_257 ) , .A4 ( port1_i_port_fifo_mem[27] ) , .Y ( ctmn_7089 ) ) ;
AO221X1_RVT ctmi_7843 ( .A1 ( ctmn_6581 ) , 
    .A2 ( port1_i_port_fifo_mem[44] ) , .A3 ( HFSNET_8 ) , 
    .A4 ( port1_i_port_fifo_mem[108] ) , .A5 ( ctmn_7094 ) , 
    .Y ( port1_i_port_fifo_N29 ) ) ;
OA221X1_RVT ctmi_7249 ( .A1 ( port3_i_port_fifo_mem[102] ) , 
    .A2 ( ctmn_6614 ) , .A3 ( ctmn_6619 ) , 
    .A4 ( port3_i_port_fifo_mem[70] ) , .A5 ( ctmn_6681 ) , 
    .Y ( port3_i_port_fifo_N35 ) ) ;
OA221X1_RVT ctmi_7250 ( .A1 ( port3_i_port_fifo_mem[118] ) , 
    .A2 ( ctmn_6617 ) , .A3 ( ctmn_6612 ) , 
    .A4 ( port3_i_port_fifo_mem[86] ) , .A5 ( ctmn_6680 ) , .Y ( ctmn_6681 ) ) ;
OA221X1_RVT ctmi_7251 ( .A1 ( port3_i_port_fifo_mem[22] ) , 
    .A2 ( ctmn_6615 ) , .A3 ( ctmn_6618 ) , 
    .A4 ( port3_i_port_fifo_mem[38] ) , .A5 ( ctmn_6679 ) , .Y ( ctmn_6680 ) ) ;
OA22X1_RVT ctmi_7252 ( .A1 ( port3_i_port_fifo_mem[54] ) , .A2 ( ctmn_6620 ) , 
    .A3 ( ctmn_6621 ) , .A4 ( port3_i_port_fifo_mem[6] ) , .Y ( ctmn_6679 ) ) ;
NAND2X0_RVT ctmi_7253 ( .A1 ( ctmn_6694 ) , .A2 ( ctmn_6699 ) , 
    .Y ( top_arb_i_N32 ) ) ;
NAND2X0_RVT ctmi_7254 ( .A1 ( phfnn_138 ) , .A2 ( ctmn_6693 ) , 
    .Y ( ctmn_6694 ) ) ;
INVX0_HVT phfnr_buf_932 ( .A ( ctmn_6876 ) , .Y ( phfnn_236 ) ) ;
INVX1_HVT phfnr_buf_968 ( .A ( ctmn_6690 ) , .Y ( phfnn_272 ) ) ;
AO221X1_RVT ctmi_7844 ( .A1 ( phfnn_246 ) , 
    .A2 ( port1_i_port_fifo_mem[76] ) , .A3 ( phfnn_234 ) , 
    .A4 ( port1_i_port_fifo_mem[12] ) , .A5 ( ctmn_7093 ) , .Y ( ctmn_7094 ) ) ;
AO221X1_RVT ctmi_7845 ( .A1 ( phfnn_258 ) , 
    .A2 ( port1_i_port_fifo_mem[124] ) , .A3 ( phfnn_256 ) , 
    .A4 ( port1_i_port_fifo_mem[92] ) , .A5 ( ctmn_7092_CDR1 ) , 
    .Y ( ctmn_7093 ) ) ;
AND2X1_RVT ctmi_7257 ( .A1 ( ctmn_6687 ) , .A2 ( ctmn_6692 ) , 
    .Y ( ctmn_6693 ) ) ;
NAND2X0_RVT ctmi_7258 ( .A1 ( ctmn_6685 ) , .A2 ( ctmn_6686 ) , 
    .Y ( ctmn_6687 ) ) ;
AO21X1_RVT ctmi_7259 ( .A1 ( port0_i_port_fifo_N35 ) , .A2 ( ctmn_6684 ) , 
    .A3 ( HFSNET_5 ) , .Y ( ctmn_6685 ) ) ;
AND2X1_RVT ctmi_7260 ( .A1 ( HFSNET_4 ) , .A2 ( ctmn_6652 ) , 
    .Y ( ctmn_6684 ) ) ;
AO21X1_RVT ctmi_7261 ( .A1 ( port2_i_port_fifo_N35 ) , .A2 ( ctmn_6660 ) , 
    .A3 ( HFSNET_6 ) , .Y ( ctmn_6686 ) ) ;
OAI21X1_RVT ctmi_7262 ( .A1 ( ctmn_6689 ) , .A2 ( phfnn_272 ) , 
    .A3 ( ctmn_6685 ) , .Y ( ctmn_6692 ) ) ;
INVX0_HVT phfnr_buf_933 ( .A ( ctmn_6853 ) , .Y ( phfnn_237 ) ) ;
INVX1_HVT phfnr_buf_979 ( .A ( ctmn_6695 ) , .Y ( phfnn_283 ) ) ;
AO22X1_RVT ctmi_7846 ( .A1 ( phfnn_247 ) , .A2 ( port1_i_port_fifo_mem[60] ) , 
    .A3 ( phfnn_257 ) , .A4 ( port1_i_port_fifo_mem[28] ) , 
    .Y ( ctmn_7092_CDR1 ) ) ;
AO221X1_RVT ctmi_7847 ( .A1 ( ctmn_6581 ) , 
    .A2 ( port1_i_port_fifo_mem[45] ) , .A3 ( HFSNET_8 ) , 
    .A4 ( port1_i_port_fifo_mem[109] ) , .A5 ( ctmn_7097 ) , 
    .Y ( port1_i_port_fifo_N28 ) ) ;
AO221X1_RVT ctmi_7848 ( .A1 ( phfnn_246 ) , 
    .A2 ( port1_i_port_fifo_mem[77] ) , .A3 ( phfnn_234 ) , 
    .A4 ( port1_i_port_fifo_mem[13] ) , .A5 ( ctmn_7096 ) , .Y ( ctmn_7097 ) ) ;
NAND2X0_RVT ctmi_7265 ( .A1 ( port3_i_port_fifo_N35 ) , .A2 ( ctmn_6648 ) , 
    .Y ( ctmn_6690 ) ) ;
INVX1_HVT phfnr_buf_974 ( .A ( ctmn_6714 ) , .Y ( phfnn_278 ) ) ;
NAND2X0_RVT ctmi_7267 ( .A1 ( phfnn_272 ) , .A2 ( ctmn_6698 ) , 
    .Y ( ctmn_6699 ) ) ;
AND2X1_RVT ctmi_7268 ( .A1 ( ctmn_6687 ) , .A2 ( ctmn_6697 ) , 
    .Y ( ctmn_6698 ) ) ;
INVX2_RVT phfnr_buf_935 ( .A ( ctmn_6633 ) , .Y ( phfnn_239 ) ) ;
NAND2X0_RVT ctmi_7270 ( .A1 ( port2_i_port_fifo_N35 ) , .A2 ( ctmn_6659 ) , 
    .Y ( ctmn_6695 ) ) ;
INVX0_HVT phfnr_buf_937 ( .A ( ctmn_7054 ) , .Y ( phfnn_241 ) ) ;
NAND2X0_RVT ctmi_7272 ( .A1 ( ctmn_6699 ) , .A2 ( ctmn_6701 ) , 
    .Y ( top_arb_i_N31 ) ) ;
AO221X1_RVT ctmi_7849 ( .A1 ( phfnn_258 ) , 
    .A2 ( port1_i_port_fifo_mem[125] ) , .A3 ( phfnn_256 ) , 
    .A4 ( port1_i_port_fifo_mem[93] ) , .A5 ( ctmn_7095 ) , .Y ( ctmn_7096 ) ) ;
AO22X1_RVT ctmi_7811 ( .A1 ( ctmn_7067 ) , .A2 ( ctmn_7068 ) , 
    .A3 ( ctmn_7070 ) , .A4 ( phfnn_293 ) , .Y ( port3_i_port_fifo_N23 ) ) ;
AOI222X1_RVT ctmi_7812 ( .A1 ( ctmn_6801 ) , .A2 ( ctmn_7065 ) , 
    .A3 ( ctmn_6801 ) , .A4 ( ctmn_7066 ) , .A5 ( ctmn_6801 ) , 
    .A6 ( port3_valid_in ) , .Y ( ctmn_7067 ) ) ;
CGLPPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_8 ( .CLK ( clk ) , 
    .EN ( port1_i_port_fifo_N9 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) ) ;
AO221X1_RVT ctmi_7797 ( .A1 ( ctmn_6658 ) , .A2 ( phfnn_241 ) , 
    .A3 ( port2_i_port_fifo_fifo_count[3] ) , .A4 ( ctmn_7054 ) , 
    .A5 ( phfnn_154 ) , .Y ( ctmn_7055 ) ) ;
OAI221X1_RVT ctmi_7386 ( .A1 ( phfnn_275 ) , .A2 ( phfnn_292 ) , 
    .A3 ( ctmn_6732 ) , .A4 ( phfnn_289 ) , .A5 ( ctmn_6796 ) , 
    .Y ( top_arb_i_N26 ) ) ;
AO22X1_RVT ctmi_7850 ( .A1 ( phfnn_247 ) , .A2 ( port1_i_port_fifo_mem[61] ) , 
    .A3 ( phfnn_257 ) , .A4 ( port1_i_port_fifo_mem[29] ) , .Y ( ctmn_7095 ) ) ;
AO221X1_RVT ctmi_7851 ( .A1 ( ctmn_6581 ) , 
    .A2 ( port1_i_port_fifo_mem[46] ) , .A3 ( HFSNET_8 ) , 
    .A4 ( port1_i_port_fifo_mem[110] ) , .A5 ( ctmn_7100 ) , 
    .Y ( port1_i_port_fifo_N27 ) ) ;
AO221X1_RVT ctmi_7852 ( .A1 ( phfnn_234 ) , 
    .A2 ( port1_i_port_fifo_mem[14] ) , .A3 ( phfnn_246 ) , 
    .A4 ( port1_i_port_fifo_mem[78] ) , .A5 ( ctmn_7099 ) , .Y ( ctmn_7100 ) ) ;
AO221X1_RVT ctmi_7853 ( .A1 ( phfnn_256 ) , 
    .A2 ( port1_i_port_fifo_mem[94] ) , .A3 ( phfnn_258 ) , 
    .A4 ( port1_i_port_fifo_mem[126] ) , .A5 ( ctmn_7098 ) , 
    .Y ( ctmn_7099 ) ) ;
OA22X1_RVT ctmi_7387 ( .A1 ( ctmn_6725 ) , .A2 ( phfnn_290 ) , 
    .A3 ( ctmn_6730 ) , .A4 ( phfnn_291 ) , .Y ( ctmn_6796 ) ) ;
NAND2X0_RVT ctmi_7273 ( .A1 ( phfnn_283 ) , .A2 ( ctmn_6700 ) , 
    .Y ( ctmn_6701 ) ) ;
AO22X1_RVT ctmi_7274 ( .A1 ( ctmn_6692 ) , .A2 ( phfnn_280 ) , 
    .A3 ( HFSNET_4 ) , .A4 ( HFSNET_5 ) , .Y ( ctmn_6700 ) ) ;
NOR2X0_RVT ctmi_7814 ( .A1 ( port3_i_port_fifo_fifo_count[1] ) , 
    .A2 ( HFSNET_3 ) , .Y ( ctmn_7066 ) ) ;
OR2X1_RVT ctmi_7815 ( .A1 ( ctmn_6781 ) , .A2 ( ctmn_6920 ) , 
    .Y ( ctmn_7068 ) ) ;
NAND2X0_RVT ctmi_7388 ( .A1 ( port1_valid_in ) , .A2 ( ctmn_6797 ) , 
    .Y ( ctmn_6798 ) ) ;
OA221X1_RVT ctmi_7275 ( .A1 ( port1_i_port_fifo_mem[103] ) , 
    .A2 ( ctmn_6583 ) , .A3 ( ctmn_6589 ) , 
    .A4 ( port1_i_port_fifo_mem[119] ) , .A5 ( ctmn_6704 ) , 
    .Y ( port1_i_port_fifo_N34 ) ) ;
OA221X1_RVT ctmi_7276 ( .A1 ( HFSNET_7 ) , .A2 ( port1_i_port_fifo_mem[39] ) , 
    .A3 ( port1_i_port_fifo_mem[7] ) , .A4 ( ctmn_6585 ) , 
    .A5 ( ctmn_6703_CDR1 ) , .Y ( ctmn_6704 ) ) ;
OA221X1_RVT ctmi_7279 ( .A1 ( port0_i_port_fifo_mem[7] ) , .A2 ( ctmn_6601 ) , 
    .A3 ( port0_i_port_fifo_mem[71] ) , .A4 ( ctmn_6598 ) , 
    .A5 ( ctmn_6707_CDR1 ) , .Y ( port0_i_port_fifo_N34 ) ) ;
OA221X1_RVT ctmi_7280 ( .A1 ( port0_i_port_fifo_mem[23] ) , 
    .A2 ( ctmn_6600 ) , .A3 ( ctmn_6603 ) , 
    .A4 ( port0_i_port_fifo_mem[39] ) , .A5 ( ctmn_6706_CDR1 ) , 
    .Y ( ctmn_6707_CDR1 ) ) ;
OA221X1_RVT ctmi_7281 ( .A1 ( ctmn_6602 ) , 
    .A2 ( port0_i_port_fifo_mem[87] ) , .A3 ( ctmn_6606 ) , 
    .A4 ( port0_i_port_fifo_mem[55] ) , .A5 ( ctmn_6705 ) , 
    .Y ( ctmn_6706_CDR1 ) ) ;
OA22X1_RVT ctmi_7282 ( .A1 ( port0_i_port_fifo_mem[103] ) , 
    .A2 ( ctmn_6597 ) , .A3 ( ctmn_6605 ) , 
    .A4 ( port0_i_port_fifo_mem[119] ) , .Y ( ctmn_6705 ) ) ;
OA221X1_RVT ctmi_7283 ( .A1 ( ctmn_6634 ) , .A2 ( port2_i_port_fifo_mem[7] ) , 
    .A3 ( port2_i_port_fifo_mem[103] ) , .A4 ( ctmn_6629 ) , 
    .A5 ( ctmn_6710_CDR1 ) , .Y ( port2_i_port_fifo_N34 ) ) ;
OA221X1_RVT ctmi_7284 ( .A1 ( ctmn_6627 ) , 
    .A2 ( port2_i_port_fifo_mem[87] ) , .A3 ( port2_i_port_fifo_mem[119] ) , 
    .A4 ( ctmn_6632 ) , .A5 ( ctmn_6709_CDR1 ) , .Y ( ctmn_6710_CDR1 ) ) ;
OA221X1_RVT ctmi_7285 ( .A1 ( ctmn_6633 ) , 
    .A2 ( port2_i_port_fifo_mem[55] ) , .A3 ( port2_i_port_fifo_mem[23] ) , 
    .A4 ( ctmn_6635 ) , .A5 ( ctmn_6708_CDR1 ) , .Y ( ctmn_6709_CDR1 ) ) ;
OA22X1_RVT ctmi_7286 ( .A1 ( port2_i_port_fifo_mem[71] ) , .A2 ( ctmn_6630 ) , 
    .A3 ( ctmn_6636 ) , .A4 ( port2_i_port_fifo_mem[39] ) , 
    .Y ( ctmn_6708_CDR1 ) ) ;
AO22X1_RVT ctmi_7854 ( .A1 ( phfnn_247 ) , .A2 ( port1_i_port_fifo_mem[62] ) , 
    .A3 ( phfnn_257 ) , .A4 ( port1_i_port_fifo_mem[30] ) , .Y ( ctmn_7098 ) ) ;
OA221X1_RVT ctmi_7287 ( .A1 ( ctmn_6619 ) , 
    .A2 ( port3_i_port_fifo_mem[71] ) , .A3 ( port3_i_port_fifo_mem[103] ) , 
    .A4 ( ctmn_6614 ) , .A5 ( ctmn_6713_CDR1 ) , 
    .Y ( port3_i_port_fifo_N34 ) ) ;
OA221X1_RVT ctmi_7288 ( .A1 ( port3_i_port_fifo_mem[23] ) , 
    .A2 ( ctmn_6615 ) , .A3 ( port3_i_port_fifo_mem[39] ) , 
    .A4 ( ctmn_6618 ) , .A5 ( ctmn_6712_CDR1 ) , .Y ( ctmn_6713_CDR1 ) ) ;
OA221X1_RVT ctmi_7289 ( .A1 ( ctmn_6612 ) , 
    .A2 ( port3_i_port_fifo_mem[87] ) , .A3 ( ctmn_6621 ) , 
    .A4 ( port3_i_port_fifo_mem[7] ) , .A5 ( ctmn_6711 ) , 
    .Y ( ctmn_6712_CDR1 ) ) ;
OA22X1_RVT ctmi_7290 ( .A1 ( port3_i_port_fifo_mem[119] ) , 
    .A2 ( ctmn_6617 ) , .A3 ( ctmn_6620 ) , 
    .A4 ( port3_i_port_fifo_mem[55] ) , .Y ( ctmn_6711 ) ) ;
CGLPPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_9 ( .CLK ( clk ) , 
    .EN ( port1_i_port_fifo_N7 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) ) ;
NAND2X0_RVT ctmi_7292 ( .A1 ( ctmn_6725 ) , .A2 ( ctmn_6730 ) , 
    .Y ( top_arb_i_N20 ) ) ;
NAND2X0_RVT ctmi_7293 ( .A1 ( phfnn_278 ) , .A2 ( ctmn_6724 ) , 
    .Y ( ctmn_6725 ) ) ;
NAND2X0_RVT ctmi_7294 ( .A1 ( port1_i_port_fifo_N34 ) , .A2 ( ctmn_6642 ) , 
    .Y ( ctmn_6714 ) ) ;
AO221X1_RVT ctmi_7855 ( .A1 ( HFSNET_8 ) , 
    .A2 ( port1_i_port_fifo_mem[111] ) , .A3 ( ctmn_6581 ) , 
    .A4 ( port1_i_port_fifo_mem[47] ) , .A5 ( ctmn_7103 ) , 
    .Y ( port1_i_port_fifo_N26 ) ) ;
AO221X1_RVT ctmi_7856 ( .A1 ( phfnn_246 ) , 
    .A2 ( port1_i_port_fifo_mem[79] ) , .A3 ( phfnn_234 ) , 
    .A4 ( port1_i_port_fifo_mem[15] ) , .A5 ( ctmn_7102 ) , .Y ( ctmn_7103 ) ) ;
INVX0_LVT phfnr_buf_955 ( .A ( ctmn_6627 ) , .Y ( phfnn_259 ) ) ;
AND2X1_RVT ctmi_7296 ( .A1 ( ctmn_6718 ) , .A2 ( ctmn_6723 ) , 
    .Y ( ctmn_6724 ) ) ;
NAND2X0_RVT ctmi_7297 ( .A1 ( ctmn_6716 ) , .A2 ( ctmn_6717 ) , 
    .Y ( ctmn_6718 ) ) ;
AO21X1_RVT ctmi_7298 ( .A1 ( port0_i_port_fifo_N34 ) , .A2 ( ctmn_6684 ) , 
    .A3 ( HFSNET_5 ) , .Y ( ctmn_6716 ) ) ;
AO21X1_RVT ctmi_7299 ( .A1 ( port2_i_port_fifo_N34 ) , .A2 ( ctmn_6660 ) , 
    .A3 ( HFSNET_6 ) , .Y ( ctmn_6717 ) ) ;
INVX0_RVT phfnr_buf_981 ( .A ( ctmn_6721 ) , .Y ( phfnn_285 ) ) ;
INVX2_RVT phfnr_buf_939 ( .A ( ctmn_6620 ) , .Y ( phfnn_243 ) ) ;
INVX0_RVT phfnr_buf_980 ( .A ( ctmn_6726 ) , .Y ( phfnn_284 ) ) ;
AO221X1_RVT ctmi_7857 ( .A1 ( phfnn_258 ) , 
    .A2 ( port1_i_port_fifo_mem[127] ) , .A3 ( phfnn_256 ) , 
    .A4 ( port1_i_port_fifo_mem[95] ) , .A5 ( ctmn_7101 ) , .Y ( ctmn_7102 ) ) ;
AO22X1_RVT ctmi_7858 ( .A1 ( phfnn_247 ) , .A2 ( port1_i_port_fifo_mem[63] ) , 
    .A3 ( phfnn_257 ) , .A4 ( port1_i_port_fifo_mem[31] ) , .Y ( ctmn_7101 ) ) ;
INVX0_HVT phfnr_buf_941 ( .A ( ctmn_7063 ) , .Y ( phfnn_245 ) ) ;
NAND2X0_RVT ctmi_7303 ( .A1 ( port3_i_port_fifo_N34 ) , .A2 ( ctmn_6648 ) , 
    .Y ( ctmn_6721 ) ) ;
INVX0_RVT phfnr_buf_947 ( .A ( ctmn_6602 ) , .Y ( phfnn_251 ) ) ;
NAND2X0_RVT ctmi_7305 ( .A1 ( phfnn_285 ) , .A2 ( ctmn_6729 ) , 
    .Y ( ctmn_6730 ) ) ;
AND2X1_RVT ctmi_7306 ( .A1 ( ctmn_6718 ) , .A2 ( ctmn_6728 ) , 
    .Y ( ctmn_6729 ) ) ;
OAI21X1_RVT ctmi_7307 ( .A1 ( phfnn_278 ) , .A2 ( phfnn_284 ) , 
    .A3 ( ctmn_6717 ) , .Y ( ctmn_6728 ) ) ;
NAND2X0_RVT ctmi_7308 ( .A1 ( port2_i_port_fifo_N34 ) , .A2 ( ctmn_6659 ) , 
    .Y ( ctmn_6726 ) ) ;
INVX2_HVT phfnr_buf_948 ( .A ( ctmn_6605 ) , .Y ( phfnn_252 ) ) ;
NAND2X0_RVT ctmi_7310 ( .A1 ( ctmn_6730 ) , .A2 ( ctmn_6732 ) , 
    .Y ( top_arb_i_N19 ) ) ;
AO22X1_RVT ctmi_7868 ( .A1 ( phfnn_239 ) , .A2 ( port2_i_port_fifo_mem[56] ) , 
    .A3 ( phfnn_260 ) , .A4 ( port2_i_port_fifo_mem[24] ) , .Y ( ctmn_7112 ) ) ;
NBUFFX2_RVT ZBUF_59_inst_1026 ( .A ( fifo_data_out2[15] ) , .Y ( ZBUF_59_0 ) ) ;
INVX2_HVT phfnr_buf_956 ( .A ( ctmn_6635 ) , .Y ( phfnn_260 ) ) ;
INVX0_RVT ctmi_148 ( .A ( ctmn_6798 ) , .Y ( port1_i_port_fifo_N13 ) ) ;
NAND2X0_RVT ctmi_7389 ( .A1 ( ctmn_6640 ) , 
    .A2 ( port1_i_port_fifo_fifo_count[3] ) , .Y ( ctmn_6797 ) ) ;
INVX0_HVT phfnr_buf_949 ( .A ( ctmn_7206 ) , .Y ( phfnn_253 ) ) ;
INVX2_HVT HFSINV_408_1019 ( .A ( ctmn_6581 ) , .Y ( HFSNET_7 ) ) ;
AO221X1_RVT ctmi_7871 ( .A1 ( phfnn_261 ) , 
    .A2 ( port2_i_port_fifo_mem[105] ) , .A3 ( phfnn_262 ) , 
    .A4 ( port2_i_port_fifo_mem[41] ) , .A5 ( ctmn_7117 ) , 
    .Y ( port2_i_port_fifo_N32 ) ) ;
AO221X1_RVT ctmi_7872 ( .A1 ( phfnn_238 ) , 
    .A2 ( port2_i_port_fifo_mem[73] ) , .A3 ( phfnn_240 ) , 
    .A4 ( port2_i_port_fifo_mem[9] ) , .A5 ( ctmn_7116 ) , .Y ( ctmn_7117 ) ) ;
INVX0_HVT phfnr_buf_960 ( .A ( ctmn_7209 ) , .Y ( phfnn_264 ) ) ;
NAND2X0_RVT ctmi_7311 ( .A1 ( phfnn_284 ) , .A2 ( ctmn_6731 ) , 
    .Y ( ctmn_6732 ) ) ;
AO22X1_RVT ctmi_7312 ( .A1 ( ctmn_6723 ) , .A2 ( ctmn_6714 ) , 
    .A3 ( HFSNET_4 ) , .A4 ( HFSNET_5 ) , .Y ( ctmn_6731 ) ) ;
CGLPPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_10 ( .CLK ( clk ) , 
    .EN ( port1_i_port_fifo_N6 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) ) ;
AO221X1_RVT ctmi_7873 ( .A1 ( phfnn_263 ) , 
    .A2 ( port2_i_port_fifo_mem[121] ) , .A3 ( phfnn_259 ) , 
    .A4 ( port2_i_port_fifo_mem[89] ) , .A5 ( ctmn_7115 ) , .Y ( ctmn_7116 ) ) ;
AO22X1_RVT ctmi_7874 ( .A1 ( phfnn_239 ) , .A2 ( port2_i_port_fifo_mem[57] ) , 
    .A3 ( phfnn_260 ) , .A4 ( port2_i_port_fifo_mem[25] ) , .Y ( ctmn_7115 ) ) ;
NAND2X1_RVT ctmi_7391 ( .A1 ( port2_valid_in ) , .A2 ( ctmn_6799 ) , 
    .Y ( ctmn_6800 ) ) ;
NAND2X1_RVT ctmi_7314 ( .A1 ( port0_valid_in ) , .A2 ( ctmn_6733 ) , 
    .Y ( ctmn_6734 ) ) ;
NAND2X0_RVT ctmi_7315 ( .A1 ( port0_i_port_fifo_fifo_count[3] ) , 
    .A2 ( ctmn_6650 ) , .Y ( ctmn_6733 ) ) ;
CGLPPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg ( .CLK ( clk ) , 
    .EN ( port3_i_port_fifo_N11 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) ) ;
AOI222X1_RVT ctmi_7785 ( .A1 ( ctmn_7046 ) , .A2 ( ctmn_6921 ) , 
    .A3 ( ctmn_7046 ) , .A4 ( ctmn_6641 ) , .A5 ( ctmn_7046 ) , 
    .A6 ( ctmn_6640 ) , .Y ( port1_i_port_fifo_N22 ) ) ;
OA221X1_RVT ctmi_7317 ( .A1 ( port0_i_port_fifo_mem[20] ) , 
    .A2 ( ctmn_6600 ) , .A3 ( ctmn_6598 ) , 
    .A4 ( port0_i_port_fifo_mem[68] ) , .A5 ( ctmn_6737 ) , 
    .Y ( port0_i_port_fifo_N37 ) ) ;
OA221X1_RVT ctmi_7536 ( .A1 ( port3_i_port_fifo_mem[17] ) , 
    .A2 ( ctmn_6615 ) , .A3 ( ctmn_6619 ) , 
    .A4 ( port3_i_port_fifo_mem[65] ) , .A5 ( ctmn_6907 ) , 
    .Y ( port3_i_port_fifo_N40 ) ) ;
OA221X1_RVT ctmi_7537 ( .A1 ( ctmn_6618 ) , 
    .A2 ( port3_i_port_fifo_mem[33] ) , .A3 ( port3_i_port_fifo_mem[97] ) , 
    .A4 ( ctmn_6614 ) , .A5 ( ctmn_6906_CDR1 ) , .Y ( ctmn_6907 ) ) ;
CGLPPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_22 ( .CLK ( clk ) , 
    .EN ( port3_i_port_fifo_N9 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) ) ;
NOR4X0_HVT ctmi_7534 ( .A1 ( ctmn_6899 ) , .A2 ( ctmn_6896 ) , 
    .A3 ( ctmn_6904 ) , .A4 ( ctmn_6734 ) , .Y ( port0_i_port_fifo_N2 ) ) ;
OA221X1_RVT ctmi_7321 ( .A1 ( ctmn_6614 ) , 
    .A2 ( port3_i_port_fifo_mem[100] ) , .A3 ( port3_i_port_fifo_mem[20] ) , 
    .A4 ( ctmn_6615 ) , .A5 ( ctmn_6740_CDR1 ) , 
    .Y ( port3_i_port_fifo_N37 ) ) ;
OA221X1_RVT ctmi_7322 ( .A1 ( ctmn_6620 ) , 
    .A2 ( port3_i_port_fifo_mem[52] ) , .A3 ( ctmn_6621 ) , 
    .A4 ( port3_i_port_fifo_mem[4] ) , .A5 ( ctmn_6739_CDR1 ) , 
    .Y ( ctmn_6740_CDR1 ) ) ;
OA221X1_RVT ctmi_7323 ( .A1 ( port3_i_port_fifo_mem[116] ) , 
    .A2 ( ctmn_6617 ) , .A3 ( port3_i_port_fifo_mem[84] ) , 
    .A4 ( ctmn_6612 ) , .A5 ( ctmn_6738_CDR1 ) , .Y ( ctmn_6739_CDR1 ) ) ;
OA22X1_RVT ctmi_7324 ( .A1 ( ctmn_6618 ) , .A2 ( port3_i_port_fifo_mem[36] ) , 
    .A3 ( port3_i_port_fifo_mem[68] ) , .A4 ( ctmn_6619 ) , 
    .Y ( ctmn_6738_CDR1 ) ) ;
OA221X1_RVT ctmi_7325 ( .A1 ( ctmn_6629 ) , 
    .A2 ( port2_i_port_fifo_mem[100] ) , .A3 ( port2_i_port_fifo_mem[116] ) , 
    .A4 ( ctmn_6632 ) , .A5 ( ctmn_6743 ) , .Y ( port2_i_port_fifo_N37 ) ) ;
OA221X1_RVT ctmi_7326 ( .A1 ( ctmn_6636 ) , 
    .A2 ( port2_i_port_fifo_mem[36] ) , .A3 ( port2_i_port_fifo_mem[68] ) , 
    .A4 ( ctmn_6630 ) , .A5 ( ctmn_6742_CDR1 ) , .Y ( ctmn_6743 ) ) ;
OA221X1_RVT ctmi_7327 ( .A1 ( ctmn_6633 ) , 
    .A2 ( port2_i_port_fifo_mem[52] ) , .A3 ( port2_i_port_fifo_mem[84] ) , 
    .A4 ( ctmn_6627 ) , .A5 ( ctmn_6741_CDR1 ) , .Y ( ctmn_6742_CDR1 ) ) ;
OA22X1_RVT ctmi_7328 ( .A1 ( ctmn_6635 ) , .A2 ( port2_i_port_fifo_mem[20] ) , 
    .A3 ( port2_i_port_fifo_mem[4] ) , .A4 ( ctmn_6634 ) , 
    .Y ( ctmn_6741_CDR1 ) ) ;
AO221X1_RVT ctmi_7875 ( .A1 ( phfnn_261 ) , 
    .A2 ( port2_i_port_fifo_mem[106] ) , .A3 ( phfnn_262 ) , 
    .A4 ( port2_i_port_fifo_mem[42] ) , .A5 ( ctmn_7120 ) , 
    .Y ( port2_i_port_fifo_N31 ) ) ;
AO221X1_RVT ctmi_7876 ( .A1 ( phfnn_238 ) , 
    .A2 ( port2_i_port_fifo_mem[74] ) , .A3 ( phfnn_240 ) , 
    .A4 ( port2_i_port_fifo_mem[10] ) , .A5 ( ctmn_7119 ) , .Y ( ctmn_7120 ) ) ;
AO221X1_RVT ctmi_7786 ( .A1 ( ctmn_6641 ) , .A2 ( phfnn_235 ) , 
    .A3 ( port1_i_port_fifo_fifo_count[3] ) , .A4 ( ctmn_7045 ) , 
    .A5 ( phfnn_153 ) , .Y ( ctmn_7046 ) ) ;
INVX2_HVT phfnr_buf_961 ( .A ( ctmn_6612 ) , .Y ( phfnn_265 ) ) ;
OA221X1_RVT ctmi_7329 ( .A1 ( port1_i_port_fifo_mem[4] ) , .A2 ( ctmn_6585 ) , 
    .A3 ( ctmn_6589 ) , .A4 ( port1_i_port_fifo_mem[116] ) , 
    .A5 ( ctmn_6746 ) , .Y ( port1_i_port_fifo_N37 ) ) ;
OA221X1_RVT ctmi_7330 ( .A1 ( ctmn_6583 ) , 
    .A2 ( port1_i_port_fifo_mem[100] ) , .A3 ( port1_i_port_fifo_mem[68] ) , 
    .A4 ( ctmn_6584 ) , .A5 ( ctmn_6745 ) , .Y ( ctmn_6746 ) ) ;
OA221X1_RVT ctmi_7331 ( .A1 ( port1_i_port_fifo_mem[36] ) , .A2 ( HFSNET_7 ) , 
    .A3 ( ctmn_6590 ) , .A4 ( port1_i_port_fifo_mem[52] ) , 
    .A5 ( ctmn_6744 ) , .Y ( ctmn_6745 ) ) ;
OA22X1_RVT ctmi_7332 ( .A1 ( ctmn_6591 ) , .A2 ( port1_i_port_fifo_mem[20] ) , 
    .A3 ( port1_i_port_fifo_mem[84] ) , .A4 ( ctmn_6587 ) , .Y ( ctmn_6744 ) ) ;
CGLPPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_11 ( .CLK ( clk ) , 
    .EN ( port1_i_port_fifo_N5 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) ) ;
OAI221X1_RVT ctmi_7334 ( .A1 ( phfnn_276 ) , .A2 ( phfnn_292 ) , 
    .A3 ( ctmn_6766 ) , .A4 ( phfnn_289 ) , .A5 ( ctmn_6793 ) , 
    .Y ( top_arb_i_N23 ) ) ;
INVX0_RVT phfnr_buf_965 ( .A ( ctmn_6617 ) , .Y ( phfnn_269 ) ) ;
NOR4X1_RVT ctmi_7336 ( .A1 ( ctmn_6748 ) , .A2 ( port0_i_current_state[0] ) , 
    .A3 ( ctmn_6749 ) , .A4 ( ctmn_6760 ) , .Y ( ctmn_6761 ) ) ;
AO221X1_RVT ctmi_7877 ( .A1 ( phfnn_263 ) , 
    .A2 ( port2_i_port_fifo_mem[122] ) , .A3 ( phfnn_259 ) , 
    .A4 ( port2_i_port_fifo_mem[90] ) , .A5 ( ctmn_7118 ) , .Y ( ctmn_7119 ) ) ;
CGLPPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_12 ( .CLK ( clk ) , 
    .EN ( port1_i_port_fifo_N4 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) ) ;
INVX0_RVT phfnr_buf_966 ( .A ( ctmn_6916 ) , .Y ( phfnn_270 ) ) ;
AOI22X1_RVT ctmi_7339 ( .A1 ( HFSNET_6 ) , .A2 ( top_arb_i_N22 ) , 
    .A3 ( ctmn_6757 ) , .A4 ( ctmn_6759 ) , .Y ( ctmn_6760 ) ) ;
OA222X1_RVT ctmi_7340 ( .A1 ( phfnn_273 ) , .A2 ( ctmn_6690 ) , 
    .A3 ( phfnn_273 ) , .A4 ( ctmn_6697 ) , .A5 ( ctmn_6756 ) , 
    .A6 ( phfnn_276 ) , .Y ( ctmn_6757 ) ) ;
AND2X1_RVT ctmi_7341 ( .A1 ( phfnn_270 ) , .A2 ( ctmn_6755 ) , 
    .Y ( ctmn_6756 ) ) ;
INVX0_RVT phfnr_buf_988 ( .A ( ctmn_6761 ) , .Y ( phfnn_292 ) ) ;
OA221X1_RVT ctmTdsLR_1_1024 ( .A1 ( port3_i_port_fifo_fifo_count[2] ) , 
    .A2 ( port3_i_port_fifo_fifo_count[1] ) , 
    .A3 ( port3_i_port_fifo_fifo_count[2] ) , .A4 ( HFSNET_3 ) , 
    .A5 ( phfnn_245 ) , .Y ( ctmn_7070 ) ) ;
INVX1_HVT phfnr_buf_967 ( .A ( ctmn_6649 ) , .Y ( phfnn_271 ) ) ;
AO22X1_RVT ctmi_7878 ( .A1 ( phfnn_260 ) , .A2 ( port2_i_port_fifo_mem[26] ) , 
    .A3 ( phfnn_239 ) , .A4 ( port2_i_port_fifo_mem[58] ) , .Y ( ctmn_7118 ) ) ;
INVX0_HVT phfnr_buf_969 ( .A ( ctmn_6689 ) , .Y ( phfnn_273 ) ) ;
OA221X1_RVT ctmTdsLR_1_1025 ( .A1 ( port1_i_port_fifo_fifo_count[2] ) , 
    .A2 ( port1_i_port_fifo_fifo_count[1] ) , 
    .A3 ( port1_i_port_fifo_fifo_count[2] ) , .A4 ( HFSNET_2 ) , 
    .A5 ( phfnn_235 ) , .Y ( ctmn_7051 ) ) ;
NAND2X0_RVT ctmi_7347 ( .A1 ( top_arb_i_common_ptr[1] ) , .A2 ( HFSNET_4 ) , 
    .Y ( ctmn_6753 ) ) ;
OA222X1_RVT ctmi_7348 ( .A1 ( phfnn_274 ) , .A2 ( ctmn_6649 ) , 
    .A3 ( phfnn_274 ) , .A4 ( ctmn_6666 ) , .A5 ( ctmn_6758 ) , 
    .A6 ( phfnn_275 ) , .Y ( ctmn_6759 ) ) ;
AND2X1_RVT ctmi_7349 ( .A1 ( ctmn_6721 ) , .A2 ( ctmn_6728 ) , 
    .Y ( ctmn_6758 ) ) ;
INVX0_RVT phfnr_buf_970 ( .A ( ctmn_6827 ) , .Y ( phfnn_274 ) ) ;
NAND2X0_RVT ctmi_7351 ( .A1 ( ctmn_6763 ) , .A2 ( ctmn_6765 ) , 
    .Y ( ctmn_6766 ) ) ;
INVX0_HVT phfnr_buf_971 ( .A ( phfnn_133 ) , .Y ( phfnn_275 ) ) ;
AO221X1_RVT ctmi_7879 ( .A1 ( phfnn_261 ) , 
    .A2 ( port2_i_port_fifo_mem[107] ) , .A3 ( phfnn_262 ) , 
    .A4 ( port2_i_port_fifo_mem[43] ) , .A5 ( ctmn_7123 ) , 
    .Y ( port2_i_port_fifo_N30 ) ) ;
AO221X1_RVT ctmi_7880 ( .A1 ( phfnn_238 ) , 
    .A2 ( port2_i_port_fifo_mem[75] ) , .A3 ( phfnn_240 ) , 
    .A4 ( port2_i_port_fifo_mem[11] ) , .A5 ( ctmn_7122 ) , .Y ( ctmn_7123 ) ) ;
AO221X1_RVT ctmi_7881 ( .A1 ( phfnn_263 ) , 
    .A2 ( port2_i_port_fifo_mem[123] ) , .A3 ( phfnn_259 ) , 
    .A4 ( port2_i_port_fifo_mem[91] ) , .A5 ( ctmn_7121 ) , .Y ( ctmn_7122 ) ) ;
AO22X1_RVT ctmi_7882 ( .A1 ( phfnn_239 ) , .A2 ( port2_i_port_fifo_mem[59] ) , 
    .A3 ( phfnn_260 ) , .A4 ( port2_i_port_fifo_mem[27] ) , .Y ( ctmn_7121 ) ) ;
AO221X1_RVT ctmi_7883 ( .A1 ( phfnn_261 ) , 
    .A2 ( port2_i_port_fifo_mem[108] ) , .A3 ( phfnn_262 ) , 
    .A4 ( port2_i_port_fifo_mem[44] ) , .A5 ( ctmn_7126 ) , 
    .Y ( port2_i_port_fifo_N29 ) ) ;
INVX0_RVT phfnr_buf_972 ( .A ( ctmn_6828 ) , .Y ( phfnn_276 ) ) ;
AO22X1_RVT ctmi_7789 ( .A1 ( ctmn_7049 ) , .A2 ( ctmn_6886 ) , 
    .A3 ( ctmn_7051 ) , .A4 ( phfnn_295 ) , .Y ( port1_i_port_fifo_N23 ) ) ;
AOI222X1_RVT ctmi_7790 ( .A1 ( ctmn_6797 ) , .A2 ( ctmn_7047 ) , 
    .A3 ( ctmn_6797 ) , .A4 ( ctmn_7048 ) , .A5 ( ctmn_6797 ) , 
    .A6 ( port1_valid_in ) , .Y ( ctmn_7049 ) ) ;
CGLPPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_13 ( .CLK ( clk ) , 
    .EN ( port1_i_port_fifo_N3 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) ) ;
NOR2X0_RVT ctmi_7792 ( .A1 ( port1_i_port_fifo_fifo_count[1] ) , 
    .A2 ( HFSNET_2 ) , .Y ( ctmn_7048 ) ) ;
AO22X1_RVT ctmi_7353 ( .A1 ( ctmn_6764 ) , .A2 ( phfnn_279 ) , 
    .A3 ( HFSNET_4 ) , .A4 ( HFSNET_5 ) , .Y ( ctmn_6765 ) ) ;
INVX1_HVT phfnr_buf_975 ( .A ( ctmn_6783 ) , .Y ( phfnn_279 ) ) ;
INVX0_HVT phfnr_buf_976 ( .A ( phfnn_138 ) , .Y ( phfnn_280 ) ) ;
OAI221X1_RVT ctmi_7382 ( .A1 ( phfnn_274 ) , .A2 ( phfnn_292 ) , 
    .A3 ( ctmn_6669 ) , .A4 ( phfnn_289 ) , .A5 ( ctmn_6794 ) , 
    .Y ( top_arb_i_N24 ) ) ;
AO221X1_RVT ctmi_7884 ( .A1 ( phfnn_238 ) , 
    .A2 ( port2_i_port_fifo_mem[76] ) , .A3 ( phfnn_240 ) , 
    .A4 ( port2_i_port_fifo_mem[12] ) , .A5 ( ctmn_7125 ) , .Y ( ctmn_7126 ) ) ;
AO221X1_RVT ctmi_7885 ( .A1 ( phfnn_263 ) , 
    .A2 ( port2_i_port_fifo_mem[124] ) , .A3 ( phfnn_259 ) , 
    .A4 ( port2_i_port_fifo_mem[92] ) , .A5 ( ctmn_7124 ) , .Y ( ctmn_7125 ) ) ;
AO22X1_RVT ctmi_7886 ( .A1 ( phfnn_239 ) , .A2 ( port2_i_port_fifo_mem[60] ) , 
    .A3 ( phfnn_260 ) , .A4 ( port2_i_port_fifo_mem[28] ) , .Y ( ctmn_7124 ) ) ;
AO221X1_RVT ctmi_7887 ( .A1 ( phfnn_261 ) , 
    .A2 ( port2_i_port_fifo_mem[109] ) , .A3 ( phfnn_262 ) , 
    .A4 ( port2_i_port_fifo_mem[45] ) , .A5 ( ctmn_7129 ) , 
    .Y ( port2_i_port_fifo_N28 ) ) ;
AO221X1_RVT ctmi_7888 ( .A1 ( phfnn_238 ) , 
    .A2 ( port2_i_port_fifo_mem[77] ) , .A3 ( phfnn_240 ) , 
    .A4 ( port2_i_port_fifo_mem[13] ) , .A5 ( ctmn_7128 ) , .Y ( ctmn_7129 ) ) ;
AO221X1_RVT ctmi_7569 ( .A1 ( fifo_data_out0[9] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[9] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6927 ) , 
    .Y ( MXIOP_26_0 ) ) ;
AO221X1_RVT ctmi_7889 ( .A1 ( phfnn_263 ) , 
    .A2 ( port2_i_port_fifo_mem[125] ) , .A3 ( phfnn_259 ) , 
    .A4 ( port2_i_port_fifo_mem[93] ) , .A5 ( ctmn_7127 ) , .Y ( ctmn_7128 ) ) ;
AO22X1_RVT ctmi_7890 ( .A1 ( phfnn_260 ) , .A2 ( port2_i_port_fifo_mem[29] ) , 
    .A3 ( phfnn_239 ) , .A4 ( port2_i_port_fifo_mem[61] ) , .Y ( ctmn_7127 ) ) ;
AO221X1_RVT ctmi_7891 ( .A1 ( phfnn_262 ) , 
    .A2 ( port2_i_port_fifo_mem[46] ) , .A3 ( phfnn_261 ) , 
    .A4 ( port2_i_port_fifo_mem[110] ) , .A5 ( ctmn_7132_CDR1 ) , 
    .Y ( port2_i_port_fifo_N27 ) ) ;
AO221X1_RVT ctmi_7892 ( .A1 ( phfnn_238 ) , 
    .A2 ( port2_i_port_fifo_mem[78] ) , .A3 ( phfnn_240 ) , 
    .A4 ( port2_i_port_fifo_mem[14] ) , .A5 ( ctmn_7131_CDR1 ) , 
    .Y ( ctmn_7132_CDR1 ) ) ;
AO221X1_RVT ctmi_7893 ( .A1 ( phfnn_263 ) , 
    .A2 ( port2_i_port_fifo_mem[126] ) , .A3 ( phfnn_259 ) , 
    .A4 ( port2_i_port_fifo_mem[94] ) , .A5 ( ctmn_7130_CDR1 ) , 
    .Y ( ctmn_7131_CDR1 ) ) ;
AO22X1_RVT ctmi_7894 ( .A1 ( phfnn_239 ) , .A2 ( port2_i_port_fifo_mem[62] ) , 
    .A3 ( phfnn_260 ) , .A4 ( port2_i_port_fifo_mem[30] ) , 
    .Y ( ctmn_7130_CDR1 ) ) ;
OA22X1_RVT ctmi_7383 ( .A1 ( ctmn_6663 ) , .A2 ( phfnn_290 ) , 
    .A3 ( phfnn_287 ) , .A4 ( phfnn_291 ) , .Y ( ctmn_6794 ) ) ;
AO221X1_RVT ctmi_7895 ( .A1 ( phfnn_262 ) , 
    .A2 ( port2_i_port_fifo_mem[47] ) , .A3 ( phfnn_261 ) , 
    .A4 ( port2_i_port_fifo_mem[111] ) , .A5 ( ctmn_7135_CDR1 ) , 
    .Y ( port2_i_port_fifo_N26 ) ) ;
AO221X1_RVT ctmi_7896 ( .A1 ( phfnn_238 ) , 
    .A2 ( port2_i_port_fifo_mem[79] ) , .A3 ( phfnn_240 ) , 
    .A4 ( port2_i_port_fifo_mem[15] ) , .A5 ( ctmn_7134_CDR1 ) , 
    .Y ( ctmn_7135_CDR1 ) ) ;
AO22X1_RVT ctmi_7800 ( .A1 ( ctmn_7058 ) , .A2 ( ctmn_6888 ) , 
    .A3 ( ctmn_7060 ) , .A4 ( phfnn_294 ) , .Y ( port2_i_port_fifo_N23 ) ) ;
AOI222X1_RVT ctmi_7801 ( .A1 ( ctmn_6799 ) , .A2 ( ctmn_7056 ) , 
    .A3 ( ctmn_6799 ) , .A4 ( ctmn_7057 ) , .A5 ( ctmn_6799 ) , 
    .A6 ( port2_valid_in ) , .Y ( ctmn_7058 ) ) ;
CGLPPRX2_HVT clock_gate_port1_i_port_fifo_mem_reg_14 ( .CLK ( clk ) , 
    .EN ( port1_i_port_fifo_N2 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) ) ;
NOR2X1_RVT ctmi_7803 ( .A1 ( port2_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port2_i_port_fifo_fifo_count[0] ) , .Y ( ctmn_7057 ) ) ;
OA21X1_RVT ctmi_7804 ( .A1 ( port2_i_port_fifo_fifo_count[2] ) , 
    .A2 ( ctmn_7059 ) , .A3 ( phfnn_241 ) , .Y ( ctmn_7060 ) ) ;
AND2X1_RVT ctmi_7805 ( .A1 ( port2_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port2_i_port_fifo_fifo_count[0] ) , .Y ( ctmn_7059 ) ) ;
INVX1_HVT phfnr_buf_977 ( .A ( ctmn_6763 ) , .Y ( phfnn_281 ) ) ;
NAND2X0_RVT ctmi_7392 ( .A1 ( port2_i_port_fifo_fifo_count[3] ) , 
    .A2 ( ctmn_6657 ) , .Y ( ctmn_6799 ) ) ;
AO221X1_RVT ctmi_7897 ( .A1 ( phfnn_259 ) , 
    .A2 ( port2_i_port_fifo_mem[95] ) , .A3 ( phfnn_263 ) , 
    .A4 ( port2_i_port_fifo_mem[127] ) , .A5 ( ctmn_7133_CDR1 ) , 
    .Y ( ctmn_7134_CDR1 ) ) ;
AO22X1_RVT ctmi_7570 ( .A1 ( fifo_data_out1[9] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[9] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6927 ) ) ;
AO22X1_RVT ctmi_7898 ( .A1 ( phfnn_239 ) , .A2 ( port2_i_port_fifo_mem[63] ) , 
    .A3 ( phfnn_260 ) , .A4 ( port2_i_port_fifo_mem[31] ) , 
    .Y ( ctmn_7133_CDR1 ) ) ;
INVX0_RVT ctmi_163 ( .A ( ctmn_6800 ) , .Y ( port2_i_port_fifo_N13 ) ) ;
AO22X1_RVT ctmi_7908 ( .A1 ( phfnn_269 ) , 
    .A2 ( port3_i_port_fifo_mem[120] ) , .A3 ( phfnn_265 ) , 
    .A4 ( port3_i_port_fifo_mem[88] ) , .Y ( ctmn_7144 ) ) ;
INVX0_RVT ctmi_164 ( .A ( ctmn_6802 ) , .Y ( port3_i_port_fifo_N13 ) ) ;
INVX0_HVT phfnr_buf_978 ( .A ( ctmn_6665 ) , .Y ( phfnn_282 ) ) ;
INVX0_HVT phfnr_buf_982 ( .A ( ctmn_6778 ) , .Y ( phfnn_286 ) ) ;
NAND2X1_RVT ctmi_7394 ( .A1 ( port3_valid_in ) , .A2 ( ctmn_6801 ) , 
    .Y ( ctmn_6802 ) ) ;
NAND2X0_RVT ctmi_7395 ( .A1 ( port3_i_port_fifo_fifo_count[3] ) , 
    .A2 ( ctmn_6646 ) , .Y ( ctmn_6801 ) ) ;
INVX1_HVT phfnr_buf_983 ( .A ( ctmn_6776 ) , .Y ( phfnn_287 ) ) ;
AO221X1_RVT ctmi_7397 ( .A1 ( fifo_data_out0[15] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[15] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6809 ) , 
    .Y ( MXIOP_20_0 ) ) ;
AND3X2_RVT ctmi_7398 ( .A1 ( ctmn_6803 ) , .A2 ( ctmn_6804 ) , 
    .A3 ( TDBUF_304 ) , .Y ( ctmn_6805 ) ) ;
CGLPPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_23 ( .CLK ( clk ) , 
    .EN ( port3_i_port_fifo_N7 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) ) ;
CGLPPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_24 ( .CLK ( clk ) , 
    .EN ( port3_i_port_fifo_N6 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) ) ;
AND3X4_LVT ctmi_7401 ( .A1 ( mux_sel0[1] ) , .A2 ( TDBUF_304 ) , 
    .A3 ( mux_sel0[0] ) , .Y ( ctmn_6806 ) ) ;
AO22X1_RVT ctmi_7402 ( .A1 ( fifo_data_out1[15] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( ZBUF_59_0 ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6809 ) ) ;
AND3X2_RVT ctmi_7403 ( .A1 ( ctmn_6803 ) , .A2 ( TDBUF_304 ) , 
    .A3 ( mux_sel0[0] ) , .Y ( ctmn_6807 ) ) ;
AND3X2_RVT ctmi_7404 ( .A1 ( ctmn_6804 ) , .A2 ( mux_sel0[1] ) , 
    .A3 ( TDBUF_304 ) , .Y ( ctmn_6808 ) ) ;
AO221X1_RVT ctmi_7405 ( .A1 ( fifo_data_out0[14] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[14] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6810 ) , 
    .Y ( MXIOP_21_0 ) ) ;
AO22X1_RVT ctmi_7406 ( .A1 ( fifo_data_out1[14] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[14] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6810 ) ) ;
AO221X1_RVT ctmi_7407 ( .A1 ( fifo_data_out0[13] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[13] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6811 ) , 
    .Y ( MXIOP_22_0 ) ) ;
AO22X1_RVT ctmi_7408 ( .A1 ( fifo_data_out1[13] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[13] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6811 ) ) ;
AO221X1_RVT ctmi_7409 ( .A1 ( fifo_data_out0[12] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[12] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6812 ) , 
    .Y ( MXIOP_23_0 ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[125] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[124] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[123] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[122] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[121] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[120] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[119] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[118] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[117] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[116] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[115] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[114] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[113] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[112] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[111] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[110] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[109] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[108] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[107] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[106] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[105] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[104] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[103] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[102] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[101] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[100] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[99] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[98] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[97] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_6__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_6 ) , 
    .Q ( port0_i_port_fifo_mem[96] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[95] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[94] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[93] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[92] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[91] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[90] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[89] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[88] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[87] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[86] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[85] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[84] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[83] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[82] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[81] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_5__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_5 ) , 
    .Q ( port0_i_port_fifo_mem[80] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[79] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[78] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[77] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[76] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[75] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[74] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[73] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[72] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[71] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[70] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[69] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[68] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[67] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[66] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[65] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_4__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_4 ) , 
    .Q ( port0_i_port_fifo_mem[64] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[63] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[62] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[61] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[60] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[59] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[58] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[57] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[56] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[55] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[54] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[53] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[52] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[51] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[50] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[49] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_3__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_3 ) , 
    .Q ( port0_i_port_fifo_mem[48] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[47] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[46] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[45] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[44] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[43] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[42] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[41] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[40] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[39] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[38] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[37] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[36] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[35] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[34] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[33] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_2__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_2 ) , 
    .Q ( port0_i_port_fifo_mem[32] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[31] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[30] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[29] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[28] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[27] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[26] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[25] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[24] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[23] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[22] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[21] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[20] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[19] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[18] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[17] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_1__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_1 ) , 
    .Q ( port0_i_port_fifo_mem[16] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[15] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__14_ ( .D ( port0_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[14] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__13_ ( .D ( port0_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[13] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__12_ ( .D ( port0_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[12] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__11_ ( .D ( port0_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[11] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__10_ ( .D ( port0_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[10] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__9_ ( .D ( port0_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[9] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__8_ ( .D ( port0_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[8] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__7_ ( .D ( port0_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[7] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__6_ ( .D ( port0_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[6] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__5_ ( .D ( port0_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[5] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__4_ ( .D ( port0_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[4] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__3_ ( .D ( port0_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[3] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__2_ ( .D ( port0_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[2] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__1_ ( .D ( port0_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[1] ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_0__0_ ( .D ( port0_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg ) , 
    .Q ( port0_i_port_fifo_mem[0] ) ) ;
AO221X1_RVT ctmi_7911 ( .A1 ( phfnn_267 ) , 
    .A2 ( port3_i_port_fifo_mem[105] ) , .A3 ( phfnn_268 ) , 
    .A4 ( port3_i_port_fifo_mem[41] ) , .A5 ( ctmn_7149 ) , 
    .Y ( port3_i_port_fifo_N32 ) ) ;
AO22X1_RVT ctmi_7410 ( .A1 ( fifo_data_out1[12] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[12] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6812 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_rd_ptr_reg_2_ ( .D ( port0_i_port_fifo_N18 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_port_fifo_rd_ptr[2] ) , .QN ( ctmn_6595 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_rd_ptr_reg_0_ ( .D ( port0_i_port_fifo_N20 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_port_fifo_rd_ptr[0] ) , .QN ( port0_i_port_fifo_N20 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_fifo_count_reg_3_ ( 
    .D ( port0_i_port_fifo_N22 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_fifo_count_reg_clock_gate_port0_i_port_fifo_fifo_count_reg_29 ) , 
    .RSTB ( rst_n ) , .Q ( port0_i_port_fifo_fifo_count[3] ) , 
    .QN ( ctmn_6651 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_rd_ptr_reg_1_ ( .D ( port0_i_port_fifo_N19 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_port_fifo_rd_ptr[1] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_fifo_count_reg_2_ ( 
    .D ( port0_i_port_fifo_N23 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_fifo_count_reg_clock_gate_port0_i_port_fifo_fifo_count_reg_29 ) , 
    .RSTB ( rst_n ) , .Q ( port0_i_port_fifo_fifo_count[2] ) , 
    .QN ( ctmn_7038 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_fifo_count_reg_0_ ( 
    .D ( port0_i_port_fifo_N25 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_fifo_count_reg ) , 
    .RSTB ( rst_n ) , .Q ( port0_i_port_fifo_fifo_count[0] ) , 
    .QN ( ctmn_7023 ) ) ;
SDFFARX1_HVT port1_i_current_state_reg_1_ ( .D ( port1_i_next_state[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port1_i_current_state[1] ) , .QN ( ctmn_6787 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_fifo_count_reg_1_ ( 
    .D ( port0_i_port_fifo_N24 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_fifo_count_reg_clock_gate_port0_i_port_fifo_fifo_count_reg_29 ) , 
    .RSTB ( rst_n ) , .Q ( port0_i_port_fifo_fifo_count[1] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_14_ ( 
    .D ( port0_i_port_fifo_N27 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[14] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_13_ ( 
    .D ( port0_i_port_fifo_N28 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[13] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_12_ ( 
    .D ( port0_i_port_fifo_N29 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[12] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_11_ ( 
    .D ( port0_i_port_fifo_N30 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[11] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_10_ ( 
    .D ( port0_i_port_fifo_N31 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[10] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_9_ ( 
    .D ( port0_i_port_fifo_N32 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[9] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_8_ ( 
    .D ( port0_i_port_fifo_N33 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[8] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_7_ ( 
    .D ( port0_i_port_fifo_N34 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[7] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_6_ ( 
    .D ( port0_i_port_fifo_N35 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[6] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_5_ ( 
    .D ( port0_i_port_fifo_N36 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[5] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_4_ ( 
    .D ( port0_i_port_fifo_N37 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[4] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_3_ ( 
    .D ( port0_i_port_fifo_N38 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[3] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_2_ ( 
    .D ( port0_i_port_fifo_N39 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[2] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_1_ ( 
    .D ( port0_i_port_fifo_N40 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[1] ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_0_ ( 
    .D ( port0_i_port_fifo_N41 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[0] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_wr_ptr_reg_0_ ( .D ( port1_i_port_fifo_N16 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_wr_ptr_reg ) , .RSTB ( rst_n ) , 
    .Q ( port1_i_port_fifo_wr_ptr[0] ) , .QN ( port1_i_port_fifo_N16 ) ) ;
AO221X1_RVT ctmi_7912 ( .A1 ( phfnn_242 ) , 
    .A2 ( port3_i_port_fifo_mem[73] ) , .A3 ( phfnn_244 ) , 
    .A4 ( port3_i_port_fifo_mem[9] ) , .A5 ( ctmn_7148 ) , .Y ( ctmn_7149 ) ) ;
AO221X1_RVT ctmi_7411 ( .A1 ( fifo_data_out0[11] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[11] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6813 ) , 
    .Y ( MXIOP_24_0 ) ) ;
CGLPPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_25 ( .CLK ( clk ) , 
    .EN ( port3_i_port_fifo_N5 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) ) ;
AND4X1_HVT ctmi_7533 ( .A1 ( port0_i_port_fifo_N16 ) , .A2 ( rst_n ) , 
    .A3 ( port0_i_port_fifo_wr_ptr[1] ) , .A4 ( ctmn_6903 ) , 
    .Y ( port0_i_port_fifo_N3 ) ) ;
AO221X1_RVT ctmi_7913 ( .A1 ( phfnn_266 ) , 
    .A2 ( port3_i_port_fifo_mem[25] ) , .A3 ( phfnn_243 ) , 
    .A4 ( port3_i_port_fifo_mem[57] ) , .A5 ( ctmn_7147 ) , .Y ( ctmn_7148 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_wr_ptr_reg_0_ ( .D ( port0_i_port_fifo_N16 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_wr_ptr_reg ) , .RSTB ( rst_n ) , 
    .Q ( port0_i_port_fifo_wr_ptr[0] ) , .QN ( port0_i_port_fifo_N16 ) ) ;
SDFFARX1_HVT port0_i_port_fifo_data_out_reg_15_ ( 
    .D ( port0_i_port_fifo_N26 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out0[15] ) ) ;
SDFFARX1_HVT port1_i_current_state_reg_0_ ( .D ( port1_i_next_state[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port1_i_current_state[0] ) ) ;
AO22X1_RVT ctmi_7412 ( .A1 ( fifo_data_out1[11] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[11] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6813 ) ) ;
AO221X1_RVT ctmi_7589 ( .A1 ( fifo_data_out0[15] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[15] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6943 ) , 
    .Y ( MXIOP_36_0 ) ) ;
AND3X2_RVT ctmi_7590 ( .A1 ( ctmn_6937 ) , .A2 ( ctmn_6938 ) , 
    .A3 ( TDBUF_305 ) , .Y ( ctmn_6939 ) ) ;
AO221X1_RVT ctmi_7413 ( .A1 ( fifo_data_out0[10] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[10] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6814 ) , 
    .Y ( MXIOP_25_0 ) ) ;
CGLPPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_27 ( .CLK ( clk ) , 
    .EN ( port3_i_port_fifo_N3 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) ) ;
CGLPPRX2_HVT clock_gate_port3_i_port_fifo_mem_reg_28 ( .CLK ( clk ) , 
    .EN ( port3_i_port_fifo_N2 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) ) ;
AO22X1_RVT ctmi_7414 ( .A1 ( fifo_data_out1[10] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[10] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6814 ) ) ;
AND3X2_RVT ctmi_7593 ( .A1 ( mux_sel1[1] ) , .A2 ( TDBUF_305 ) , 
    .A3 ( mux_sel1[0] ) , .Y ( ctmn_6940 ) ) ;
OA221X1_RVT ctmi_7415 ( .A1 ( ctmn_6598 ) , 
    .A2 ( port0_i_port_fifo_mem[66] ) , .A3 ( port0_i_port_fifo_mem[18] ) , 
    .A4 ( ctmn_6600 ) , .A5 ( ctmn_6817_CDR1 ) , 
    .Y ( port0_i_port_fifo_N39 ) ) ;
AO22X1_RVT ctmi_7594 ( .A1 ( fifo_data_out1[15] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( ZBUF_59_0 ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6943 ) ) ;
OA221X1_RVT ctmi_7416 ( .A1 ( ctmn_6603 ) , 
    .A2 ( port0_i_port_fifo_mem[34] ) , .A3 ( port0_i_port_fifo_mem[98] ) , 
    .A4 ( ctmn_6597 ) , .A5 ( ctmn_6816_CDR1 ) , .Y ( ctmn_6817_CDR1 ) ) ;
OA221X1_RVT ctmi_7417 ( .A1 ( ctmn_6606 ) , 
    .A2 ( port0_i_port_fifo_mem[50] ) , .A3 ( port0_i_port_fifo_mem[2] ) , 
    .A4 ( ctmn_6601 ) , .A5 ( ctmn_6815_CDR1 ) , .Y ( ctmn_6816_CDR1 ) ) ;
OA22X1_RVT ctmi_7418 ( .A1 ( port0_i_port_fifo_mem[82] ) , .A2 ( ctmn_6602 ) , 
    .A3 ( ctmn_6605 ) , .A4 ( port0_i_port_fifo_mem[114] ) , 
    .Y ( ctmn_6815_CDR1 ) ) ;
OA221X1_RVT ctmi_7419 ( .A1 ( port0_i_port_fifo_mem[19] ) , 
    .A2 ( ctmn_6600 ) , .A3 ( ctmn_6598 ) , 
    .A4 ( port0_i_port_fifo_mem[67] ) , .A5 ( ctmn_6820 ) , 
    .Y ( port0_i_port_fifo_N38 ) ) ;
OA221X1_RVT ctmi_7420 ( .A1 ( ctmn_6603 ) , 
    .A2 ( port0_i_port_fifo_mem[35] ) , .A3 ( port0_i_port_fifo_mem[99] ) , 
    .A4 ( ctmn_6597 ) , .A5 ( ctmn_6819 ) , .Y ( ctmn_6820 ) ) ;
OA221X1_RVT ctmi_7421 ( .A1 ( port0_i_port_fifo_mem[3] ) , .A2 ( ctmn_6601 ) , 
    .A3 ( ctmn_6606 ) , .A4 ( port0_i_port_fifo_mem[51] ) , 
    .A5 ( ctmn_6818 ) , .Y ( ctmn_6819 ) ) ;
OA22X1_RVT ctmi_7422 ( .A1 ( port0_i_port_fifo_mem[83] ) , .A2 ( ctmn_6602 ) , 
    .A3 ( ctmn_6605 ) , .A4 ( port0_i_port_fifo_mem[115] ) , 
    .Y ( ctmn_6818 ) ) ;
OA221X1_RVT ctmi_7423 ( .A1 ( port0_i_port_fifo_mem[17] ) , 
    .A2 ( ctmn_6600 ) , .A3 ( ctmn_6598 ) , 
    .A4 ( port0_i_port_fifo_mem[65] ) , .A5 ( ctmn_6823 ) , 
    .Y ( port0_i_port_fifo_N40 ) ) ;
OA221X1_RVT ctmi_7424 ( .A1 ( ctmn_6603 ) , 
    .A2 ( port0_i_port_fifo_mem[33] ) , .A3 ( port0_i_port_fifo_mem[97] ) , 
    .A4 ( ctmn_6597 ) , .A5 ( ctmn_6822 ) , .Y ( ctmn_6823 ) ) ;
OA221X1_RVT ctmi_7425 ( .A1 ( port0_i_port_fifo_mem[1] ) , .A2 ( ctmn_6601 ) , 
    .A3 ( ctmn_6606 ) , .A4 ( port0_i_port_fifo_mem[49] ) , 
    .A5 ( ctmn_6821 ) , .Y ( ctmn_6822 ) ) ;
OA22X1_RVT ctmi_7426 ( .A1 ( port0_i_port_fifo_mem[81] ) , .A2 ( ctmn_6602 ) , 
    .A3 ( ctmn_6605 ) , .A4 ( port0_i_port_fifo_mem[113] ) , 
    .Y ( ctmn_6821 ) ) ;
OA221X1_RVT ctmi_7427 ( .A1 ( ctmn_6598 ) , 
    .A2 ( port0_i_port_fifo_mem[64] ) , .A3 ( port0_i_port_fifo_mem[16] ) , 
    .A4 ( ctmn_6600 ) , .A5 ( ctmn_6826 ) , .Y ( port0_i_port_fifo_N41 ) ) ;
OA221X1_RVT ctmi_7428 ( .A1 ( ctmn_6603 ) , 
    .A2 ( port0_i_port_fifo_mem[32] ) , .A3 ( port0_i_port_fifo_mem[96] ) , 
    .A4 ( ctmn_6597 ) , .A5 ( ctmn_6825 ) , .Y ( ctmn_6826 ) ) ;
OA221X1_RVT ctmi_7429 ( .A1 ( port0_i_port_fifo_mem[0] ) , .A2 ( ctmn_6601 ) , 
    .A3 ( ctmn_6606 ) , .A4 ( port0_i_port_fifo_mem[48] ) , 
    .A5 ( ctmn_6824 ) , .Y ( ctmn_6825 ) ) ;
OA22X1_RVT ctmi_7430 ( .A1 ( port0_i_port_fifo_mem[80] ) , .A2 ( ctmn_6602 ) , 
    .A3 ( ctmn_6605 ) , .A4 ( port0_i_port_fifo_mem[112] ) , 
    .Y ( ctmn_6824 ) ) ;
INVX0_HVT phfnr_buf_984 ( .A ( ctmn_6786 ) , .Y ( phfnn_288 ) ) ;
NAND2X0_RVT ctmi_7432 ( .A1 ( phfnn_292 ) , .A2 ( ctmn_6836 ) , 
    .Y ( ctmn_6837 ) ) ;
NAND3X0_RVT ctmi_7433 ( .A1 ( port0_i_current_state[0] ) , .A2 ( ctmn_6748 ) , 
    .A3 ( ctmn_6835 ) , .Y ( ctmn_6836 ) ) ;
AO221X1_RVT ctmi_999 ( .A1 ( ctmn_6768 ) , .A2 ( ctmn_6768 ) , 
    .A3 ( ctmn_6857 ) , .A4 ( ctmn_6858 ) , .A5 ( ctmn_300 ) , 
    .Y ( ctmn_6862 ) ) ;
AO221X1_RVT ctmi_7435 ( .A1 ( ctmn_6827 ) , .A2 ( port0_i_port_fifo_N40 ) , 
    .A3 ( ctmn_6828 ) , .A4 ( port0_i_port_fifo_N41 ) , .A5 ( ctmn_6829 ) , 
    .Y ( ctmn_6830 ) ) ;
INVX0_RVT phfnr_buf_985 ( .A ( ctmn_6771 ) , .Y ( phfnn_289 ) ) ;
INVX0_RVT phfnr_buf_986 ( .A ( ctmn_6791 ) , .Y ( phfnn_290 ) ) ;
AO22X1_RVT ctmi_7438 ( .A1 ( ctmn_6689 ) , .A2 ( port0_i_port_fifo_N39 ) , 
    .A3 ( phfnn_133 ) , .A4 ( port0_i_port_fifo_N38 ) , .Y ( ctmn_6829 ) ) ;
NAND4X0_RVT ctmi_7439 ( .A1 ( ctmn_6827 ) , .A2 ( port0_i_port_fifo_N35 ) , 
    .A3 ( phfnn_133 ) , .A4 ( port0_i_port_fifo_N37 ) , .Y ( ctmn_6831 ) ) ;
MUX41X1_RVT ctmi_1000 ( .A1 ( ctmn_6859 ) , .A3 ( ctmn_6860 ) , 
    .A2 ( ctmn_6860 ) , .A4 ( port2_i_port_fifo_N38 ) , 
    .S0 ( port2_i_port_fifo_N38 ) , .S1 ( port2_i_port_fifo_N40 ) , 
    .Y ( ctmn_300 ) ) ;
XNOR2X1_RVT ctmi_7441 ( .A1 ( port0_i_port_fifo_N39 ) , 
    .A2 ( port0_i_port_fifo_N41 ) , .Y ( ctmn_6832 ) ) ;
OR2X1_RVT ctmi_7442 ( .A1 ( port0_i_port_fifo_N39 ) , 
    .A2 ( port0_i_port_fifo_N41 ) , .Y ( ctmn_6833 ) ) ;
INVX0_RVT phfnr_buf_987 ( .A ( ctmn_6781 ) , .Y ( phfnn_291 ) ) ;
NAND2X0_RVT ctmi_7444 ( .A1 ( ctmn_6839 ) , .A2 ( phfnn_155 ) , 
    .Y ( port0_i_port_fifo_N21 ) ) ;
INVX0_HVT phfnr_buf_989 ( .A ( phfnn_152 ) , .Y ( phfnn_293 ) ) ;
INVX0_HVT phfnr_buf_990 ( .A ( phfnn_154 ) , .Y ( phfnn_294 ) ) ;
OA221X1_RVT ctmi_7447 ( .A1 ( ctmn_6636 ) , 
    .A2 ( port2_i_port_fifo_mem[34] ) , .A3 ( port2_i_port_fifo_mem[98] ) , 
    .A4 ( ctmn_6629 ) , .A5 ( ctmn_6843_CDR1 ) , 
    .Y ( port2_i_port_fifo_N39 ) ) ;
OA221X1_RVT ctmi_7448 ( .A1 ( ctmn_6634 ) , .A2 ( port2_i_port_fifo_mem[2] ) , 
    .A3 ( port2_i_port_fifo_mem[66] ) , .A4 ( ctmn_6630 ) , 
    .A5 ( ctmn_6842_CDR1 ) , .Y ( ctmn_6843_CDR1 ) ) ;
AO22X1_RVT ctmi_7914 ( .A1 ( phfnn_269 ) , 
    .A2 ( port3_i_port_fifo_mem[121] ) , .A3 ( phfnn_265 ) , 
    .A4 ( port3_i_port_fifo_mem[89] ) , .Y ( ctmn_7147 ) ) ;
AO221X1_RVT ctmi_7915 ( .A1 ( phfnn_267 ) , 
    .A2 ( port3_i_port_fifo_mem[106] ) , .A3 ( phfnn_268 ) , 
    .A4 ( port3_i_port_fifo_mem[42] ) , .A5 ( ctmn_7152 ) , 
    .Y ( port3_i_port_fifo_N31 ) ) ;
OA221X1_RVT ctmi_7449 ( .A1 ( ctmn_6627 ) , 
    .A2 ( port2_i_port_fifo_mem[82] ) , .A3 ( port2_i_port_fifo_mem[114] ) , 
    .A4 ( ctmn_6632 ) , .A5 ( ctmn_6841_CDR1 ) , .Y ( ctmn_6842_CDR1 ) ) ;
OA22X1_RVT ctmi_7450 ( .A1 ( ctmn_6635 ) , .A2 ( port2_i_port_fifo_mem[18] ) , 
    .A3 ( port2_i_port_fifo_mem[50] ) , .A4 ( ctmn_6633 ) , 
    .Y ( ctmn_6841_CDR1 ) ) ;
OA221X1_RVT ctmi_7451 ( .A1 ( port2_i_port_fifo_mem[99] ) , 
    .A2 ( ctmn_6629 ) , .A3 ( ctmn_6636 ) , 
    .A4 ( port2_i_port_fifo_mem[35] ) , .A5 ( ctmn_6846 ) , 
    .Y ( port2_i_port_fifo_N38 ) ) ;
OA221X1_RVT ctmi_7452 ( .A1 ( port2_i_port_fifo_mem[67] ) , 
    .A2 ( ctmn_6630 ) , .A3 ( ctmn_6635 ) , 
    .A4 ( port2_i_port_fifo_mem[19] ) , .A5 ( ctmn_6845_CDR1 ) , 
    .Y ( ctmn_6846 ) ) ;
OA221X1_RVT ctmi_7453 ( .A1 ( port2_i_port_fifo_mem[115] ) , 
    .A2 ( ctmn_6632 ) , .A3 ( ctmn_6627 ) , 
    .A4 ( port2_i_port_fifo_mem[83] ) , .A5 ( ctmn_6844_CDR1 ) , 
    .Y ( ctmn_6845_CDR1 ) ) ;
OA22X1_RVT ctmi_7454 ( .A1 ( port2_i_port_fifo_mem[51] ) , .A2 ( ctmn_6633 ) , 
    .A3 ( ctmn_6634 ) , .A4 ( port2_i_port_fifo_mem[3] ) , 
    .Y ( ctmn_6844_CDR1 ) ) ;
OA221X1_RVT ctmi_7455 ( .A1 ( port2_i_port_fifo_mem[97] ) , 
    .A2 ( ctmn_6629 ) , .A3 ( ctmn_6636 ) , 
    .A4 ( port2_i_port_fifo_mem[33] ) , .A5 ( ctmn_6849 ) , 
    .Y ( port2_i_port_fifo_N40 ) ) ;
OA221X1_RVT ctmi_7456 ( .A1 ( port2_i_port_fifo_mem[65] ) , 
    .A2 ( ctmn_6630 ) , .A3 ( ctmn_6634 ) , .A4 ( port2_i_port_fifo_mem[1] ) , 
    .A5 ( ctmn_6848 ) , .Y ( ctmn_6849 ) ) ;
AO221X1_RVT ctmi_7916 ( .A1 ( phfnn_244 ) , 
    .A2 ( port3_i_port_fifo_mem[10] ) , .A3 ( phfnn_242 ) , 
    .A4 ( port3_i_port_fifo_mem[74] ) , .A5 ( ctmn_7151 ) , .Y ( ctmn_7152 ) ) ;
OA221X1_RVT ctmi_7457 ( .A1 ( ctmn_6627 ) , 
    .A2 ( port2_i_port_fifo_mem[81] ) , .A3 ( port2_i_port_fifo_mem[113] ) , 
    .A4 ( ctmn_6632 ) , .A5 ( ctmn_6847_CDR1 ) , .Y ( ctmn_6848 ) ) ;
OA221X1_RVT ctmi_7511 ( .A1 ( port3_i_port_fifo_mem[98] ) , 
    .A2 ( ctmn_6614 ) , .A3 ( ctmn_6618 ) , 
    .A4 ( port3_i_port_fifo_mem[34] ) , .A5 ( ctmn_6892_CDR1 ) , 
    .Y ( port3_i_port_fifo_N39 ) ) ;
OA22X1_RVT ctmi_7458 ( .A1 ( port2_i_port_fifo_mem[49] ) , .A2 ( ctmn_6633 ) , 
    .A3 ( ctmn_6635 ) , .A4 ( port2_i_port_fifo_mem[17] ) , 
    .Y ( ctmn_6847_CDR1 ) ) ;
OA221X1_RVT ctmi_7459 ( .A1 ( ctmn_6629 ) , 
    .A2 ( port2_i_port_fifo_mem[96] ) , .A3 ( port2_i_port_fifo_mem[112] ) , 
    .A4 ( ctmn_6632 ) , .A5 ( ctmn_6852_CDR1 ) , 
    .Y ( port2_i_port_fifo_N41 ) ) ;
OA221X1_RVT ctmi_7460 ( .A1 ( ctmn_6636 ) , 
    .A2 ( port2_i_port_fifo_mem[32] ) , .A3 ( port2_i_port_fifo_mem[64] ) , 
    .A4 ( ctmn_6630 ) , .A5 ( ctmn_6851_CDR1 ) , .Y ( ctmn_6852_CDR1 ) ) ;
OA221X1_RVT ctmi_7461 ( .A1 ( ctmn_6635 ) , 
    .A2 ( port2_i_port_fifo_mem[16] ) , .A3 ( ctmn_6634 ) , 
    .A4 ( port2_i_port_fifo_mem[0] ) , .A5 ( ctmn_6850_CDR1 ) , 
    .Y ( ctmn_6851_CDR1 ) ) ;
OA22X1_RVT ctmi_7462 ( .A1 ( port2_i_port_fifo_mem[80] ) , .A2 ( ctmn_6627 ) , 
    .A3 ( port2_i_port_fifo_mem[48] ) , .A4 ( ctmn_6633 ) , 
    .Y ( ctmn_6850_CDR1 ) ) ;
AND2X1_RVT ctmi_7463 ( .A1 ( phfnn_237 ) , .A2 ( ctmn_6863 ) , 
    .Y ( port2_i_next_state[1] ) ) ;
MUX21X1_RVT ctmi_7464 ( .A1 ( ctmn_6767 ) , .A2 ( port2_i_current_state[1] ) , 
    .S0 ( port2_i_current_state[0] ) , .Y ( ctmn_6853 ) ) ;
AO221X1_RVT ctmi_7917 ( .A1 ( phfnn_266 ) , 
    .A2 ( port3_i_port_fifo_mem[26] ) , .A3 ( phfnn_243 ) , 
    .A4 ( port3_i_port_fifo_mem[58] ) , .A5 ( ctmn_7150 ) , .Y ( ctmn_7151 ) ) ;
INVX0_HVT phfnr_buf_991 ( .A ( phfnn_153 ) , .Y ( phfnn_295 ) ) ;
NAND3X0_RVT ctmi_7466 ( .A1 ( port2_i_current_state[0] ) , .A2 ( ctmn_6767 ) , 
    .A3 ( ctmn_6862 ) , .Y ( ctmn_6863 ) ) ;
MUX21X1_RVT ctmi_1006 ( .A1 ( ctmn_303 ) , .A2 ( ctmn_6925 ) , 
    .S0 ( HFSNET_3 ) , .Y ( clkgt_enable_net_15 ) ) ;
AO221X1_RVT ctmi_7468 ( .A1 ( phfnn_282 ) , .A2 ( port2_i_port_fifo_N40 ) , 
    .A3 ( ctmn_6763 ) , .A4 ( port2_i_port_fifo_N41 ) , .A5 ( ctmn_6856 ) , 
    .Y ( ctmn_6857 ) ) ;
INVX0_HVT phfnr_buf_992 ( .A ( phfnn_155 ) , .Y ( phfnn_296 ) ) ;
AO22X1_RVT ctmi_7470 ( .A1 ( phfnn_283 ) , .A2 ( port2_i_port_fifo_N39 ) , 
    .A3 ( phfnn_284 ) , .A4 ( port2_i_port_fifo_N38 ) , .Y ( ctmn_6856 ) ) ;
NAND4X0_RVT ctmi_7471 ( .A1 ( phfnn_282 ) , .A2 ( port2_i_port_fifo_N35 ) , 
    .A3 ( phfnn_284 ) , .A4 ( port2_i_port_fifo_N37 ) , .Y ( ctmn_6858 ) ) ;
AO221X1_RVT ctmi_993 ( .A1 ( ctmn_6749 ) , .A2 ( ctmn_6749 ) , 
    .A3 ( ctmn_6830 ) , .A4 ( ctmn_6831 ) , .A5 ( ctmn_297 ) , 
    .Y ( ctmn_6835 ) ) ;
AO22X1_RVT ctmi_7918 ( .A1 ( phfnn_269 ) , 
    .A2 ( port3_i_port_fifo_mem[122] ) , .A3 ( phfnn_265 ) , 
    .A4 ( port3_i_port_fifo_mem[90] ) , .Y ( ctmn_7150 ) ) ;
XNOR2X1_RVT ctmi_7473 ( .A1 ( port2_i_port_fifo_N39 ) , 
    .A2 ( port2_i_port_fifo_N41 ) , .Y ( ctmn_6859 ) ) ;
OR2X1_RVT ctmi_7474 ( .A1 ( port2_i_port_fifo_N39 ) , 
    .A2 ( port2_i_port_fifo_N41 ) , .Y ( ctmn_6860 ) ) ;
AO21X1_RVT ctmi_7475 ( .A1 ( ctmn_6853 ) , .A2 ( ctmn_6659 ) , 
    .A3 ( ctmn_6771 ) , .Y ( port2_i_next_state[0] ) ) ;
OA221X1_RVT ctmi_7476 ( .A1 ( ctmn_6583 ) , 
    .A2 ( port1_i_port_fifo_mem[99] ) , .A3 ( port1_i_port_fifo_mem[35] ) , 
    .A4 ( HFSNET_7 ) , .A5 ( ctmn_6866_CDR1 ) , .Y ( port1_i_port_fifo_N38 ) ) ;
OA221X1_RVT ctmi_7477 ( .A1 ( ctmn_6585 ) , .A2 ( port1_i_port_fifo_mem[3] ) , 
    .A3 ( port1_i_port_fifo_mem[67] ) , .A4 ( ctmn_6584 ) , 
    .A5 ( ctmn_6865_CDR1 ) , .Y ( ctmn_6866_CDR1 ) ) ;
OA221X1_RVT ctmi_7478 ( .A1 ( ctmn_6589 ) , 
    .A2 ( port1_i_port_fifo_mem[115] ) , .A3 ( port1_i_port_fifo_mem[83] ) , 
    .A4 ( ctmn_6587 ) , .A5 ( ctmn_6864_CDR1 ) , .Y ( ctmn_6865_CDR1 ) ) ;
OA22X1_RVT ctmi_7479 ( .A1 ( ctmn_6591 ) , .A2 ( port1_i_port_fifo_mem[19] ) , 
    .A3 ( port1_i_port_fifo_mem[51] ) , .A4 ( ctmn_6590 ) , 
    .Y ( ctmn_6864_CDR1 ) ) ;
OA221X1_RVT ctmi_7480 ( .A1 ( ctmn_6583 ) , 
    .A2 ( port1_i_port_fifo_mem[98] ) , .A3 ( port1_i_port_fifo_mem[34] ) , 
    .A4 ( HFSNET_7 ) , .A5 ( ctmn_6869_CDR1 ) , .Y ( port1_i_port_fifo_N39 ) ) ;
AO221X1_RVT ctmi_7935 ( .A1 ( phfnn_268 ) , 
    .A2 ( port3_i_port_fifo_mem[47] ) , .A3 ( phfnn_267 ) , 
    .A4 ( port3_i_port_fifo_mem[111] ) , .A5 ( ctmn_7167_CDR1 ) , 
    .Y ( port3_i_port_fifo_N26 ) ) ;
NAND2X0_RVT ctmi_7748 ( .A1 ( ctmn_6654 ) , .A2 ( ctmn_6753 ) , 
    .Y ( top_arb_i_N21 ) ) ;
INVX0_HVT ctmi_7524 ( .A ( rst_n ) , .Y ( ctmn_6899 ) ) ;
NAND2X0_RVT ctmi_7525 ( .A1 ( port0_i_port_fifo_wr_ptr[0] ) , 
    .A2 ( ctmn_6897 ) , .Y ( ctmn_6900 ) ) ;
NAND2X0_RVT ctmi_7527 ( .A1 ( port0_i_port_fifo_wr_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_N16 ) , .Y ( ctmn_6901 ) ) ;
AND3X1_RVT ctmi_7529 ( .A1 ( ctmn_6896 ) , 
    .A2 ( port0_i_port_fifo_wr_ptr[0] ) , 
    .A3 ( port0_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_6902 ) ) ;
AND2X1_RVT ctmi_7531 ( .A1 ( port0_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( port0_i_port_fifo_N13 ) , .Y ( ctmn_6903 ) ) ;
NAND2X0_RVT ctmi_7535 ( .A1 ( port0_i_port_fifo_wr_ptr[0] ) , 
    .A2 ( port0_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_6904 ) ) ;
AO221X1_RVT ctmi_7919 ( .A1 ( phfnn_268 ) , 
    .A2 ( port3_i_port_fifo_mem[43] ) , .A3 ( phfnn_267 ) , 
    .A4 ( port3_i_port_fifo_mem[107] ) , .A5 ( ctmn_7155 ) , 
    .Y ( port3_i_port_fifo_N30 ) ) ;
AO221X1_RVT ctmi_7920 ( .A1 ( phfnn_242 ) , 
    .A2 ( port3_i_port_fifo_mem[75] ) , .A3 ( phfnn_244 ) , 
    .A4 ( port3_i_port_fifo_mem[11] ) , .A5 ( ctmn_7154 ) , .Y ( ctmn_7155 ) ) ;
AO221X1_RVT ctmi_7921 ( .A1 ( phfnn_266 ) , 
    .A2 ( port3_i_port_fifo_mem[27] ) , .A3 ( phfnn_243 ) , 
    .A4 ( port3_i_port_fifo_mem[59] ) , .A5 ( ctmn_7153 ) , .Y ( ctmn_7154 ) ) ;
AO22X1_RVT ctmi_7922 ( .A1 ( phfnn_269 ) , 
    .A2 ( port3_i_port_fifo_mem[123] ) , .A3 ( phfnn_265 ) , 
    .A4 ( port3_i_port_fifo_mem[91] ) , .Y ( ctmn_7153 ) ) ;
AO221X1_RVT ctmi_7923 ( .A1 ( phfnn_267 ) , 
    .A2 ( port3_i_port_fifo_mem[108] ) , .A3 ( phfnn_268 ) , 
    .A4 ( port3_i_port_fifo_mem[44] ) , .A5 ( ctmn_7158 ) , 
    .Y ( port3_i_port_fifo_N29 ) ) ;
AO221X1_RVT ctmi_7924 ( .A1 ( phfnn_242 ) , 
    .A2 ( port3_i_port_fifo_mem[76] ) , .A3 ( phfnn_244 ) , 
    .A4 ( port3_i_port_fifo_mem[12] ) , .A5 ( ctmn_7157 ) , .Y ( ctmn_7158 ) ) ;
OA221X1_RVT ctmi_7481 ( .A1 ( ctmn_6585 ) , .A2 ( port1_i_port_fifo_mem[2] ) , 
    .A3 ( port1_i_port_fifo_mem[66] ) , .A4 ( ctmn_6584 ) , 
    .A5 ( ctmn_6868_CDR1 ) , .Y ( ctmn_6869_CDR1 ) ) ;
MUX41X1_RVT ctmi_994 ( .A1 ( ctmn_6832 ) , .A3 ( ctmn_6833 ) , 
    .A2 ( ctmn_6833 ) , .A4 ( port0_i_port_fifo_N38 ) , 
    .S0 ( port0_i_port_fifo_N38 ) , .S1 ( port0_i_port_fifo_N40 ) , 
    .Y ( ctmn_297 ) ) ;
OR2X1_RVT ctmi_8103 ( .A1 ( ctmn_7057 ) , .A2 ( ctmn_7059 ) , 
    .Y ( ctmn_7209 ) ) ;
AND2X1_RVT ctmi_7751 ( .A1 ( ctmn_7024 ) , .A2 ( port1_i_port_fifo_N21 ) , 
    .Y ( port1_i_port_fifo_N25 ) ) ;
OA221X1_RVT ctmi_7482 ( .A1 ( ctmn_6589 ) , 
    .A2 ( port1_i_port_fifo_mem[114] ) , .A3 ( port1_i_port_fifo_mem[82] ) , 
    .A4 ( ctmn_6587 ) , .A5 ( ctmn_6867_CDR1 ) , .Y ( ctmn_6868_CDR1 ) ) ;
AO221X1_RVT ctmi_7925 ( .A1 ( phfnn_266 ) , 
    .A2 ( port3_i_port_fifo_mem[28] ) , .A3 ( phfnn_243 ) , 
    .A4 ( port3_i_port_fifo_mem[60] ) , .A5 ( ctmn_7156 ) , .Y ( ctmn_7157 ) ) ;
OA22X1_RVT ctmi_7483 ( .A1 ( ctmn_6591 ) , .A2 ( port1_i_port_fifo_mem[18] ) , 
    .A3 ( port1_i_port_fifo_mem[50] ) , .A4 ( ctmn_6590 ) , 
    .Y ( ctmn_6867_CDR1 ) ) ;
AO22X1_RVT ctmi_7926 ( .A1 ( phfnn_269 ) , 
    .A2 ( port3_i_port_fifo_mem[124] ) , .A3 ( phfnn_265 ) , 
    .A4 ( port3_i_port_fifo_mem[92] ) , .Y ( ctmn_7156 ) ) ;
OA221X1_RVT ctmi_7484 ( .A1 ( ctmn_6583 ) , 
    .A2 ( port1_i_port_fifo_mem[97] ) , .A3 ( port1_i_port_fifo_mem[33] ) , 
    .A4 ( HFSNET_7 ) , .A5 ( ctmn_6872_CDR1 ) , .Y ( port1_i_port_fifo_N40 ) ) ;
OA221X1_RVT ctmi_7485 ( .A1 ( ctmn_6585 ) , .A2 ( port1_i_port_fifo_mem[1] ) , 
    .A3 ( port1_i_port_fifo_mem[65] ) , .A4 ( ctmn_6584 ) , 
    .A5 ( ctmn_6871_CDR1 ) , .Y ( ctmn_6872_CDR1 ) ) ;
OA221X1_RVT ctmi_7486 ( .A1 ( ctmn_6589 ) , 
    .A2 ( port1_i_port_fifo_mem[113] ) , .A3 ( port1_i_port_fifo_mem[81] ) , 
    .A4 ( ctmn_6587 ) , .A5 ( ctmn_6870_CDR1 ) , .Y ( ctmn_6871_CDR1 ) ) ;
OA22X1_RVT ctmi_7487 ( .A1 ( port1_i_port_fifo_mem[49] ) , .A2 ( ctmn_6590 ) , 
    .A3 ( ctmn_6591 ) , .A4 ( port1_i_port_fifo_mem[17] ) , 
    .Y ( ctmn_6870_CDR1 ) ) ;
OA21X1_RVT ctmi_7545 ( .A1 ( ctmn_6920 ) , .A2 ( ctmn_6781 ) , 
    .A3 ( ctmn_6648 ) , .Y ( port3_i_port_fifo_N17 ) ) ;
OA221X1_RVT ctmi_7488 ( .A1 ( port1_i_port_fifo_mem[32] ) , .A2 ( HFSNET_7 ) , 
    .A3 ( ctmn_6583 ) , .A4 ( port1_i_port_fifo_mem[96] ) , 
    .A5 ( ctmn_6875 ) , .Y ( port1_i_port_fifo_N41 ) ) ;
OA221X1_RVT ctmi_7489 ( .A1 ( ctmn_6585 ) , .A2 ( port1_i_port_fifo_mem[0] ) , 
    .A3 ( port1_i_port_fifo_mem[64] ) , .A4 ( ctmn_6584 ) , 
    .A5 ( ctmn_6874_CDR1 ) , .Y ( ctmn_6875 ) ) ;
OA221X1_RVT ctmi_7490 ( .A1 ( ctmn_6589 ) , 
    .A2 ( port1_i_port_fifo_mem[112] ) , .A3 ( port1_i_port_fifo_mem[80] ) , 
    .A4 ( ctmn_6587 ) , .A5 ( ctmn_6873_CDR1 ) , .Y ( ctmn_6874_CDR1 ) ) ;
OA22X1_RVT ctmi_7491 ( .A1 ( ctmn_6591 ) , .A2 ( port1_i_port_fifo_mem[16] ) , 
    .A3 ( port1_i_port_fifo_mem[48] ) , .A4 ( ctmn_6590 ) , 
    .Y ( ctmn_6873_CDR1 ) ) ;
AO221X1_RVT ctmi_7927 ( .A1 ( phfnn_267 ) , 
    .A2 ( port3_i_port_fifo_mem[109] ) , .A3 ( phfnn_268 ) , 
    .A4 ( port3_i_port_fifo_mem[45] ) , .A5 ( ctmn_7161 ) , 
    .Y ( port3_i_port_fifo_N28 ) ) ;
AND2X1_RVT ctmi_7492 ( .A1 ( phfnn_236 ) , .A2 ( ctmn_6885 ) , 
    .Y ( port1_i_next_state[1] ) ) ;
MUX21X1_RVT ctmi_7493 ( .A1 ( ctmn_6787 ) , .A2 ( port1_i_current_state[1] ) , 
    .S0 ( port1_i_current_state[0] ) , .Y ( ctmn_6876 ) ) ;
MUX21X1_RVT ctmi_995 ( .A1 ( ctmn_298 ) , .A2 ( ctmn_6839 ) , 
    .S0 ( port0_i_port_fifo_fifo_count[0] ) , .Y ( clkgt_enable_net_0 ) ) ;
NAND3X0_RVT ctmi_7495 ( .A1 ( port1_i_current_state[0] ) , .A2 ( ctmn_6787 ) , 
    .A3 ( ctmn_6884 ) , .Y ( ctmn_6885 ) ) ;
MUX21X1_RVT ctmi_1001 ( .A1 ( ctmn_301 ) , .A2 ( ctmn_6921 ) , 
    .S0 ( port1_i_port_fifo_fifo_count[0] ) , .Y ( clkgt_enable_net_5 ) ) ;
AO221X1_RVT ctmi_7497 ( .A1 ( phfnn_277 ) , .A2 ( port1_i_port_fifo_N40 ) , 
    .A3 ( ctmn_6783 ) , .A4 ( port1_i_port_fifo_N41 ) , .A5 ( ctmn_6878 ) , 
    .Y ( ctmn_6879 ) ) ;
AO22X1_RVT ctmi_7498 ( .A1 ( phfnn_138 ) , .A2 ( port1_i_port_fifo_N39 ) , 
    .A3 ( phfnn_278 ) , .A4 ( port1_i_port_fifo_N38 ) , .Y ( ctmn_6878 ) ) ;
NAND4X0_RVT ctmi_7499 ( .A1 ( phfnn_277 ) , .A2 ( port1_i_port_fifo_N35 ) , 
    .A3 ( phfnn_278 ) , .A4 ( port1_i_port_fifo_N37 ) , .Y ( ctmn_6880 ) ) ;
AO221X1_RVT ctmi_7928 ( .A1 ( phfnn_242 ) , 
    .A2 ( port3_i_port_fifo_mem[77] ) , .A3 ( phfnn_244 ) , 
    .A4 ( port3_i_port_fifo_mem[13] ) , .A5 ( ctmn_7160 ) , .Y ( ctmn_7161 ) ) ;
INVX0_HVT ctmi_1002 ( .A ( phfnn_295 ) , .Y ( ctmn_301 ) ) ;
XNOR2X1_RVT ctmi_7501 ( .A1 ( port1_i_port_fifo_N38 ) , 
    .A2 ( port1_i_port_fifo_N41 ) , .Y ( ctmn_6881 ) ) ;
OR2X1_RVT ctmi_7502 ( .A1 ( port1_i_port_fifo_N38 ) , 
    .A2 ( port1_i_port_fifo_N41 ) , .Y ( ctmn_6882 ) ) ;
INVX0_HVT ctmi_996 ( .A ( phfnn_296 ) , .Y ( ctmn_298 ) ) ;
AO221X1_RVT ctmi_997 ( .A1 ( ctmn_6788 ) , .A2 ( ctmn_6788 ) , 
    .A3 ( ctmn_6879 ) , .A4 ( ctmn_6880 ) , .A5 ( ctmn_299 ) , 
    .Y ( ctmn_6884 ) ) ;
NAND2X0_RVT ctmi_7505 ( .A1 ( phfnn_290 ) , .A2 ( ctmn_6885 ) , 
    .Y ( ctmn_6886 ) ) ;
MUX41X1_RVT ctmi_998 ( .A1 ( ctmn_6881 ) , .A3 ( ctmn_6882 ) , 
    .A2 ( ctmn_6882 ) , .A4 ( port1_i_port_fifo_N39 ) , 
    .S0 ( port1_i_port_fifo_N39 ) , .S1 ( port1_i_port_fifo_N40 ) , 
    .Y ( ctmn_299 ) ) ;
MUX21X1_RVT ctmi_1003 ( .A1 ( ctmn_302 ) , .A2 ( ctmn_6923 ) , 
    .S0 ( port2_i_port_fifo_fifo_count[0] ) , .Y ( clkgt_enable_net_10 ) ) ;
AO221X1_RVT ctmi_7929 ( .A1 ( phfnn_243 ) , 
    .A2 ( port3_i_port_fifo_mem[61] ) , .A3 ( phfnn_266 ) , 
    .A4 ( port3_i_port_fifo_mem[29] ) , .A5 ( ctmn_7159 ) , .Y ( ctmn_7160 ) ) ;
NAND2X0_RVT ctmi_7508 ( .A1 ( phfnn_289 ) , .A2 ( ctmn_6863 ) , 
    .Y ( ctmn_6888 ) ) ;
INVX0_HVT ctmi_1004 ( .A ( phfnn_294 ) , .Y ( ctmn_302 ) ) ;
AND2X1_RVT ctmi_640 ( .A1 ( port2_i_port_fifo_N37 ) , .A2 ( ctmn_6659 ) , 
    .Y ( ctmn_6763 ) ) ;
OA221X1_RVT ctmi_7512 ( .A1 ( ctmn_6621 ) , .A2 ( port3_i_port_fifo_mem[2] ) , 
    .A3 ( port3_i_port_fifo_mem[66] ) , .A4 ( ctmn_6619 ) , 
    .A5 ( ctmn_6891 ) , .Y ( ctmn_6892_CDR1 ) ) ;
OA221X1_RVT ctmi_7513 ( .A1 ( port3_i_port_fifo_mem[18] ) , 
    .A2 ( ctmn_6615 ) , .A3 ( ctmn_6620 ) , 
    .A4 ( port3_i_port_fifo_mem[50] ) , .A5 ( ctmn_6890 ) , .Y ( ctmn_6891 ) ) ;
OA22X1_RVT ctmi_7514 ( .A1 ( port3_i_port_fifo_mem[114] ) , 
    .A2 ( ctmn_6617 ) , .A3 ( ctmn_6612 ) , 
    .A4 ( port3_i_port_fifo_mem[82] ) , .Y ( ctmn_6890 ) ) ;
OA221X1_RVT ctmi_7515 ( .A1 ( ctmn_6618 ) , 
    .A2 ( port3_i_port_fifo_mem[35] ) , .A3 ( port3_i_port_fifo_mem[99] ) , 
    .A4 ( ctmn_6614 ) , .A5 ( ctmn_6895_CDR1 ) , 
    .Y ( port3_i_port_fifo_N38 ) ) ;
AO22X1_RVT ctmi_7930 ( .A1 ( phfnn_269 ) , 
    .A2 ( port3_i_port_fifo_mem[125] ) , .A3 ( phfnn_265 ) , 
    .A4 ( port3_i_port_fifo_mem[93] ) , .Y ( ctmn_7159 ) ) ;
AO221X1_RVT ctmi_7931 ( .A1 ( phfnn_267 ) , 
    .A2 ( port3_i_port_fifo_mem[110] ) , .A3 ( phfnn_268 ) , 
    .A4 ( port3_i_port_fifo_mem[46] ) , .A5 ( ctmn_7164_CDR1 ) , 
    .Y ( port3_i_port_fifo_N27 ) ) ;
AO221X1_RVT ctmi_7932 ( .A1 ( phfnn_244 ) , 
    .A2 ( port3_i_port_fifo_mem[14] ) , .A3 ( phfnn_242 ) , 
    .A4 ( port3_i_port_fifo_mem[78] ) , .A5 ( ctmn_7163_CDR1 ) , 
    .Y ( ctmn_7164_CDR1 ) ) ;
AO221X1_RVT ctmi_7933 ( .A1 ( phfnn_266 ) , 
    .A2 ( port3_i_port_fifo_mem[30] ) , .A3 ( phfnn_243 ) , 
    .A4 ( port3_i_port_fifo_mem[62] ) , .A5 ( ctmn_7162 ) , 
    .Y ( ctmn_7163_CDR1 ) ) ;
AO22X1_RVT ctmi_7934 ( .A1 ( phfnn_269 ) , 
    .A2 ( port3_i_port_fifo_mem[126] ) , .A3 ( phfnn_265 ) , 
    .A4 ( port3_i_port_fifo_mem[94] ) , .Y ( ctmn_7162 ) ) ;
OA221X1_RVT ctmi_7516 ( .A1 ( ctmn_6621 ) , .A2 ( port3_i_port_fifo_mem[3] ) , 
    .A3 ( port3_i_port_fifo_mem[67] ) , .A4 ( ctmn_6619 ) , 
    .A5 ( ctmn_6894_CDR1 ) , .Y ( ctmn_6895_CDR1 ) ) ;
OA221X1_RVT ctmi_7517 ( .A1 ( ctmn_6620 ) , 
    .A2 ( port3_i_port_fifo_mem[51] ) , .A3 ( port3_i_port_fifo_mem[19] ) , 
    .A4 ( ctmn_6615 ) , .A5 ( ctmn_6893 ) , .Y ( ctmn_6894_CDR1 ) ) ;
OA22X1_RVT ctmi_7518 ( .A1 ( ctmn_6612 ) , .A2 ( port3_i_port_fifo_mem[83] ) , 
    .A3 ( port3_i_port_fifo_mem[115] ) , .A4 ( ctmn_6617 ) , 
    .Y ( ctmn_6893 ) ) ;
AND3X1_HVT ctmi_7519 ( .A1 ( ctmn_6896 ) , .A2 ( port0_i_port_fifo_N13 ) , 
    .A3 ( ctmn_6898 ) , .Y ( port0_i_port_fifo_N11 ) ) ;
AO221X1_RVT ctmi_7936 ( .A1 ( phfnn_242 ) , 
    .A2 ( port3_i_port_fifo_mem[79] ) , .A3 ( phfnn_244 ) , 
    .A4 ( port3_i_port_fifo_mem[15] ) , .A5 ( ctmn_7166_CDR1 ) , 
    .Y ( ctmn_7167_CDR1 ) ) ;
MUX41X1_RVT ctmi_1005 ( .A1 ( ctmn_6912 ) , .A3 ( ctmn_6913 ) , 
    .A2 ( ctmn_6913 ) , .A4 ( port3_i_port_fifo_N38 ) , 
    .S0 ( port3_i_port_fifo_N38 ) , .S1 ( port3_i_port_fifo_N40 ) , 
    .Y ( ctmn_6914 ) ) ;
AND3X1_HVT ctmi_7521 ( .A1 ( ctmn_6897 ) , .A2 ( port0_i_port_fifo_N16 ) , 
    .A3 ( rst_n ) , .Y ( ctmn_6898 ) ) ;
AND2X1_RVT ctmi_642 ( .A1 ( port0_i_port_fifo_N37 ) , .A2 ( ctmn_6652 ) , 
    .Y ( ctmn_6828 ) ) ;
NOR4X0_HVT ctmi_7523 ( .A1 ( ctmn_6899 ) , .A2 ( ctmn_6900 ) , 
    .A3 ( ctmn_6734 ) , .A4 ( port0_i_port_fifo_wr_ptr[2] ) , 
    .Y ( port0_i_port_fifo_N9 ) ) ;
NOR4X0_HVT ctmi_7526 ( .A1 ( ctmn_6899 ) , .A2 ( ctmn_6901 ) , 
    .A3 ( ctmn_6734 ) , .A4 ( port0_i_port_fifo_wr_ptr[2] ) , 
    .Y ( port0_i_port_fifo_N7 ) ) ;
AO221X1_RVT ctmi_7937 ( .A1 ( phfnn_243 ) , 
    .A2 ( port3_i_port_fifo_mem[63] ) , .A3 ( phfnn_266 ) , 
    .A4 ( port3_i_port_fifo_mem[31] ) , .A5 ( ctmn_7165 ) , 
    .Y ( ctmn_7166_CDR1 ) ) ;
AND3X1_HVT ctmi_7528 ( .A1 ( rst_n ) , .A2 ( port0_i_port_fifo_N13 ) , 
    .A3 ( ctmn_6902 ) , .Y ( port0_i_port_fifo_N6 ) ) ;
AND2X1_HVT ctmi_7530 ( .A1 ( ctmn_6903 ) , .A2 ( ctmn_6898 ) , 
    .Y ( port0_i_port_fifo_N5 ) ) ;
AND4X1_HVT ctmi_7532 ( .A1 ( ctmn_6897 ) , .A2 ( rst_n ) , 
    .A3 ( port0_i_port_fifo_wr_ptr[0] ) , .A4 ( ctmn_6903 ) , 
    .Y ( port0_i_port_fifo_N4 ) ) ;
OA221X1_RVT ctmi_7538 ( .A1 ( ctmn_6612 ) , 
    .A2 ( port3_i_port_fifo_mem[81] ) , .A3 ( port3_i_port_fifo_mem[49] ) , 
    .A4 ( ctmn_6620 ) , .A5 ( ctmn_6905_CDR1 ) , .Y ( ctmn_6906_CDR1 ) ) ;
OA22X1_RVT ctmi_7539 ( .A1 ( ctmn_6621 ) , .A2 ( port3_i_port_fifo_mem[1] ) , 
    .A3 ( port3_i_port_fifo_mem[113] ) , .A4 ( ctmn_6617 ) , 
    .Y ( ctmn_6905_CDR1 ) ) ;
AO22X1_RVT ctmi_7938 ( .A1 ( phfnn_269 ) , 
    .A2 ( port3_i_port_fifo_mem[127] ) , .A3 ( phfnn_265 ) , 
    .A4 ( port3_i_port_fifo_mem[95] ) , .Y ( ctmn_7165 ) ) ;
OA221X1_RVT ctmi_7540 ( .A1 ( port3_i_port_fifo_mem[16] ) , 
    .A2 ( ctmn_6615 ) , .A3 ( ctmn_6618 ) , 
    .A4 ( port3_i_port_fifo_mem[32] ) , .A5 ( ctmn_6910_CDR1 ) , 
    .Y ( port3_i_port_fifo_N41 ) ) ;
OA221X1_RVT ctmi_7541 ( .A1 ( ctmn_6619 ) , 
    .A2 ( port3_i_port_fifo_mem[64] ) , .A3 ( port3_i_port_fifo_mem[96] ) , 
    .A4 ( ctmn_6614 ) , .A5 ( ctmn_6909_CDR1 ) , .Y ( ctmn_6910_CDR1 ) ) ;
OA221X1_RVT ctmi_7542 ( .A1 ( ctmn_6621 ) , .A2 ( port3_i_port_fifo_mem[0] ) , 
    .A3 ( port3_i_port_fifo_mem[112] ) , .A4 ( ctmn_6617 ) , 
    .A5 ( ctmn_6908_CDR1 ) , .Y ( ctmn_6909_CDR1 ) ) ;
OA22X1_RVT ctmi_7543 ( .A1 ( ctmn_6612 ) , .A2 ( port3_i_port_fifo_mem[80] ) , 
    .A3 ( port3_i_port_fifo_mem[48] ) , .A4 ( ctmn_6620 ) , 
    .Y ( ctmn_6908_CDR1 ) ) ;
INVX0_HVT ctmi_1007 ( .A ( phfnn_293 ) , .Y ( ctmn_303 ) ) ;
AO222X1_RVT ctmi_7546 ( .A1 ( ctmn_6911 ) , .A2 ( ctmn_6914 ) , 
    .A3 ( ctmn_6911 ) , .A4 ( phfnn_286 ) , .A5 ( ctmn_6911 ) , 
    .A6 ( ctmn_6919 ) , .Y ( ctmn_6920 ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[125] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[124] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[123] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[122] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[121] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[120] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[119] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[118] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[117] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[116] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[115] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[114] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[113] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[112] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[111] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[110] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[109] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[108] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[107] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[106] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[105] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[104] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[103] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[102] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[101] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[100] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[99] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[98] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[97] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_6__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_13 ) , 
    .Q ( port1_i_port_fifo_mem[96] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[95] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[94] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[93] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[92] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[91] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[90] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[89] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[88] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[87] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[86] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[85] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[84] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[83] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[82] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[81] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_5__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_12 ) , 
    .Q ( port1_i_port_fifo_mem[80] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[79] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[78] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[77] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[76] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[75] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[74] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[73] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[72] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[71] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[70] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[69] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[68] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[67] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[66] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[65] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_4__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_11 ) , 
    .Q ( port1_i_port_fifo_mem[64] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[63] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[62] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[61] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[60] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[59] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[58] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[57] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[56] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[55] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[54] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[53] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[52] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[51] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[50] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[49] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_3__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_10 ) , 
    .Q ( port1_i_port_fifo_mem[48] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[47] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[46] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[45] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[44] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[43] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[42] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[41] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[40] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[39] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[38] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[37] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[36] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[35] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[34] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[33] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_2__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_9 ) , 
    .Q ( port1_i_port_fifo_mem[32] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[31] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[30] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[29] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[28] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[27] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[26] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[25] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[24] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[23] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[22] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[21] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[20] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[19] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[18] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[17] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_1__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_8 ) , 
    .Q ( port1_i_port_fifo_mem[16] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[15] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__14_ ( .D ( port1_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[14] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__13_ ( .D ( port1_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[13] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__12_ ( .D ( port1_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[12] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__11_ ( .D ( port1_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[11] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__10_ ( .D ( port1_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[10] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__9_ ( .D ( port1_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[9] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__8_ ( .D ( port1_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[8] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__7_ ( .D ( port1_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[7] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__6_ ( .D ( port1_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[6] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__5_ ( .D ( port1_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[5] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__4_ ( .D ( port1_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[4] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__3_ ( .D ( port1_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[3] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__2_ ( .D ( port1_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[2] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__1_ ( .D ( port1_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[1] ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_0__0_ ( .D ( port1_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg ) , 
    .Q ( port1_i_port_fifo_mem[0] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[127] ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel3_reg_0_ ( .D ( top_arb_i_N20 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel3[0] ) , 
    .QN ( ctmn_6989 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_rd_ptr_reg_2_ ( .D ( port1_i_port_fifo_N18 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( port1_i_port_fifo_rd_ptr[2] ) , .QN ( ctmn_6582 ) ) ;
NOR2X1_RVT ctmi_7547 ( .A1 ( ctmn_6777 ) , .A2 ( port3_i_current_state[1] ) , 
    .Y ( ctmn_6911 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_rd_ptr_reg_0_ ( .D ( port1_i_port_fifo_N20 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( port1_i_port_fifo_rd_ptr[0] ) , .QN ( port1_i_port_fifo_N20 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_fifo_count_reg_3_ ( 
    .D ( port1_i_port_fifo_N22 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_fifo_count_reg_clock_gate_port1_i_port_fifo_fifo_count_reg_30 ) , 
    .RSTB ( rst_n ) , .Q ( port1_i_port_fifo_fifo_count[3] ) , 
    .QN ( ctmn_6641 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_rd_ptr_reg_1_ ( .D ( port1_i_port_fifo_N19 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( port1_i_port_fifo_rd_ptr[1] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_fifo_count_reg_2_ ( 
    .D ( port1_i_port_fifo_N23 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_fifo_count_reg_clock_gate_port1_i_port_fifo_fifo_count_reg_30 ) , 
    .RSTB ( rst_n ) , .Q ( port1_i_port_fifo_fifo_count[2] ) , 
    .QN ( ctmn_7047 ) ) ;
SDFFASX1_HVT port1_i_port_fifo_fifo_count_reg_1_ ( .D ( ctmn_7208 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_fifo_count_reg_clock_gate_port1_i_port_fifo_fifo_count_reg_30 ) , 
    .SETB ( rst_n ) , .QN ( port1_i_port_fifo_fifo_count[1] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_fifo_count_reg_0_ ( 
    .D ( port1_i_port_fifo_N25 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_fifo_count_reg ) , 
    .RSTB ( rst_n ) , .Q ( port1_i_port_fifo_fifo_count[0] ) , 
    .QN ( ctmn_7024 ) ) ;
SDFFARX1_HVT port2_i_current_state_reg_1_ ( .D ( port2_i_next_state[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_current_state[1] ) , .QN ( ctmn_6767 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_14_ ( 
    .D ( port1_i_port_fifo_N27 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[14] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_13_ ( 
    .D ( port1_i_port_fifo_N28 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[13] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_12_ ( 
    .D ( port1_i_port_fifo_N29 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[12] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_11_ ( 
    .D ( port1_i_port_fifo_N30 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[11] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_10_ ( 
    .D ( port1_i_port_fifo_N31 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[10] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_9_ ( 
    .D ( port1_i_port_fifo_N32 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[9] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_8_ ( 
    .D ( port1_i_port_fifo_N33 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[8] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_7_ ( 
    .D ( port1_i_port_fifo_N34 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[7] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_6_ ( 
    .D ( port1_i_port_fifo_N35 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[6] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_5_ ( 
    .D ( port1_i_port_fifo_N36 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[5] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_4_ ( 
    .D ( port1_i_port_fifo_N37 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[4] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_3_ ( 
    .D ( port1_i_port_fifo_N38 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[3] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_2_ ( 
    .D ( port1_i_port_fifo_N39 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[2] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_1_ ( 
    .D ( port1_i_port_fifo_N40 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[1] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_0_ ( 
    .D ( port1_i_port_fifo_N41 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[0] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_wr_ptr_reg_1_ ( .D ( port2_i_port_fifo_N15 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_wr_ptr_reg ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_port_fifo_wr_ptr[1] ) , .QN ( ctmn_7011 ) ) ;
NBUFFX4_HVT TDBUF_1008 ( .A ( port0_valid_out ) , .Y ( TDBUF_304 ) ) ;
INVX0_HVT ctmi_183 ( .A ( ctmn_6956 ) , .Y ( ctmn_6957 ) ) ;
XNOR2X1_RVT ctmi_7549 ( .A1 ( port3_i_port_fifo_N39 ) , 
    .A2 ( port3_i_port_fifo_N41 ) , .Y ( ctmn_6912 ) ) ;
OR2X1_RVT ctmi_7550 ( .A1 ( port3_i_port_fifo_N39 ) , 
    .A2 ( port3_i_port_fifo_N41 ) , .Y ( ctmn_6913 ) ) ;
INVX0_HVT ctmi_184 ( .A ( ctmn_6958 ) , .Y ( ctmn_6959 ) ) ;
OA221X1_RVT ctmi_7552 ( .A1 ( ctmn_6917 ) , .A2 ( phfnn_272 ) , 
    .A3 ( ctmn_6917 ) , .A4 ( port3_i_port_fifo_N39 ) , .A5 ( ctmn_6918 ) , 
    .Y ( ctmn_6919 ) ) ;
AO222X1_RVT ctmi_7553 ( .A1 ( phfnn_271 ) , .A2 ( port3_i_port_fifo_N40 ) , 
    .A3 ( phfnn_285 ) , .A4 ( port3_i_port_fifo_N38 ) , .A5 ( ctmn_6916 ) , 
    .A6 ( port3_i_port_fifo_N41 ) , .Y ( ctmn_6917 ) ) ;
INVX0_HVT ctmi_185 ( .A ( ctmn_7014 ) , .Y ( ctmn_7015 ) ) ;
NAND4X0_RVT ctmi_7555 ( .A1 ( phfnn_271 ) , .A2 ( port3_i_port_fifo_N35 ) , 
    .A3 ( phfnn_285 ) , .A4 ( port3_i_port_fifo_N37 ) , .Y ( ctmn_6918 ) ) ;
AO22X1_RVT ctmi_7948 ( .A1 ( phfnn_251 ) , .A2 ( port0_i_port_fifo_mem[88] ) , 
    .A3 ( phfnn_252 ) , .A4 ( port0_i_port_fifo_mem[120] ) , 
    .Y ( ctmn_7176 ) ) ;
INVX0_HVT ctmi_186 ( .A ( ctmn_7029 ) , .Y ( ctmn_7030 ) ) ;
INVX1_HVT ctmi_187 ( .A ( ctmn_6734 ) , .Y ( port0_i_port_fifo_N13 ) ) ;
AO221X1_RVT ctmi_7951 ( .A1 ( phfnn_250 ) , 
    .A2 ( port0_i_port_fifo_mem[25] ) , .A3 ( phfnn_230 ) , 
    .A4 ( port0_i_port_fifo_mem[73] ) , .A5 ( ctmn_7181 ) , 
    .Y ( port0_i_port_fifo_N32 ) ) ;
AO221X1_RVT ctmi_7952 ( .A1 ( phfnn_248 ) , 
    .A2 ( port0_i_port_fifo_mem[105] ) , .A3 ( phfnn_249 ) , 
    .A4 ( port0_i_port_fifo_mem[41] ) , .A5 ( ctmn_7180 ) , .Y ( ctmn_7181 ) ) ;
NAND2X0_RVT ctmi_7556 ( .A1 ( ctmn_6921 ) , .A2 ( phfnn_153 ) , 
    .Y ( port1_i_port_fifo_N21 ) ) ;
AND2X1_RVT ctmi_644 ( .A1 ( port3_i_port_fifo_N37 ) , .A2 ( ctmn_6648 ) , 
    .Y ( ctmn_6916 ) ) ;
AO221X1_RVT ctmi_7634 ( .A1 ( fifo_data_out0[4] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[4] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6962 ) , 
    .Y ( MXIOP_35_0 ) ) ;
AO22X1_RVT ctmi_7635 ( .A1 ( fifo_data_out1[4] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[4] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6962 ) ) ;
AO221X1_RVT ctmi_7953 ( .A1 ( phfnn_232 ) , 
    .A2 ( port0_i_port_fifo_mem[57] ) , .A3 ( phfnn_231 ) , 
    .A4 ( port0_i_port_fifo_mem[9] ) , .A5 ( ctmn_7179 ) , .Y ( ctmn_7180 ) ) ;
NBUFFX4_HVT TDBUF_1009 ( .A ( port1_valid_out ) , .Y ( TDBUF_305 ) ) ;
AO22X1_RVT ctmi_7954 ( .A1 ( phfnn_251 ) , .A2 ( port0_i_port_fifo_mem[89] ) , 
    .A3 ( phfnn_252 ) , .A4 ( port0_i_port_fifo_mem[121] ) , 
    .Y ( ctmn_7179 ) ) ;
NBUFFX4_HVT TDBUF_1010 ( .A ( port2_valid_out ) , .Y ( TDBUF_306 ) ) ;
NBUFFX4_HVT TDBUF_1011 ( .A ( port3_valid_out ) , .Y ( TDBUF_307 ) ) ;
AO221X1_RVT ctmi_7955 ( .A1 ( phfnn_230 ) , 
    .A2 ( port0_i_port_fifo_mem[74] ) , .A3 ( phfnn_250 ) , 
    .A4 ( port0_i_port_fifo_mem[26] ) , .A5 ( ctmn_7184 ) , 
    .Y ( port0_i_port_fifo_N31 ) ) ;
AO221X1_RVT ctmi_7956 ( .A1 ( phfnn_248 ) , 
    .A2 ( port0_i_port_fifo_mem[106] ) , .A3 ( phfnn_249 ) , 
    .A4 ( port0_i_port_fifo_mem[42] ) , .A5 ( ctmn_7183 ) , .Y ( ctmn_7184 ) ) ;
NAND2X0_RVT ctmi_7560 ( .A1 ( ctmn_6923 ) , .A2 ( phfnn_154 ) , 
    .Y ( port2_i_port_fifo_N21 ) ) ;
CGLPPRX2_HVT clock_gate_port1_i_port_fifo_fifo_count_reg_30 ( 
    .CLK ( clk_clock_gate_port1_i_port_fifo_fifo_count_reg ) , 
    .EN ( clkgt_enable_net_5 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_fifo_count_reg_clock_gate_port1_i_port_fifo_fifo_count_reg_30 ) ) ;
AND2X1_RVT ctmi_646 ( .A1 ( port1_i_port_fifo_N37 ) , .A2 ( ctmn_6642 ) , 
    .Y ( ctmn_6783 ) ) ;
NAND2X0_RVT ctmi_7564 ( .A1 ( ctmn_6925 ) , .A2 ( phfnn_152 ) , 
    .Y ( port3_i_port_fifo_N21 ) ) ;
NAND2X0_RVT ctmi_7565 ( .A1 ( port3_i_port_fifo_N17 ) , .A2 ( ctmn_6802 ) , 
    .Y ( ctmn_6925 ) ) ;
NAND2X0_RVT ctmi_7567 ( .A1 ( ctmn_6775 ) , .A2 ( phfnn_288 ) , 
    .Y ( top_arb_i_N28 ) ) ;
AO221X1_RVT ctmi_7957 ( .A1 ( phfnn_231 ) , 
    .A2 ( port0_i_port_fifo_mem[10] ) , .A3 ( phfnn_232 ) , 
    .A4 ( port0_i_port_fifo_mem[58] ) , .A5 ( ctmn_7182 ) , .Y ( ctmn_7183 ) ) ;
NAND2X0_RVT ctmi_7568 ( .A1 ( ctmn_6766 ) , .A2 ( ctmn_6775 ) , 
    .Y ( top_arb_i_N27 ) ) ;
AO221X1_RVT ctmi_7571 ( .A1 ( fifo_data_out0[8] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[8] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6928 ) , 
    .Y ( MXIOP_27_0 ) ) ;
AO22X1_RVT ctmi_7572 ( .A1 ( fifo_data_out1[8] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[8] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6928 ) ) ;
AO221X1_RVT ctmi_7573 ( .A1 ( fifo_data_out0[7] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[7] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6929 ) , 
    .Y ( MXIOP_16_0 ) ) ;
AO22X1_RVT ctmi_7574 ( .A1 ( fifo_data_out1[7] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[7] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6929 ) ) ;
AO221X1_RVT ctmi_7575 ( .A1 ( fifo_data_out0[6] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[6] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6930 ) , 
    .Y ( MXIOP_17_0 ) ) ;
AO22X1_RVT ctmi_7576 ( .A1 ( fifo_data_out1[6] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[6] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6930 ) ) ;
AO221X1_RVT ctmi_7577 ( .A1 ( fifo_data_out0[5] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[5] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6931 ) , 
    .Y ( MXIOP_18_0 ) ) ;
AO22X1_RVT ctmi_7958 ( .A1 ( phfnn_251 ) , .A2 ( port0_i_port_fifo_mem[90] ) , 
    .A3 ( phfnn_252 ) , .A4 ( port0_i_port_fifo_mem[122] ) , 
    .Y ( ctmn_7182 ) ) ;
AO22X1_RVT ctmi_7578 ( .A1 ( fifo_data_out1[5] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[5] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6931 ) ) ;
AO221X1_RVT ctmi_7579 ( .A1 ( fifo_data_out0[4] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[4] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6932 ) , 
    .Y ( MXIOP_19_0 ) ) ;
AO22X1_RVT ctmi_7580 ( .A1 ( fifo_data_out1[4] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[4] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6932 ) ) ;
AO221X1_RVT ctmi_7581 ( .A1 ( fifo_data_out0[3] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[3] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6933 ) , 
    .Y ( MXIOP_12_0 ) ) ;
AO22X1_RVT ctmi_7582 ( .A1 ( fifo_data_out1[3] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[3] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6933 ) ) ;
AO221X1_RVT ctmi_7583 ( .A1 ( fifo_data_out0[2] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[2] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6934 ) , 
    .Y ( MXIOP_13_0 ) ) ;
AO22X1_RVT ctmi_7584 ( .A1 ( fifo_data_out1[2] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[2] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6934 ) ) ;
AO221X1_RVT ctmi_7585 ( .A1 ( fifo_data_out0[1] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[1] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6935 ) , 
    .Y ( MXIOP_14_0 ) ) ;
AO22X1_RVT ctmi_7586 ( .A1 ( fifo_data_out1[1] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[1] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6935 ) ) ;
AO221X1_RVT ctmi_7587 ( .A1 ( fifo_data_out0[0] ) , .A2 ( ctmn_6805 ) , 
    .A3 ( fifo_data_out3[0] ) , .A4 ( ctmn_6806 ) , .A5 ( ctmn_6936 ) , 
    .Y ( MXIOP_15_0 ) ) ;
AO22X1_RVT ctmi_7588 ( .A1 ( fifo_data_out1[0] ) , .A2 ( ctmn_6807 ) , 
    .A3 ( fifo_data_out2[0] ) , .A4 ( ctmn_6808 ) , .Y ( ctmn_6936 ) ) ;
AND3X2_RVT ctmi_7595 ( .A1 ( ctmn_6937 ) , .A2 ( TDBUF_305 ) , 
    .A3 ( mux_sel1[0] ) , .Y ( ctmn_6941 ) ) ;
AND3X2_RVT ctmi_7596 ( .A1 ( ctmn_6938 ) , .A2 ( mux_sel1[1] ) , 
    .A3 ( TDBUF_305 ) , .Y ( ctmn_6942 ) ) ;
AO221X1_RVT ctmi_7597 ( .A1 ( fifo_data_out0[14] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[14] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6944 ) , 
    .Y ( MXIOP_37_0 ) ) ;
AO22X1_RVT ctmi_7598 ( .A1 ( fifo_data_out1[14] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[14] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6944 ) ) ;
AO221X1_RVT ctmi_7599 ( .A1 ( fifo_data_out0[13] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[13] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6945 ) , 
    .Y ( MXIOP_38_0 ) ) ;
AO22X1_RVT ctmi_7600 ( .A1 ( fifo_data_out1[13] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[13] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6945 ) ) ;
AO221X1_RVT ctmi_7601 ( .A1 ( fifo_data_out0[12] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[12] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6946 ) , 
    .Y ( MXIOP_39_0 ) ) ;
AO221X1_RVT ctmi_7959 ( .A1 ( phfnn_250 ) , 
    .A2 ( port0_i_port_fifo_mem[27] ) , .A3 ( phfnn_230 ) , 
    .A4 ( port0_i_port_fifo_mem[75] ) , .A5 ( ctmn_7187 ) , 
    .Y ( port0_i_port_fifo_N30 ) ) ;
AO22X1_RVT ctmi_7602 ( .A1 ( fifo_data_out1[12] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[12] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6946 ) ) ;
NBUFFX2_RVT HFSBUF_91_1014 ( .A ( port1_i_port_fifo_fifo_count[0] ) , 
    .Y ( HFSNET_2 ) ) ;
AO221X1_RVT ctmi_7603 ( .A1 ( fifo_data_out0[11] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[11] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6947 ) , 
    .Y ( MXIOP_40_0 ) ) ;
AO22X1_RVT ctmi_7604 ( .A1 ( fifo_data_out1[11] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[11] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6947 ) ) ;
AO221X1_RVT ctmi_7605 ( .A1 ( fifo_data_out0[10] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[10] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6948 ) , 
    .Y ( MXIOP_41_0 ) ) ;
AO22X1_RVT ctmi_7606 ( .A1 ( fifo_data_out1[10] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[10] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6948 ) ) ;
AO221X1_RVT ctmi_7607 ( .A1 ( fifo_data_out0[9] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[9] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6949 ) , 
    .Y ( MXIOP_42_0 ) ) ;
AO22X1_RVT ctmi_7608 ( .A1 ( fifo_data_out1[9] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[9] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6949 ) ) ;
AO221X1_RVT ctmi_7609 ( .A1 ( fifo_data_out0[8] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[8] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6950 ) , 
    .Y ( MXIOP_43_0 ) ) ;
AO221X1_RVT ctmi_7960 ( .A1 ( phfnn_248 ) , 
    .A2 ( port0_i_port_fifo_mem[107] ) , .A3 ( phfnn_249 ) , 
    .A4 ( port0_i_port_fifo_mem[43] ) , .A5 ( ctmn_7186 ) , .Y ( ctmn_7187 ) ) ;
AO221X1_RVT ctmi_7961 ( .A1 ( phfnn_231 ) , 
    .A2 ( port0_i_port_fifo_mem[11] ) , .A3 ( phfnn_232 ) , 
    .A4 ( port0_i_port_fifo_mem[59] ) , .A5 ( ctmn_7185 ) , .Y ( ctmn_7186 ) ) ;
AO22X1_RVT ctmi_7962 ( .A1 ( phfnn_251 ) , .A2 ( port0_i_port_fifo_mem[91] ) , 
    .A3 ( phfnn_252 ) , .A4 ( port0_i_port_fifo_mem[123] ) , 
    .Y ( ctmn_7185 ) ) ;
AO221X1_RVT ctmi_7963 ( .A1 ( phfnn_250 ) , 
    .A2 ( port0_i_port_fifo_mem[28] ) , .A3 ( phfnn_230 ) , 
    .A4 ( port0_i_port_fifo_mem[76] ) , .A5 ( ctmn_7190 ) , 
    .Y ( port0_i_port_fifo_N29 ) ) ;
AO22X1_RVT ctmi_7610 ( .A1 ( fifo_data_out1[8] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[8] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6950 ) ) ;
AO221X1_RVT ctmi_7964 ( .A1 ( phfnn_248 ) , 
    .A2 ( port0_i_port_fifo_mem[108] ) , .A3 ( phfnn_249 ) , 
    .A4 ( port0_i_port_fifo_mem[44] ) , .A5 ( ctmn_7189 ) , .Y ( ctmn_7190 ) ) ;
AO221X1_RVT ctmi_7965 ( .A1 ( phfnn_231 ) , 
    .A2 ( port0_i_port_fifo_mem[12] ) , .A3 ( phfnn_232 ) , 
    .A4 ( port0_i_port_fifo_mem[60] ) , .A5 ( ctmn_7188 ) , .Y ( ctmn_7189 ) ) ;
NBUFFX2_RVT HFSBUF_145_1015 ( .A ( port3_i_port_fifo_fifo_count[0] ) , 
    .Y ( HFSNET_3 ) ) ;
AND2X1_RVT ctmi_648 ( .A1 ( port0_i_port_fifo_N36 ) , .A2 ( ctmn_6652 ) , 
    .Y ( ctmn_6827 ) ) ;
AND2X1_RVT ctmi_7753 ( .A1 ( ctmn_7025 ) , .A2 ( port2_i_port_fifo_N21 ) , 
    .Y ( port2_i_port_fifo_N25 ) ) ;
AO221X1_RVT ctmi_7612 ( .A1 ( fifo_data_out0[7] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[7] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6951 ) , 
    .Y ( MXIOP_32_0 ) ) ;
NBUFFX2_RVT HFSBUF_149_1016 ( .A ( top_arb_i_N22 ) , .Y ( HFSNET_4 ) ) ;
AND2X1_RVT ctmi_650 ( .A1 ( port0_i_port_fifo_N35 ) , .A2 ( ctmn_6652 ) , 
    .Y ( ctmn_6689 ) ) ;
AND2X1_RVT ctmi_7740 ( .A1 ( phfnn_229 ) , .A2 ( ctmn_6836 ) , 
    .Y ( port0_i_next_state[1] ) ) ;
NBUFFX2_RVT HFSBUF_87_1017 ( .A ( top_arb_i_common_ptr[1] ) , 
    .Y ( HFSNET_5 ) ) ;
CGLPPRX2_HVT clock_gate_port0_i_port_fifo_data_out_reg ( .CLK ( clk ) , 
    .EN ( port0_i_port_fifo_N17 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_data_out_reg ) ) ;
CGLPPRX2_HVT clock_gate_port0_i_port_fifo_fifo_count_reg ( .CLK ( clk ) , 
    .EN ( port0_i_port_fifo_N21 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_fifo_count_reg ) ) ;
NBUFFX2_RVT HFSBUF_229_1018 ( .A ( ctmn_6645 ) , .Y ( HFSNET_6 ) ) ;
CGLPPRX2_HVT clock_gate_port2_i_port_fifo_fifo_count_reg_31 ( 
    .CLK ( clk_clock_gate_port2_i_port_fifo_fifo_count_reg ) , 
    .EN ( clkgt_enable_net_10 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_fifo_count_reg_clock_gate_port2_i_port_fifo_fifo_count_reg_31 ) ) ;
NOR3X0_HVT ctmi_7620 ( .A1 ( ctmn_6899 ) , 
    .A2 ( port1_i_port_fifo_wr_ptr[0] ) , 
    .A3 ( port1_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_6955 ) ) ;
OR2X1_RVT ctmi_7622 ( .A1 ( port1_i_port_fifo_wr_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_N16 ) , .Y ( ctmn_6956 ) ) ;
NOR2X2_RVT ctmi_7135 ( .A1 ( port1_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6580 ) , .Y ( ctmn_6581 ) ) ;
NAND2X0_RVT ctmi_7625 ( .A1 ( port1_i_port_fifo_wr_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_N16 ) , .Y ( ctmn_6958 ) ) ;
AND3X1_RVT ctmi_7628 ( .A1 ( ctmn_6954 ) , 
    .A2 ( port1_i_port_fifo_wr_ptr[0] ) , 
    .A3 ( port1_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_6960 ) ) ;
AND3X1_HVT ctmi_7627 ( .A1 ( rst_n ) , .A2 ( port1_i_port_fifo_N13 ) , 
    .A3 ( ctmn_6960 ) , .Y ( port1_i_port_fifo_N6 ) ) ;
NAND2X0_RVT ctmi_7633 ( .A1 ( port1_i_port_fifo_wr_ptr[0] ) , 
    .A2 ( port1_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_6961 ) ) ;
AND4X1_HVT ctmi_7630 ( .A1 ( rst_n ) , .A2 ( port1_i_port_fifo_wr_ptr[2] ) , 
    .A3 ( port1_i_port_fifo_N13 ) , .A4 ( ctmn_6957 ) , 
    .Y ( port1_i_port_fifo_N4 ) ) ;
AO22X1_RVT ctmi_7615 ( .A1 ( fifo_data_out1[6] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[6] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6952 ) ) ;
AND2X1_RVT ctmi_7755 ( .A1 ( ctmn_7026 ) , .A2 ( port3_i_port_fifo_N21 ) , 
    .Y ( port3_i_port_fifo_N25 ) ) ;
CGLPPRX2_HVT clock_gate_port0_i_port_fifo_wr_ptr_reg ( .CLK ( clk ) , 
    .EN ( port0_i_port_fifo_N13 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port0_i_port_fifo_wr_ptr_reg ) ) ;
AO22X1_RVT ctmi_7613 ( .A1 ( fifo_data_out1[7] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[7] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6951 ) ) ;
OA222X1_RVT ctmTdsLR_1_1023 ( .A1 ( top_arb_i_common_ptr[1] ) , 
    .A2 ( phfnn_281 ) , .A3 ( top_arb_i_common_ptr[1] ) , .A4 ( phfnn_279 ) , 
    .A5 ( phfnn_281 ) , .A6 ( ctmn_6753 ) , .Y ( ctmn_6755 ) ) ;
CGLPPRX2_HVT clock_gate_port1_i_port_fifo_data_out_reg ( .CLK ( clk ) , 
    .EN ( port1_i_port_fifo_N17 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) ) ;
AOI222X1_RVT ctmi_7774 ( .A1 ( ctmn_7037 ) , .A2 ( ctmn_6651 ) , 
    .A3 ( ctmn_7037 ) , .A4 ( ctmn_6839 ) , .A5 ( ctmn_7037 ) , 
    .A6 ( ctmn_6650 ) , .Y ( port0_i_port_fifo_N22 ) ) ;
AO221X1_RVT ctmi_7775 ( .A1 ( ctmn_6651 ) , .A2 ( phfnn_233 ) , 
    .A3 ( port0_i_port_fifo_fifo_count[3] ) , .A4 ( ctmn_7036 ) , 
    .A5 ( phfnn_155 ) , .Y ( ctmn_7037 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_data_out_reg_15_ ( 
    .D ( port1_i_port_fifo_N26 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out1[15] ) ) ;
AND4X1_HVT ctmi_7726 ( .A1 ( ctmn_7012 ) , .A2 ( rst_n ) , 
    .A3 ( port2_i_port_fifo_N13 ) , .A4 ( ctmn_7015 ) , 
    .Y ( port2_i_port_fifo_N9 ) ) ;
AND3X1_RVT ctmi_656 ( .A1 ( ctmn_6783 ) , .A2 ( ctmn_6773 ) , 
    .A3 ( ctmn_6764 ) , .Y ( ctmn_6786 ) ) ;
CGLPPRX2_HVT clock_gate_port1_i_port_fifo_fifo_count_reg ( .CLK ( clk ) , 
    .EN ( port1_i_port_fifo_N21 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_fifo_count_reg ) ) ;
CGLPPRX2_HVT clock_gate_port1_i_port_fifo_wr_ptr_reg ( .CLK ( clk ) , 
    .EN ( port1_i_port_fifo_N13 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port1_i_port_fifo_wr_ptr_reg ) ) ;
AO221X1_RVT ctmi_7614 ( .A1 ( fifo_data_out0[6] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[6] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6952 ) , 
    .Y ( MXIOP_33_0 ) ) ;
AO221X1_RVT ctmi_7639 ( .A1 ( fifo_data_out0[2] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[2] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6964 ) , 
    .Y ( MXIOP_29_0 ) ) ;
NOR4X0_HVT ctmi_7772 ( .A1 ( ctmn_6899 ) , .A2 ( ctmn_7027 ) , 
    .A3 ( ctmn_6802 ) , .A4 ( ctmn_7034 ) , .Y ( port3_i_port_fifo_N2 ) ) ;
NOR4X0_HVT ctmi_7737 ( .A1 ( ctmn_6899 ) , .A2 ( ctmn_7012 ) , 
    .A3 ( ctmn_6800 ) , .A4 ( ctmn_7019 ) , .Y ( port2_i_port_fifo_N2 ) ) ;
NOR4X0_HVT ctmi_7632 ( .A1 ( ctmn_6899 ) , .A2 ( ctmn_6954 ) , 
    .A3 ( ctmn_6798 ) , .A4 ( ctmn_6961 ) , .Y ( port1_i_port_fifo_N2 ) ) ;
AO221X1_RVT ctmi_7616 ( .A1 ( fifo_data_out0[5] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[5] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6953 ) , 
    .Y ( MXIOP_34_0 ) ) ;
AO22X1_RVT ctmi_7617 ( .A1 ( fifo_data_out1[5] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[5] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6953 ) ) ;
AND3X1_HVT ctmi_7618 ( .A1 ( ctmn_6954 ) , .A2 ( port1_i_port_fifo_N13 ) , 
    .A3 ( ctmn_6955 ) , .Y ( port1_i_port_fifo_N11 ) ) ;
AND3X1_RVT ctmi_661 ( .A1 ( phfnn_271 ) , .A2 ( ctmn_6662 ) , 
    .A3 ( ctmn_6666 ) , .Y ( ctmn_6776 ) ) ;
AND4X1_HVT ctmi_7621 ( .A1 ( ctmn_6954 ) , .A2 ( rst_n ) , 
    .A3 ( port1_i_port_fifo_N13 ) , .A4 ( ctmn_6957 ) , 
    .Y ( port1_i_port_fifo_N9 ) ) ;
AND4X1_HVT ctmi_7624 ( .A1 ( ctmn_6954 ) , .A2 ( rst_n ) , 
    .A3 ( port1_i_port_fifo_N13 ) , .A4 ( ctmn_6959 ) , 
    .Y ( port1_i_port_fifo_N7 ) ) ;
AND4X1_HVT ctmi_7631 ( .A1 ( rst_n ) , .A2 ( port1_i_port_fifo_wr_ptr[2] ) , 
    .A3 ( port1_i_port_fifo_N13 ) , .A4 ( ctmn_6959 ) , 
    .Y ( port1_i_port_fifo_N3 ) ) ;
AND3X1_HVT ctmi_7629 ( .A1 ( port1_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( port1_i_port_fifo_N13 ) , .A3 ( ctmn_6955 ) , 
    .Y ( port1_i_port_fifo_N5 ) ) ;
NAND2X0_RVT ctmi_830 ( .A1 ( port2_i_port_fifo_N17 ) , .A2 ( ctmn_6800 ) , 
    .Y ( ctmn_6923 ) ) ;
AO221X1_RVT ctmi_7636 ( .A1 ( fifo_data_out0[3] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[3] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6963 ) , 
    .Y ( MXIOP_28_0 ) ) ;
AND3X1_RVT ctmi_664 ( .A1 ( port3_i_port_fifo_fifo_count[1] ) , 
    .A2 ( HFSNET_3 ) , .A3 ( port3_i_port_fifo_fifo_count[2] ) , 
    .Y ( ctmn_7063 ) ) ;
AND4X1_HVT ctmi_7736 ( .A1 ( port2_i_port_fifo_N16 ) , .A2 ( rst_n ) , 
    .A3 ( port2_i_port_fifo_wr_ptr[1] ) , .A4 ( ctmn_7018 ) , 
    .Y ( port2_i_port_fifo_N3 ) ) ;
AND3X1_HVT ctmi_7735 ( .A1 ( rst_n ) , .A2 ( ctmn_7018 ) , .A3 ( ctmn_7015 ) , 
    .Y ( port2_i_port_fifo_N4 ) ) ;
NAND2X0_RVT ctmi_7738 ( .A1 ( port2_i_port_fifo_wr_ptr[0] ) , 
    .A2 ( port2_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_7019 ) ) ;
AND2X1_RVT ctmi_831 ( .A1 ( ctmn_6659 ) , .A2 ( ctmn_6888 ) , 
    .Y ( port2_i_port_fifo_N17 ) ) ;
AND4X1_HVT ctmi_7733 ( .A1 ( ctmn_7011 ) , .A2 ( port2_i_port_fifo_N16 ) , 
    .A3 ( rst_n ) , .A4 ( ctmn_7018 ) , .Y ( port2_i_port_fifo_N5 ) ) ;
AND3X1_HVT ctmi_7731 ( .A1 ( rst_n ) , .A2 ( port2_i_port_fifo_N13 ) , 
    .A3 ( ctmn_7017 ) , .Y ( port2_i_port_fifo_N6 ) ) ;
AND3X1_RVT ctmi_7732 ( .A1 ( ctmn_7012 ) , 
    .A2 ( port2_i_port_fifo_wr_ptr[0] ) , 
    .A3 ( port2_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_7017 ) ) ;
NOR4X0_HVT ctmi_7729 ( .A1 ( ctmn_6899 ) , .A2 ( ctmn_7016 ) , 
    .A3 ( ctmn_6800 ) , .A4 ( port2_i_port_fifo_wr_ptr[2] ) , 
    .Y ( port2_i_port_fifo_N7 ) ) ;
SDFFARX1_HVT port1_i_port_fifo_wr_ptr_reg_1_ ( .D ( port1_i_port_fifo_N15 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_wr_ptr_reg ) , .RSTB ( rst_n ) , 
    .Q ( port1_i_port_fifo_wr_ptr[1] ) ) ;
SDFFARX1_HVT port2_i_current_state_reg_0_ ( .D ( port2_i_next_state[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_current_state[0] ) ) ;
AND4X1_HVT ctmi_7771 ( .A1 ( port3_i_port_fifo_N16 ) , .A2 ( rst_n ) , 
    .A3 ( port3_i_port_fifo_wr_ptr[1] ) , .A4 ( ctmn_7033 ) , 
    .Y ( port3_i_port_fifo_N3 ) ) ;
AND3X1_HVT ctmi_7770 ( .A1 ( rst_n ) , .A2 ( ctmn_7033 ) , .A3 ( ctmn_7030 ) , 
    .Y ( port3_i_port_fifo_N4 ) ) ;
CGLPPRX2_HVT clock_gate_port2_i_port_fifo_data_out_reg ( .CLK ( clk ) , 
    .EN ( port2_i_port_fifo_N17 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) ) ;
NAND2X0_RVT ctmi_7773 ( .A1 ( port3_i_port_fifo_wr_ptr[0] ) , 
    .A2 ( port3_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_7034 ) ) ;
OAI21X1_RVT ctmi_832 ( .A1 ( phfnn_133 ) , .A2 ( phfnn_285 ) , 
    .A3 ( ctmn_6716 ) , .Y ( ctmn_6723 ) ) ;
AND2X1_HVT ctmi_7768 ( .A1 ( ctmn_7033 ) , .A2 ( ctmn_7028 ) , 
    .Y ( port3_i_port_fifo_N5 ) ) ;
AND3X1_HVT ctmi_7766 ( .A1 ( rst_n ) , .A2 ( port3_i_port_fifo_N13 ) , 
    .A3 ( ctmn_7032 ) , .Y ( port3_i_port_fifo_N6 ) ) ;
AND3X1_RVT ctmi_7767 ( .A1 ( ctmn_7027 ) , 
    .A2 ( port3_i_port_fifo_wr_ptr[0] ) , 
    .A3 ( port3_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_7032 ) ) ;
NOR4X0_HVT ctmi_7764 ( .A1 ( ctmn_6899 ) , .A2 ( ctmn_7031 ) , 
    .A3 ( ctmn_6802 ) , .A4 ( port3_i_port_fifo_wr_ptr[2] ) , 
    .Y ( port3_i_port_fifo_N7 ) ) ;
AND4X1_HVT ctmi_7761 ( .A1 ( ctmn_7027 ) , .A2 ( rst_n ) , 
    .A3 ( port3_i_port_fifo_N13 ) , .A4 ( ctmn_7030 ) , 
    .Y ( port3_i_port_fifo_N9 ) ) ;
AO22X1_RVT ctmi_7966 ( .A1 ( phfnn_251 ) , .A2 ( port0_i_port_fifo_mem[92] ) , 
    .A3 ( phfnn_252 ) , .A4 ( port0_i_port_fifo_mem[124] ) , 
    .Y ( ctmn_7188 ) ) ;
AO221X1_RVT ctmi_7967 ( .A1 ( phfnn_230 ) , 
    .A2 ( port0_i_port_fifo_mem[77] ) , .A3 ( phfnn_250 ) , 
    .A4 ( port0_i_port_fifo_mem[29] ) , .A5 ( ctmn_7193_CDR1 ) , 
    .Y ( port0_i_port_fifo_N28 ) ) ;
CGLPPRX2_HVT clock_gate_port2_i_port_fifo_fifo_count_reg ( .CLK ( clk ) , 
    .EN ( port2_i_port_fifo_N21 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_fifo_count_reg ) ) ;
AO221X1_RVT ctmi_7968 ( .A1 ( phfnn_249 ) , 
    .A2 ( port0_i_port_fifo_mem[45] ) , .A3 ( phfnn_248 ) , 
    .A4 ( port0_i_port_fifo_mem[109] ) , .A5 ( ctmn_7192 ) , 
    .Y ( ctmn_7193_CDR1 ) ) ;
AO221X1_RVT ctmi_7969 ( .A1 ( phfnn_231 ) , 
    .A2 ( port0_i_port_fifo_mem[13] ) , .A3 ( phfnn_232 ) , 
    .A4 ( port0_i_port_fifo_mem[61] ) , .A5 ( ctmn_7191 ) , .Y ( ctmn_7192 ) ) ;
AO22X1_RVT ctmi_7970 ( .A1 ( phfnn_251 ) , .A2 ( port0_i_port_fifo_mem[93] ) , 
    .A3 ( phfnn_252 ) , .A4 ( port0_i_port_fifo_mem[125] ) , 
    .Y ( ctmn_7191 ) ) ;
AO221X1_RVT ctmi_7971 ( .A1 ( phfnn_250 ) , 
    .A2 ( port0_i_port_fifo_mem[30] ) , .A3 ( phfnn_230 ) , 
    .A4 ( port0_i_port_fifo_mem[78] ) , .A5 ( ctmn_7196 ) , 
    .Y ( port0_i_port_fifo_N27 ) ) ;
AO221X1_RVT ctmi_7972 ( .A1 ( phfnn_249 ) , 
    .A2 ( port0_i_port_fifo_mem[46] ) , .A3 ( phfnn_248 ) , 
    .A4 ( port0_i_port_fifo_mem[110] ) , .A5 ( ctmn_7195 ) , 
    .Y ( ctmn_7196 ) ) ;
AO221X1_RVT ctmi_7973 ( .A1 ( phfnn_231 ) , 
    .A2 ( port0_i_port_fifo_mem[14] ) , .A3 ( phfnn_232 ) , 
    .A4 ( port0_i_port_fifo_mem[62] ) , .A5 ( ctmn_7194 ) , .Y ( ctmn_7195 ) ) ;
AO22X1_RVT ctmi_7974 ( .A1 ( phfnn_251 ) , .A2 ( port0_i_port_fifo_mem[94] ) , 
    .A3 ( phfnn_252 ) , .A4 ( port0_i_port_fifo_mem[126] ) , 
    .Y ( ctmn_7194 ) ) ;
AO221X1_RVT ctmi_7975 ( .A1 ( phfnn_250 ) , 
    .A2 ( port0_i_port_fifo_mem[31] ) , .A3 ( phfnn_230 ) , 
    .A4 ( port0_i_port_fifo_mem[79] ) , .A5 ( ctmn_7199_CDR1 ) , 
    .Y ( port0_i_port_fifo_N26 ) ) ;
AO221X1_RVT ctmi_7976 ( .A1 ( phfnn_249 ) , 
    .A2 ( port0_i_port_fifo_mem[47] ) , .A3 ( phfnn_248 ) , 
    .A4 ( port0_i_port_fifo_mem[111] ) , .A5 ( ctmn_7198_CDR1 ) , 
    .Y ( ctmn_7199_CDR1 ) ) ;
AO221X1_RVT ctmi_7977 ( .A1 ( phfnn_232 ) , 
    .A2 ( port0_i_port_fifo_mem[63] ) , .A3 ( phfnn_231 ) , 
    .A4 ( port0_i_port_fifo_mem[15] ) , .A5 ( ctmn_7197_CDR1 ) , 
    .Y ( ctmn_7198_CDR1 ) ) ;
AO22X1_RVT ctmi_7978 ( .A1 ( phfnn_252 ) , 
    .A2 ( port0_i_port_fifo_mem[127] ) , .A3 ( phfnn_251 ) , 
    .A4 ( port0_i_port_fifo_mem[95] ) , .Y ( ctmn_7197_CDR1 ) ) ;
AND2X1_RVT ctmi_833 ( .A1 ( port0_i_port_fifo_N34 ) , .A2 ( ctmn_6652 ) , 
    .Y ( phfnn_133 ) ) ;
AND3X1_RVT ctmi_669 ( .A1 ( port2_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port2_i_port_fifo_fifo_count[0] ) , 
    .A3 ( port2_i_port_fifo_fifo_count[2] ) , .Y ( ctmn_7054 ) ) ;
CGLPPRX2_HVT clock_gate_port3_i_port_fifo_fifo_count_reg_32 ( 
    .CLK ( clk_clock_gate_port3_i_port_fifo_fifo_count_reg ) , 
    .EN ( clkgt_enable_net_15 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_fifo_count_reg_clock_gate_port3_i_port_fifo_fifo_count_reg_32 ) ) ;
AND2X1_RVT ctmi_834 ( .A1 ( port1_i_port_fifo_N35 ) , .A2 ( ctmn_6642 ) , 
    .Y ( phfnn_138 ) ) ;
AND3X1_RVT ctmi_672 ( .A1 ( port1_i_port_fifo_fifo_count[1] ) , 
    .A2 ( HFSNET_2 ) , .A3 ( port1_i_port_fifo_fifo_count[2] ) , 
    .Y ( ctmn_7045 ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[125] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[124] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[123] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[122] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[121] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[120] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[119] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[118] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[117] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[116] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[115] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[114] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[113] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_7__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_21 ) , 
    .Q ( port2_i_port_fifo_mem[112] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[111] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[110] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[109] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[108] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[107] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[106] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[105] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[104] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[103] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[102] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[101] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[100] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[99] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[98] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[97] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_6__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_20 ) , 
    .Q ( port2_i_port_fifo_mem[96] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[95] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[94] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[93] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[92] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[91] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[90] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[89] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[88] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[87] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[86] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[85] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[84] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[83] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[82] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[81] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_5__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_19 ) , 
    .Q ( port2_i_port_fifo_mem[80] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[79] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[78] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[77] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[76] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[75] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[74] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[73] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[72] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[71] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[70] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[69] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[68] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[67] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[66] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[65] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_4__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_18 ) , 
    .Q ( port2_i_port_fifo_mem[64] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[63] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[62] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[61] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[60] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[59] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[58] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[57] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[56] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[55] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[54] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[53] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[52] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[51] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[50] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[49] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_3__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_17 ) , 
    .Q ( port2_i_port_fifo_mem[48] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[47] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[46] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[45] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[44] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[43] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[42] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[41] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[40] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[39] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[38] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[37] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[36] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[35] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[34] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[33] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_2__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_16 ) , 
    .Q ( port2_i_port_fifo_mem[32] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[31] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[30] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[29] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[28] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[27] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[26] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[25] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[24] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[23] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[22] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[21] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[20] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[19] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[18] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[17] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_1__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg_15 ) , 
    .Q ( port2_i_port_fifo_mem[16] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__15_ ( .D ( port2_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[15] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__14_ ( .D ( port2_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[14] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__13_ ( .D ( port2_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[13] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__12_ ( .D ( port2_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[12] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__11_ ( .D ( port2_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[11] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__10_ ( .D ( port2_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[10] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__9_ ( .D ( port2_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[9] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__8_ ( .D ( port2_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[8] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__7_ ( .D ( port2_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[7] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__6_ ( .D ( port2_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[6] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__5_ ( .D ( port2_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[5] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__4_ ( .D ( port2_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[4] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__3_ ( .D ( port2_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[3] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__2_ ( .D ( port2_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[2] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__1_ ( .D ( port2_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[1] ) ) ;
SDFFX1_RVT port2_i_port_fifo_mem_reg_0__0_ ( .D ( port2_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_mem_reg ) , 
    .Q ( port2_i_port_fifo_mem[0] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[127] ) ) ;
OR2X1_RVT ctmi_836 ( .A1 ( ctmn_6800 ) , .A2 ( port2_i_port_fifo_N17 ) , 
    .Y ( phfnn_154 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_rd_ptr_reg_2_ ( .D ( port2_i_port_fifo_N18 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_port_fifo_rd_ptr[2] ) , .QN ( ctmn_6625 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_rd_ptr_reg_0_ ( .D ( port2_i_port_fifo_N20 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_port_fifo_rd_ptr[0] ) , .QN ( port2_i_port_fifo_N20 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_fifo_count_reg_3_ ( 
    .D ( port2_i_port_fifo_N22 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_fifo_count_reg_clock_gate_port2_i_port_fifo_fifo_count_reg_31 ) , 
    .RSTB ( rst_n ) , .Q ( port2_i_port_fifo_fifo_count[3] ) , 
    .QN ( ctmn_6658 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_rd_ptr_reg_1_ ( .D ( port2_i_port_fifo_N19 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_port_fifo_rd_ptr[1] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_fifo_count_reg_2_ ( 
    .D ( port2_i_port_fifo_N23 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_fifo_count_reg_clock_gate_port2_i_port_fifo_fifo_count_reg_31 ) , 
    .RSTB ( rst_n ) , .Q ( port2_i_port_fifo_fifo_count[2] ) , 
    .QN ( ctmn_7056 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_fifo_count_reg_0_ ( 
    .D ( port2_i_port_fifo_N25 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_fifo_count_reg ) , 
    .RSTB ( rst_n ) , .Q ( port2_i_port_fifo_fifo_count[0] ) , 
    .QN ( ctmn_7025 ) ) ;
SDFFARX1_HVT port3_i_current_state_reg_0_ ( .D ( port3_i_next_state[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port3_i_current_state[0] ) , .QN ( ctmn_6777 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_fifo_count_reg_1_ ( 
    .D ( port2_i_port_fifo_N24 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_fifo_count_reg_clock_gate_port2_i_port_fifo_fifo_count_reg_31 ) , 
    .RSTB ( rst_n ) , .Q ( port2_i_port_fifo_fifo_count[1] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_14_ ( 
    .D ( port2_i_port_fifo_N27 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[14] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_13_ ( 
    .D ( port2_i_port_fifo_N28 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[13] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_12_ ( 
    .D ( port2_i_port_fifo_N29 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[12] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_11_ ( 
    .D ( port2_i_port_fifo_N30 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[11] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_10_ ( 
    .D ( port2_i_port_fifo_N31 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[10] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_9_ ( 
    .D ( port2_i_port_fifo_N32 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[9] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_8_ ( 
    .D ( port2_i_port_fifo_N33 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[8] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_7_ ( 
    .D ( port2_i_port_fifo_N34 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[7] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_6_ ( 
    .D ( port2_i_port_fifo_N35 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[6] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_5_ ( 
    .D ( port2_i_port_fifo_N36 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[5] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_4_ ( 
    .D ( port2_i_port_fifo_N37 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[4] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_3_ ( 
    .D ( port2_i_port_fifo_N38 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[3] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_2_ ( 
    .D ( port2_i_port_fifo_N39 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[2] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_1_ ( 
    .D ( port2_i_port_fifo_N40 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[1] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_0_ ( 
    .D ( port2_i_port_fifo_N41 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[0] ) ) ;
SDFFARX1_HVT port3_i_current_state_reg_1_ ( .D ( port3_i_next_state[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , 
    .Q ( port3_i_current_state[1] ) ) ;
NAND2X0_RVT ctmi_837 ( .A1 ( port1_i_port_fifo_N17 ) , .A2 ( ctmn_6798 ) , 
    .Y ( ctmn_6921 ) ) ;
AND3X1_RVT ctmi_678 ( .A1 ( port0_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port0_i_port_fifo_fifo_count[0] ) , 
    .A3 ( port0_i_port_fifo_fifo_count[2] ) , .Y ( ctmn_7036 ) ) ;
AND2X1_RVT ctmi_838 ( .A1 ( ctmn_6642 ) , .A2 ( ctmn_6886 ) , 
    .Y ( port1_i_port_fifo_N17 ) ) ;
OR2X1_RVT ctmi_839 ( .A1 ( ctmn_6798 ) , .A2 ( port1_i_port_fifo_N17 ) , 
    .Y ( phfnn_153 ) ) ;
OAI21X1_RVT ctmi_840 ( .A1 ( phfnn_138 ) , .A2 ( phfnn_283 ) , 
    .A3 ( ctmn_6686 ) , .Y ( ctmn_6697 ) ) ;
OR2X1_RVT ctmi_841 ( .A1 ( port3_i_port_fifo_N17 ) , .A2 ( ctmn_6802 ) , 
    .Y ( phfnn_152 ) ) ;
NOR4X0_RVT ctmi_842 ( .A1 ( ctmn_6827 ) , .A2 ( ctmn_6689 ) , 
    .A3 ( phfnn_133 ) , .A4 ( ctmn_6828 ) , .Y ( ctmn_6749 ) ) ;
AND2X1_RVT ctmi_847 ( .A1 ( ctmn_6652 ) , .A2 ( ctmn_6837 ) , 
    .Y ( port0_i_port_fifo_N17 ) ) ;
NAND2X0_RVT ctmi_848 ( .A1 ( port0_i_port_fifo_N17 ) , .A2 ( ctmn_6734 ) , 
    .Y ( ctmn_6839 ) ) ;
OR2X1_RVT ctmi_849 ( .A1 ( ctmn_6734 ) , .A2 ( port0_i_port_fifo_N17 ) , 
    .Y ( phfnn_155 ) ) ;
NBUFFX4_HVT ctmi_851 ( .A ( active1 ) , .Y ( port1_valid_out ) ) ;
NBUFFX4_HVT ctmi_852 ( .A ( active2 ) , .Y ( port2_valid_out ) ) ;
NBUFFX4_HVT ctmi_853 ( .A ( active3 ) , .Y ( port3_valid_out ) ) ;
NBUFFX4_HVT ctmi_854 ( .A ( active0 ) , .Y ( port0_valid_out ) ) ;
AO22X1_RVT ctmi_7637 ( .A1 ( fifo_data_out1[3] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[3] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6963 ) ) ;
AO22X1_RVT ctmi_7640 ( .A1 ( fifo_data_out1[2] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[2] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6964 ) ) ;
AO221X1_RVT ctmi_7641 ( .A1 ( fifo_data_out0[1] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[1] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6965 ) , 
    .Y ( MXIOP_30_0 ) ) ;
AO22X1_RVT ctmi_7642 ( .A1 ( fifo_data_out1[1] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[1] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6965 ) ) ;
AO221X1_RVT ctmi_7643 ( .A1 ( fifo_data_out0[0] ) , .A2 ( ctmn_6939 ) , 
    .A3 ( fifo_data_out3[0] ) , .A4 ( ctmn_6940 ) , .A5 ( ctmn_6966 ) , 
    .Y ( MXIOP_31_0 ) ) ;
AO22X1_RVT ctmi_7644 ( .A1 ( fifo_data_out1[0] ) , .A2 ( ctmn_6941 ) , 
    .A3 ( fifo_data_out2[0] ) , .A4 ( ctmn_6942 ) , .Y ( ctmn_6966 ) ) ;
AO221X1_RVT ctmi_7645 ( .A1 ( fifo_data_out0[15] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[15] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6973 ) , 
    .Y ( MXIOP_52_0 ) ) ;
AND3X2_RVT ctmi_7646 ( .A1 ( ctmn_6967 ) , .A2 ( ctmn_6968 ) , 
    .A3 ( TDBUF_306 ) , .Y ( ctmn_6969 ) ) ;
AND3X2_RVT ctmi_7649 ( .A1 ( mux_sel2[0] ) , .A2 ( TDBUF_306 ) , 
    .A3 ( mux_sel2[1] ) , .Y ( ctmn_6970 ) ) ;
AO22X1_RVT ctmi_7650 ( .A1 ( fifo_data_out1[15] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( ZBUF_59_0 ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6973 ) ) ;
AND3X2_RVT ctmi_7651 ( .A1 ( ctmn_6968 ) , .A2 ( mux_sel2[0] ) , 
    .A3 ( TDBUF_306 ) , .Y ( ctmn_6971 ) ) ;
AND3X2_RVT ctmi_7652 ( .A1 ( ctmn_6967 ) , .A2 ( TDBUF_306 ) , 
    .A3 ( mux_sel2[1] ) , .Y ( ctmn_6972 ) ) ;
AO221X1_RVT ctmi_7653 ( .A1 ( fifo_data_out0[14] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[14] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6974 ) , 
    .Y ( MXIOP_53_0 ) ) ;
AO22X1_RVT ctmi_7654 ( .A1 ( fifo_data_out1[14] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[14] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6974 ) ) ;
AO221X1_RVT ctmi_7655 ( .A1 ( fifo_data_out0[13] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[13] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6975 ) , 
    .Y ( MXIOP_54_0 ) ) ;
CGLPPRX2_HVT clock_gate_port2_i_port_fifo_wr_ptr_reg ( .CLK ( clk ) , 
    .EN ( port2_i_port_fifo_N13 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port2_i_port_fifo_wr_ptr_reg ) ) ;
AND4X1_HVT ctmi_7722 ( .A1 ( ctmn_7011 ) , .A2 ( port2_i_port_fifo_N16 ) , 
    .A3 ( rst_n ) , .A4 ( ctmn_7013 ) , .Y ( port2_i_port_fifo_N11 ) ) ;
AO22X1_RVT ctmi_7656 ( .A1 ( fifo_data_out1[13] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[13] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6975 ) ) ;
AO221X1_RVT ctmi_7657 ( .A1 ( fifo_data_out0[12] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[12] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6976 ) , 
    .Y ( MXIOP_55_0 ) ) ;
AO22X1_RVT ctmi_7658 ( .A1 ( fifo_data_out1[12] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[12] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6976 ) ) ;
CGLPPRX2_HVT clock_gate_port3_i_port_fifo_data_out_reg ( .CLK ( clk ) , 
    .EN ( port3_i_port_fifo_N17 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) ) ;
AO221X1_RVT ctmi_7659 ( .A1 ( fifo_data_out0[11] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[11] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6977 ) , 
    .Y ( MXIOP_56_0 ) ) ;
CGLPPRX2_HVT clock_gate_port3_i_port_fifo_fifo_count_reg ( .CLK ( clk ) , 
    .EN ( port3_i_port_fifo_N21 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_fifo_count_reg ) ) ;
AO22X1_RVT ctmi_7660 ( .A1 ( fifo_data_out1[11] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[11] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6977 ) ) ;
AO221X1_RVT ctmi_7661 ( .A1 ( fifo_data_out0[10] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[10] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6978 ) , 
    .Y ( MXIOP_57_0 ) ) ;
AO22X1_RVT ctmi_7662 ( .A1 ( fifo_data_out1[10] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[10] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6978 ) ) ;
AO221X1_RVT ctmi_7663 ( .A1 ( fifo_data_out0[9] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[9] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6979 ) , 
    .Y ( MXIOP_58_0 ) ) ;
AO22X1_RVT ctmi_7664 ( .A1 ( fifo_data_out1[9] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[9] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6979 ) ) ;
AO221X1_RVT ctmi_7665 ( .A1 ( fifo_data_out0[8] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[8] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6980 ) , 
    .Y ( MXIOP_59_0 ) ) ;
AO22X1_RVT ctmi_7666 ( .A1 ( fifo_data_out1[8] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[8] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6980 ) ) ;
AO221X1_RVT ctmi_7667 ( .A1 ( fifo_data_out0[7] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[7] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6981 ) , 
    .Y ( MXIOP_48_0 ) ) ;
AO22X1_RVT ctmi_7668 ( .A1 ( fifo_data_out1[7] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[7] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6981 ) ) ;
AO221X1_RVT ctmi_7669 ( .A1 ( fifo_data_out0[6] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[6] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6982 ) , 
    .Y ( MXIOP_49_0 ) ) ;
AO22X1_RVT ctmi_7670 ( .A1 ( fifo_data_out1[6] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[6] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6982 ) ) ;
AO221X1_RVT ctmi_7671 ( .A1 ( fifo_data_out0[5] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[5] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6983 ) , 
    .Y ( MXIOP_50_0 ) ) ;
AO22X1_RVT ctmi_7672 ( .A1 ( fifo_data_out1[5] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[5] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6983 ) ) ;
AO221X1_RVT ctmi_7673 ( .A1 ( fifo_data_out0[4] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[4] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6984 ) , 
    .Y ( MXIOP_51_0 ) ) ;
AO22X1_RVT ctmi_7674 ( .A1 ( fifo_data_out1[4] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[4] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6984 ) ) ;
AO221X1_RVT ctmi_7675 ( .A1 ( fifo_data_out0[3] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[3] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6985 ) , 
    .Y ( MXIOP_44_0 ) ) ;
CGLPPRX2_HVT clock_gate_port3_i_port_fifo_wr_ptr_reg ( .CLK ( clk ) , 
    .EN ( port3_i_port_fifo_N13 ) , .SE ( 1'b0 ) , 
    .GCLK ( clk_clock_gate_port3_i_port_fifo_wr_ptr_reg ) ) ;
NBUFFX4_HVT MXIOP_12 ( .A ( MXIOP_12_0 ) , .Y ( port0_source_out[3] ) ) ;
AO22X1_RVT ctmi_7676 ( .A1 ( fifo_data_out1[3] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[3] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6985 ) ) ;
AND2X1_RVT ctmi_7724 ( .A1 ( ctmn_7012 ) , .A2 ( port2_i_port_fifo_N13 ) , 
    .Y ( ctmn_7013 ) ) ;
AO221X1_RVT ctmi_7677 ( .A1 ( fifo_data_out0[2] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[2] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6986 ) , 
    .Y ( MXIOP_45_0 ) ) ;
AO22X1_RVT ctmi_7678 ( .A1 ( fifo_data_out1[2] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[2] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6986 ) ) ;
AO221X1_RVT ctmi_7679 ( .A1 ( fifo_data_out0[1] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[1] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6987 ) , 
    .Y ( MXIOP_46_0 ) ) ;
AO22X1_RVT ctmi_7680 ( .A1 ( fifo_data_out1[1] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[1] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6987 ) ) ;
AO221X1_RVT ctmi_7681 ( .A1 ( fifo_data_out0[0] ) , .A2 ( ctmn_6969 ) , 
    .A3 ( fifo_data_out3[0] ) , .A4 ( ctmn_6970 ) , .A5 ( ctmn_6988 ) , 
    .Y ( MXIOP_47_0 ) ) ;
AO22X1_RVT ctmi_7682 ( .A1 ( fifo_data_out1[0] ) , .A2 ( ctmn_6971 ) , 
    .A3 ( fifo_data_out2[0] ) , .A4 ( ctmn_6972 ) , .Y ( ctmn_6988 ) ) ;
AO221X1_RVT ctmi_7683 ( .A1 ( fifo_data_out0[15] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[15] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_6995 ) , 
    .Y ( MXIOP_68_0 ) ) ;
AND3X2_RVT ctmi_7684 ( .A1 ( ctmn_6989 ) , .A2 ( ctmn_6990 ) , 
    .A3 ( TDBUF_307 ) , .Y ( ctmn_6991 ) ) ;
NBUFFX4_HVT MXIOP_13 ( .A ( MXIOP_13_0 ) , .Y ( port0_source_out[2] ) ) ;
AND3X2_RVT ctmi_7687 ( .A1 ( mux_sel3[0] ) , .A2 ( TDBUF_307 ) , 
    .A3 ( mux_sel3[1] ) , .Y ( ctmn_6992 ) ) ;
NBUFFX4_HVT MXIOP_14 ( .A ( MXIOP_14_0 ) , .Y ( port0_source_out[1] ) ) ;
AO22X1_RVT ctmi_7688 ( .A1 ( fifo_data_out1[15] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( ZBUF_59_0 ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_6995 ) ) ;
AND3X2_RVT ctmi_7689 ( .A1 ( ctmn_6990 ) , .A2 ( mux_sel3[0] ) , 
    .A3 ( TDBUF_307 ) , .Y ( ctmn_6993 ) ) ;
SDFFARX1_HVT port3_i_port_fifo_wr_ptr_reg_0_ ( .D ( port3_i_port_fifo_N16 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_wr_ptr_reg ) , .RSTB ( rst_n ) , 
    .Q ( port3_i_port_fifo_wr_ptr[0] ) , .QN ( port3_i_port_fifo_N16 ) ) ;
SDFFARX1_HVT port2_i_port_fifo_data_out_reg_15_ ( 
    .D ( port2_i_port_fifo_N26 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out2[15] ) ) ;
AND3X4_LVT ctmi_7690 ( .A1 ( ctmn_6989 ) , .A2 ( TDBUF_307 ) , 
    .A3 ( mux_sel3[1] ) , .Y ( ctmn_6994 ) ) ;
AO221X1_RVT ctmi_7691 ( .A1 ( fifo_data_out0[14] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[14] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_6996 ) , 
    .Y ( MXIOP_69_0 ) ) ;
AO22X1_RVT ctmi_7692 ( .A1 ( fifo_data_out1[14] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[14] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_6996 ) ) ;
NBUFFX4_HVT MXIOP_15 ( .A ( MXIOP_15_0 ) , .Y ( port0_source_out[0] ) ) ;
NBUFFX4_HVT MXIOP_16 ( .A ( MXIOP_16_0 ) , .Y ( port0_target_out[3] ) ) ;
AO221X1_RVT ctmi_7693 ( .A1 ( fifo_data_out0[13] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[13] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_6997 ) , 
    .Y ( MXIOP_70_0 ) ) ;
AO22X1_RVT ctmi_7694 ( .A1 ( fifo_data_out1[13] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[13] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_6997 ) ) ;
AO221X1_RVT ctmi_7695 ( .A1 ( fifo_data_out0[12] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[12] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_6998 ) , 
    .Y ( MXIOP_71_0 ) ) ;
AO22X1_RVT ctmi_7696 ( .A1 ( fifo_data_out1[12] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[12] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_6998 ) ) ;
AO221X1_RVT ctmi_7697 ( .A1 ( fifo_data_out0[11] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[11] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_6999 ) , 
    .Y ( MXIOP_72_0 ) ) ;
AO22X1_RVT ctmi_7698 ( .A1 ( fifo_data_out1[11] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[11] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_6999 ) ) ;
AO221X1_RVT ctmi_7699 ( .A1 ( fifo_data_out0[10] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[10] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_7000 ) , 
    .Y ( MXIOP_73_0 ) ) ;
AO22X1_RVT ctmi_7700 ( .A1 ( fifo_data_out1[10] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[10] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_7000 ) ) ;
AO221X1_RVT ctmi_7701 ( .A1 ( fifo_data_out0[9] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[9] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_7001 ) , 
    .Y ( MXIOP_74_0 ) ) ;
AO22X1_RVT ctmi_7702 ( .A1 ( fifo_data_out1[9] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[9] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_7001 ) ) ;
AO221X1_RVT ctmi_7703 ( .A1 ( fifo_data_out0[8] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[8] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_7002 ) , 
    .Y ( MXIOP_75_0 ) ) ;
AO22X1_RVT ctmi_7704 ( .A1 ( fifo_data_out1[8] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[8] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_7002 ) ) ;
AO221X1_RVT ctmi_7705 ( .A1 ( fifo_data_out0[7] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[7] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_7003 ) , 
    .Y ( MXIOP_64_0 ) ) ;
AO22X1_RVT ctmi_7706 ( .A1 ( fifo_data_out1[7] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[7] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_7003 ) ) ;
AO221X1_RVT ctmi_7707 ( .A1 ( fifo_data_out0[6] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[6] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_7004 ) , 
    .Y ( MXIOP_65_0 ) ) ;
AO22X1_RVT ctmi_7708 ( .A1 ( fifo_data_out1[6] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[6] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_7004 ) ) ;
AO221X1_RVT ctmi_7709 ( .A1 ( fifo_data_out0[5] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[5] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_7005 ) , 
    .Y ( MXIOP_66_0 ) ) ;
AO22X1_RVT ctmi_7710 ( .A1 ( fifo_data_out1[5] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[5] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_7005 ) ) ;
AO221X1_RVT ctmi_7711 ( .A1 ( fifo_data_out0[4] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[4] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_7006 ) , 
    .Y ( MXIOP_67_0 ) ) ;
AO22X1_RVT ctmi_7712 ( .A1 ( fifo_data_out1[4] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[4] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_7006 ) ) ;
AO221X1_RVT ctmi_7713 ( .A1 ( fifo_data_out0[3] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[3] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_7007 ) , 
    .Y ( MXIOP_60_0 ) ) ;
AO22X1_RVT ctmi_7714 ( .A1 ( fifo_data_out1[3] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[3] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_7007 ) ) ;
AO221X1_RVT ctmi_7715 ( .A1 ( fifo_data_out0[2] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[2] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_7008 ) , 
    .Y ( MXIOP_61_0 ) ) ;
AO22X1_RVT ctmi_7716 ( .A1 ( fifo_data_out1[2] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[2] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_7008 ) ) ;
AO221X1_RVT ctmi_7717 ( .A1 ( fifo_data_out0[1] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[1] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_7009 ) , 
    .Y ( MXIOP_62_0 ) ) ;
AO22X1_RVT ctmi_7718 ( .A1 ( fifo_data_out1[1] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[1] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_7009 ) ) ;
AO221X1_RVT ctmi_7719 ( .A1 ( fifo_data_out0[0] ) , .A2 ( ctmn_6991 ) , 
    .A3 ( fifo_data_out3[0] ) , .A4 ( ctmn_6992 ) , .A5 ( ctmn_7010 ) , 
    .Y ( MXIOP_63_0 ) ) ;
AO22X1_RVT ctmi_7720 ( .A1 ( fifo_data_out1[0] ) , .A2 ( ctmn_6993 ) , 
    .A3 ( fifo_data_out2[0] ) , .A4 ( ctmn_6994 ) , .Y ( ctmn_7010 ) ) ;
NAND2X0_RVT ctmi_7727 ( .A1 ( port2_i_port_fifo_wr_ptr[0] ) , 
    .A2 ( ctmn_7011 ) , .Y ( ctmn_7014 ) ) ;
NAND2X0_RVT ctmi_7730 ( .A1 ( port2_i_port_fifo_wr_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_N16 ) , .Y ( ctmn_7016 ) ) ;
AND2X1_RVT ctmi_7734 ( .A1 ( port2_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( port2_i_port_fifo_N13 ) , .Y ( ctmn_7018 ) ) ;
NBUFFX4_HVT MXIOP_17 ( .A ( MXIOP_17_0 ) , .Y ( port0_target_out[2] ) ) ;
MUX21X1_RVT ctmi_7741 ( .A1 ( ctmn_6748 ) , .A2 ( port0_i_current_state[1] ) , 
    .S0 ( port0_i_current_state[0] ) , .Y ( ctmn_7020 ) ) ;
AO21X1_RVT ctmi_7743 ( .A1 ( ctmn_7020 ) , .A2 ( ctmn_6652 ) , 
    .A3 ( ctmn_6761 ) , .Y ( port0_i_next_state[0] ) ) ;
NOR2X0_RVT ctmi_7744 ( .A1 ( ctmn_7022 ) , .A2 ( ctmn_6920 ) , 
    .Y ( port3_i_next_state[1] ) ) ;
MUX21X1_RVT ctmi_7745 ( .A1 ( ctmn_6777 ) , .A2 ( port3_i_current_state[0] ) , 
    .S0 ( port3_i_current_state[1] ) , .Y ( ctmn_7022 ) ) ;
AO21X1_RVT ctmi_7746 ( .A1 ( ctmn_7022 ) , .A2 ( ctmn_6648 ) , 
    .A3 ( ctmn_6781 ) , .Y ( port3_i_next_state[0] ) ) ;
AO21X1_RVT ctmi_7747 ( .A1 ( ctmn_6876 ) , .A2 ( ctmn_6642 ) , 
    .A3 ( ctmn_6791 ) , .Y ( port1_i_next_state[0] ) ) ;
AND2X1_RVT ctmi_7749 ( .A1 ( ctmn_7023 ) , .A2 ( port0_i_port_fifo_N21 ) , 
    .Y ( port0_i_port_fifo_N25 ) ) ;
NBUFFX4_HVT MXIOP_18 ( .A ( MXIOP_18_0 ) , .Y ( port0_target_out[1] ) ) ;
AND3X1_HVT ctmi_7758 ( .A1 ( ctmn_7027 ) , .A2 ( port3_i_port_fifo_N13 ) , 
    .A3 ( ctmn_7028 ) , .Y ( port3_i_port_fifo_N11 ) ) ;
NOR3X0_HVT ctmi_7760 ( .A1 ( ctmn_6899 ) , 
    .A2 ( port3_i_port_fifo_wr_ptr[0] ) , 
    .A3 ( port3_i_port_fifo_wr_ptr[1] ) , .Y ( ctmn_7028 ) ) ;
OR2X1_RVT ctmi_7762 ( .A1 ( port3_i_port_fifo_wr_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_N16 ) , .Y ( ctmn_7029 ) ) ;
NAND2X0_RVT ctmi_7765 ( .A1 ( port3_i_port_fifo_wr_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_N16 ) , .Y ( ctmn_7031 ) ) ;
AND2X1_RVT ctmi_7769 ( .A1 ( port3_i_port_fifo_wr_ptr[2] ) , 
    .A2 ( port3_i_port_fifo_N13 ) , .Y ( ctmn_7033 ) ) ;
AO22X1_RVT ctmi_7778 ( .A1 ( ctmn_7040 ) , .A2 ( ctmn_6837 ) , 
    .A3 ( ctmn_7042 ) , .A4 ( phfnn_296 ) , .Y ( port0_i_port_fifo_N23 ) ) ;
AOI222X1_RVT ctmi_7779 ( .A1 ( ctmn_6733 ) , .A2 ( ctmn_7038 ) , 
    .A3 ( ctmn_6733 ) , .A4 ( ctmn_7039 ) , .A5 ( ctmn_6733 ) , 
    .A6 ( port0_valid_in ) , .Y ( ctmn_7040 ) ) ;
NOR2X1_RVT ctmi_7781 ( .A1 ( port0_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port0_i_port_fifo_fifo_count[0] ) , .Y ( ctmn_7039 ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[125] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[124] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[123] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[122] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[121] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[120] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[119] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[118] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[117] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[116] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[115] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[114] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[113] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_7__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_28 ) , 
    .Q ( port3_i_port_fifo_mem[112] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[111] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[110] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[109] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[108] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[107] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[106] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[105] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[104] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[103] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[102] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[101] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[100] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[99] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[98] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[97] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_6__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_27 ) , 
    .Q ( port3_i_port_fifo_mem[96] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[95] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[94] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[93] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[92] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[91] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[90] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[89] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[88] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[87] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[86] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[85] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[84] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[83] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[82] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[81] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_5__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_26 ) , 
    .Q ( port3_i_port_fifo_mem[80] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[79] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[78] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[77] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[76] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[75] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[74] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[73] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[72] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[71] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[70] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[69] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[68] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[67] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[66] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[65] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_4__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_25 ) , 
    .Q ( port3_i_port_fifo_mem[64] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[63] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[62] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[61] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[60] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[59] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[58] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[57] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[56] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[55] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[54] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[53] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[52] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[51] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[50] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[49] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_3__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_24 ) , 
    .Q ( port3_i_port_fifo_mem[48] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[47] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[46] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[45] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[44] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[43] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[42] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[41] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[40] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[39] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[38] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[37] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[36] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[35] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[34] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[33] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_2__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_23 ) , 
    .Q ( port3_i_port_fifo_mem[32] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[31] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[30] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[29] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[28] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[27] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[26] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[25] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[24] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[23] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[22] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[21] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[20] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[19] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[18] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[17] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_1__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg_22 ) , 
    .Q ( port3_i_port_fifo_mem[16] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__15_ ( .D ( port3_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[15] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__14_ ( .D ( port3_data_in[6] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[14] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__13_ ( .D ( port3_data_in[5] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[13] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__12_ ( .D ( port3_data_in[4] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[12] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__11_ ( .D ( port3_data_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[11] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__10_ ( .D ( port3_data_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[10] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__9_ ( .D ( port3_data_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[9] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__8_ ( .D ( port3_data_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[8] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__7_ ( .D ( port3_target_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[7] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__6_ ( .D ( port3_target_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[6] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__5_ ( .D ( port3_target_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[5] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__4_ ( .D ( port3_target_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[4] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__3_ ( .D ( port3_source_in[3] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[3] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__2_ ( .D ( port3_source_in[2] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[2] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__1_ ( .D ( port3_source_in[1] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[1] ) ) ;
SDFFX1_RVT port3_i_port_fifo_mem_reg_0__0_ ( .D ( port3_source_in[0] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_mem_reg ) , 
    .Q ( port3_i_port_fifo_mem[0] ) ) ;
OA21X1_RVT ctmi_7782 ( .A1 ( port0_i_port_fifo_fifo_count[2] ) , 
    .A2 ( ctmn_7041 ) , .A3 ( phfnn_233 ) , .Y ( ctmn_7042 ) ) ;
SDFFARX1_HVT port3_i_port_fifo_rd_ptr_reg_2_ ( .D ( port3_i_port_fifo_N18 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( port3_i_port_fifo_rd_ptr[2] ) , .QN ( ctmn_6610 ) ) ;
SDFFARX1_HVT port3_i_port_fifo_rd_ptr_reg_0_ ( .D ( port3_i_port_fifo_N20 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( port3_i_port_fifo_rd_ptr[0] ) , .QN ( port3_i_port_fifo_N20 ) ) ;
SDFFARX1_HVT port3_i_port_fifo_fifo_count_reg_3_ ( 
    .D ( port3_i_port_fifo_N22 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_fifo_count_reg_clock_gate_port3_i_port_fifo_fifo_count_reg_32 ) , 
    .RSTB ( rst_n ) , .Q ( port3_i_port_fifo_fifo_count[3] ) , 
    .QN ( ctmn_6647 ) ) ;
SDFFARX1_HVT port3_i_port_fifo_rd_ptr_reg_1_ ( .D ( port3_i_port_fifo_N19 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( port3_i_port_fifo_rd_ptr[1] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_fifo_count_reg_2_ ( 
    .D ( port3_i_port_fifo_N23 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_fifo_count_reg_clock_gate_port3_i_port_fifo_fifo_count_reg_32 ) , 
    .RSTB ( rst_n ) , .Q ( port3_i_port_fifo_fifo_count[2] ) , 
    .QN ( ctmn_7065 ) ) ;
SDFFASX1_HVT port3_i_port_fifo_fifo_count_reg_1_ ( .D ( ctmn_7211 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_fifo_count_reg_clock_gate_port3_i_port_fifo_fifo_count_reg_32 ) , 
    .SETB ( rst_n ) , .QN ( port3_i_port_fifo_fifo_count[1] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_fifo_count_reg_0_ ( 
    .D ( port3_i_port_fifo_N25 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_fifo_count_reg ) , 
    .RSTB ( rst_n ) , .Q ( port3_i_port_fifo_fifo_count[0] ) , 
    .QN ( ctmn_7026 ) ) ;
SDFFARX1_HVT top_arb_i_mux_sel3_reg_1_ ( .D ( top_arb_i_N19 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( mux_sel3[1] ) , 
    .QN ( ctmn_6990 ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_14_ ( 
    .D ( port3_i_port_fifo_N27 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[14] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_13_ ( 
    .D ( port3_i_port_fifo_N28 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[13] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_12_ ( 
    .D ( port3_i_port_fifo_N29 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[12] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_11_ ( 
    .D ( port3_i_port_fifo_N30 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[11] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_10_ ( 
    .D ( port3_i_port_fifo_N31 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[10] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_9_ ( 
    .D ( port3_i_port_fifo_N32 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[9] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_8_ ( 
    .D ( port3_i_port_fifo_N33 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[8] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_7_ ( 
    .D ( port3_i_port_fifo_N34 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[7] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_6_ ( 
    .D ( port3_i_port_fifo_N35 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[6] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_5_ ( 
    .D ( port3_i_port_fifo_N36 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[5] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_4_ ( 
    .D ( port3_i_port_fifo_N37 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[4] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_3_ ( 
    .D ( port3_i_port_fifo_N38 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[3] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_2_ ( 
    .D ( port3_i_port_fifo_N39 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[2] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_1_ ( 
    .D ( port3_i_port_fifo_N40 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[1] ) ) ;
SDFFARX1_HVT port3_i_port_fifo_data_out_reg_0_ ( 
    .D ( port3_i_port_fifo_N41 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_data_out_reg ) , .RSTB ( rst_n ) , 
    .Q ( fifo_data_out3[0] ) ) ;
SDFFARX1_HVT top_arb_i_active0_reg ( .D ( top_arb_i_N23 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( clk ) , .RSTB ( rst_n ) , .Q ( active0 ) ) ;
AND2X1_RVT ctmi_7783 ( .A1 ( port0_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port0_i_port_fifo_fifo_count[0] ) , .Y ( ctmn_7041 ) ) ;
AOI22X1_RVT ctmi_8097 ( .A1 ( ctmn_7206 ) , .A2 ( ctmn_6839 ) , 
    .A3 ( phfnn_253 ) , .A4 ( phfnn_155 ) , .Y ( port0_i_port_fifo_N24 ) ) ;
OR2X1_RVT ctmi_8098 ( .A1 ( ctmn_7039 ) , .A2 ( ctmn_7041 ) , 
    .Y ( ctmn_7206 ) ) ;
NBUFFX4_HVT MXIOP_19 ( .A ( MXIOP_19_0 ) , .Y ( port0_target_out[0] ) ) ;
NBUFFX2_RVT MXIOP_20 ( .A ( MXIOP_20_0 ) , .Y ( port0_data_out[7] ) ) ;
NBUFFX4_HVT MXIOP_21 ( .A ( MXIOP_21_0 ) , .Y ( port0_data_out[6] ) ) ;
NBUFFX4_HVT MXIOP_22 ( .A ( MXIOP_22_0 ) , .Y ( port0_data_out[5] ) ) ;
NBUFFX4_HVT MXIOP_23 ( .A ( MXIOP_23_0 ) , .Y ( port0_data_out[4] ) ) ;
NBUFFX4_HVT MXIOP_24 ( .A ( MXIOP_24_0 ) , .Y ( port0_data_out[3] ) ) ;
NBUFFX4_HVT MXIOP_25 ( .A ( MXIOP_25_0 ) , .Y ( port0_data_out[2] ) ) ;
NBUFFX4_HVT MXIOP_26 ( .A ( MXIOP_26_0 ) , .Y ( port0_data_out[1] ) ) ;
NBUFFX4_HVT MXIOP_27 ( .A ( MXIOP_27_0 ) , .Y ( port0_data_out[0] ) ) ;
NBUFFX4_HVT MXIOP_28 ( .A ( MXIOP_28_0 ) , .Y ( port1_source_out[3] ) ) ;
NBUFFX4_HVT MXIOP_29 ( .A ( MXIOP_29_0 ) , .Y ( port1_source_out[2] ) ) ;
NBUFFX4_HVT MXIOP_30 ( .A ( MXIOP_30_0 ) , .Y ( port1_source_out[1] ) ) ;
NBUFFX4_HVT MXIOP_31 ( .A ( MXIOP_31_0 ) , .Y ( port1_source_out[0] ) ) ;
NBUFFX4_HVT MXIOP_32 ( .A ( MXIOP_32_0 ) , .Y ( port1_target_out[3] ) ) ;
NBUFFX4_HVT MXIOP_33 ( .A ( MXIOP_33_0 ) , .Y ( port1_target_out[2] ) ) ;
NBUFFX4_HVT MXIOP_34 ( .A ( MXIOP_34_0 ) , .Y ( port1_target_out[1] ) ) ;
NBUFFX4_HVT MXIOP_35 ( .A ( MXIOP_35_0 ) , .Y ( port1_target_out[0] ) ) ;
NBUFFX4_HVT MXIOP_36 ( .A ( MXIOP_36_0 ) , .Y ( port1_data_out[7] ) ) ;
NBUFFX4_HVT MXIOP_37 ( .A ( MXIOP_37_0 ) , .Y ( port1_data_out[6] ) ) ;
NBUFFX4_HVT MXIOP_38 ( .A ( MXIOP_38_0 ) , .Y ( port1_data_out[5] ) ) ;
NBUFFX4_HVT MXIOP_39 ( .A ( MXIOP_39_0 ) , .Y ( port1_data_out[4] ) ) ;
NBUFFX4_HVT MXIOP_40 ( .A ( MXIOP_40_0 ) , .Y ( port1_data_out[3] ) ) ;
NBUFFX4_HVT MXIOP_41 ( .A ( MXIOP_41_0 ) , .Y ( port1_data_out[2] ) ) ;
NBUFFX4_HVT MXIOP_42 ( .A ( MXIOP_42_0 ) , .Y ( port1_data_out[1] ) ) ;
NBUFFX4_HVT MXIOP_43 ( .A ( MXIOP_43_0 ) , .Y ( port1_data_out[0] ) ) ;
NBUFFX4_HVT MXIOP_44 ( .A ( MXIOP_44_0 ) , .Y ( port2_source_out[3] ) ) ;
NBUFFX4_HVT MXIOP_45 ( .A ( MXIOP_45_0 ) , .Y ( port2_source_out[2] ) ) ;
NBUFFX4_HVT MXIOP_46 ( .A ( MXIOP_46_0 ) , .Y ( port2_source_out[1] ) ) ;
NBUFFX4_HVT MXIOP_47 ( .A ( MXIOP_47_0 ) , .Y ( port2_source_out[0] ) ) ;
NBUFFX4_HVT MXIOP_48 ( .A ( MXIOP_48_0 ) , .Y ( port2_target_out[3] ) ) ;
NBUFFX4_HVT MXIOP_49 ( .A ( MXIOP_49_0 ) , .Y ( port2_target_out[2] ) ) ;
NBUFFX4_HVT MXIOP_50 ( .A ( MXIOP_50_0 ) , .Y ( port2_target_out[1] ) ) ;
NBUFFX4_HVT MXIOP_51 ( .A ( MXIOP_51_0 ) , .Y ( port2_target_out[0] ) ) ;
NBUFFX4_HVT MXIOP_52 ( .A ( MXIOP_52_0 ) , .Y ( port2_data_out[7] ) ) ;
NBUFFX4_HVT MXIOP_53 ( .A ( MXIOP_53_0 ) , .Y ( port2_data_out[6] ) ) ;
NBUFFX4_HVT MXIOP_54 ( .A ( MXIOP_54_0 ) , .Y ( port2_data_out[5] ) ) ;
NBUFFX4_HVT MXIOP_55 ( .A ( MXIOP_55_0 ) , .Y ( port2_data_out[4] ) ) ;
NBUFFX4_HVT MXIOP_56 ( .A ( MXIOP_56_0 ) , .Y ( port2_data_out[3] ) ) ;
NBUFFX4_HVT MXIOP_57 ( .A ( MXIOP_57_0 ) , .Y ( port2_data_out[2] ) ) ;
NBUFFX4_HVT MXIOP_58 ( .A ( MXIOP_58_0 ) , .Y ( port2_data_out[1] ) ) ;
NBUFFX4_HVT MXIOP_59 ( .A ( MXIOP_59_0 ) , .Y ( port2_data_out[0] ) ) ;
NBUFFX4_HVT MXIOP_60 ( .A ( MXIOP_60_0 ) , .Y ( port3_source_out[3] ) ) ;
NBUFFX4_HVT MXIOP_61 ( .A ( MXIOP_61_0 ) , .Y ( port3_source_out[2] ) ) ;
NBUFFX4_HVT MXIOP_62 ( .A ( MXIOP_62_0 ) , .Y ( port3_source_out[1] ) ) ;
NBUFFX4_HVT MXIOP_63 ( .A ( MXIOP_63_0 ) , .Y ( port3_source_out[0] ) ) ;
NBUFFX4_HVT MXIOP_64 ( .A ( MXIOP_64_0 ) , .Y ( port3_target_out[3] ) ) ;
NBUFFX4_HVT MXIOP_65 ( .A ( MXIOP_65_0 ) , .Y ( port3_target_out[2] ) ) ;
NBUFFX4_HVT MXIOP_66 ( .A ( MXIOP_66_0 ) , .Y ( port3_target_out[1] ) ) ;
NBUFFX4_HVT MXIOP_67 ( .A ( MXIOP_67_0 ) , .Y ( port3_target_out[0] ) ) ;
NBUFFX2_RVT MXIOP_68 ( .A ( MXIOP_68_0 ) , .Y ( port3_data_out[7] ) ) ;
NBUFFX4_HVT MXIOP_69 ( .A ( MXIOP_69_0 ) , .Y ( port3_data_out[6] ) ) ;
NBUFFX4_HVT MXIOP_70 ( .A ( MXIOP_70_0 ) , .Y ( port3_data_out[5] ) ) ;
NBUFFX4_HVT MXIOP_71 ( .A ( MXIOP_71_0 ) , .Y ( port3_data_out[4] ) ) ;
NBUFFX4_HVT MXIOP_72 ( .A ( MXIOP_72_0 ) , .Y ( port3_data_out[3] ) ) ;
NBUFFX4_HVT MXIOP_73 ( .A ( MXIOP_73_0 ) , .Y ( port3_data_out[2] ) ) ;
NBUFFX4_HVT MXIOP_74 ( .A ( MXIOP_74_0 ) , .Y ( port3_data_out[1] ) ) ;
NBUFFX4_HVT MXIOP_75 ( .A ( MXIOP_75_0 ) , .Y ( port3_data_out[0] ) ) ;
SDFFARX1_HVT port2_i_port_fifo_wr_ptr_reg_0_ ( .D ( port2_i_port_fifo_N16 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port2_i_port_fifo_wr_ptr_reg ) , .RSTB ( rst_n ) , 
    .Q ( port2_i_port_fifo_wr_ptr[0] ) , .QN ( port2_i_port_fifo_N16 ) ) ;
SDFFARX1_HVT port3_i_port_fifo_wr_ptr_reg_1_ ( .D ( port3_i_port_fifo_N15 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port3_i_port_fifo_wr_ptr_reg ) , .RSTB ( rst_n ) , 
    .Q ( port3_i_port_fifo_wr_ptr[1] ) ) ;
SDFFARX1_HVT port1_i_port_fifo_wr_ptr_reg_2_ ( .D ( port1_i_port_fifo_N14 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_wr_ptr_reg ) , .RSTB ( rst_n ) , 
    .Q ( port1_i_port_fifo_wr_ptr[2] ) , .QN ( ctmn_6954 ) ) ;
OR2X1_RVT ctmi_7161 ( .A1 ( port0_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_N20 ) , .Y ( ctmn_6599 ) ) ;
OR3X2_RVT ctmi_7196 ( .A1 ( port2_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6625 ) , 
    .Y ( ctmn_6630 ) ) ;
OR2X2_RVT ctmi_7179 ( .A1 ( port3_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6611 ) , .Y ( ctmn_6615 ) ) ;
OR3X2_RVT ctmi_7162 ( .A1 ( port0_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_rd_ptr[0] ) , 
    .A3 ( port0_i_port_fifo_rd_ptr[2] ) , .Y ( ctmn_6601 ) ) ;
OR2X2_RVT ctmi_7180 ( .A1 ( ctmn_6610 ) , .A2 ( ctmn_6616 ) , 
    .Y ( ctmn_6617 ) ) ;
OR2X2_RVT ctmi_7197 ( .A1 ( ctmn_6625 ) , .A2 ( ctmn_6631 ) , 
    .Y ( ctmn_6632 ) ) ;
OA221X1_RVT ctmi_7277 ( .A1 ( port1_i_port_fifo_mem[71] ) , 
    .A2 ( ctmn_6584 ) , .A3 ( ctmn_6587 ) , 
    .A4 ( port1_i_port_fifo_mem[87] ) , .A5 ( ctmn_6702_CDR1 ) , 
    .Y ( ctmn_6703_CDR1 ) ) ;
OA22X1_RVT ctmi_7278 ( .A1 ( ctmn_6591 ) , .A2 ( port1_i_port_fifo_mem[23] ) , 
    .A3 ( port1_i_port_fifo_mem[55] ) , .A4 ( ctmn_6590 ) , 
    .Y ( ctmn_6702_CDR1 ) ) ;
OA221X1_RVT ctmi_7318 ( .A1 ( port0_i_port_fifo_mem[36] ) , 
    .A2 ( ctmn_6603 ) , .A3 ( port0_i_port_fifo_mem[4] ) , .A4 ( ctmn_6601 ) , 
    .A5 ( ctmn_6736_CDR1 ) , .Y ( ctmn_6737 ) ) ;
OA221X1_RVT ctmi_7319 ( .A1 ( port0_i_port_fifo_mem[100] ) , 
    .A2 ( ctmn_6597 ) , .A3 ( ctmn_6606 ) , 
    .A4 ( port0_i_port_fifo_mem[52] ) , .A5 ( ctmn_6735_CDR1 ) , 
    .Y ( ctmn_6736_CDR1 ) ) ;
OA22X1_RVT ctmi_7320 ( .A1 ( ctmn_6605 ) , 
    .A2 ( port0_i_port_fifo_mem[116] ) , .A3 ( ctmn_6602 ) , 
    .A4 ( port0_i_port_fifo_mem[84] ) , .Y ( ctmn_6735_CDR1 ) ) ;
AO221X1_RVT ctmi_7354 ( .A1 ( phfnn_276 ) , .A2 ( ctmn_6645 ) , 
    .A3 ( phfnn_276 ) , .A4 ( phfnn_270 ) , .A5 ( phfnn_228 ) , 
    .Y ( ctmn_6764 ) ) ;
OA221X1_RVT ctmi_7355 ( .A1 ( ctmn_6726 ) , .A2 ( ctmn_6731 ) , 
    .A3 ( phfnn_281 ) , .A4 ( ctmn_6765 ) , .A5 ( ctmn_6770 ) , 
    .Y ( ctmn_6771 ) ) ;
OA221X1_RVT ctmi_7356 ( .A1 ( ctmn_6665 ) , .A2 ( ctmn_6668 ) , 
    .A3 ( ctmn_6695 ) , .A4 ( ctmn_6700 ) , .A5 ( ctmn_6769 ) , 
    .Y ( ctmn_6770 ) ) ;
NOR3X1_RVT ctmi_7357 ( .A1 ( ctmn_6767 ) , .A2 ( port2_i_current_state[0] ) , 
    .A3 ( ctmn_6768 ) , .Y ( ctmn_6769 ) ) ;
AND4X1_RVT ctmi_7359 ( .A1 ( ctmn_6665 ) , .A2 ( ctmn_6695 ) , 
    .A3 ( ctmn_6726 ) , .A4 ( phfnn_281 ) , .Y ( ctmn_6768 ) ) ;
OA22X1_RVT ctmi_7361 ( .A1 ( ctmn_6775 ) , .A2 ( phfnn_291 ) , 
    .A3 ( phfnn_288 ) , .A4 ( phfnn_290 ) , .Y ( ctmn_6793 ) ) ;
NAND2X1_RVT ctmi_7214 ( .A1 ( port3_i_port_fifo_N36 ) , .A2 ( ctmn_6648 ) , 
    .Y ( ctmn_6649 ) ) ;
NAND2X1_RVT ctmi_7215 ( .A1 ( ctmn_6646 ) , .A2 ( ctmn_6647 ) , 
    .Y ( ctmn_6648 ) ) ;
NOR3X1_RVT ctmi_7216 ( .A1 ( port3_i_port_fifo_fifo_count[1] ) , 
    .A2 ( HFSNET_3 ) , .A3 ( port3_i_port_fifo_fifo_count[2] ) , 
    .Y ( ctmn_6646 ) ) ;
NAND2X2_RVT ctmi_7219 ( .A1 ( ctmn_6650 ) , .A2 ( ctmn_6651 ) , 
    .Y ( ctmn_6652 ) ) ;
NOR3X1_RVT ctmi_7220 ( .A1 ( port0_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port0_i_port_fifo_fifo_count[0] ) , 
    .A3 ( port0_i_port_fifo_fifo_count[2] ) , .Y ( ctmn_6650 ) ) ;
NAND2X0_RVT ctmi_7222 ( .A1 ( top_arb_i_common_ptr[0] ) , .A2 ( ctmn_6645 ) , 
    .Y ( ctmn_6654 ) ) ;
AO221X1_RVT ctmi_7224 ( .A1 ( HFSNET_6 ) , .A2 ( phfnn_274 ) , 
    .A3 ( ctmn_6645 ) , .A4 ( top_arb_i_common_ptr[0] ) , .A5 ( ctmn_6661 ) , 
    .Y ( ctmn_6662 ) ) ;
AOI21X1_RVT ctmi_7225 ( .A1 ( port2_i_port_fifo_N36 ) , .A2 ( ctmn_6660 ) , 
    .A3 ( HFSNET_6 ) , .Y ( ctmn_6661 ) ) ;
NAND2X0_RVT ctmi_7181 ( .A1 ( port3_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_rd_ptr[0] ) , .Y ( ctmn_6616 ) ) ;
OA221X1_RVT ctmi_7182 ( .A1 ( port3_i_port_fifo_mem[37] ) , 
    .A2 ( ctmn_6618 ) , .A3 ( ctmn_6619 ) , 
    .A4 ( port3_i_port_fifo_mem[69] ) , .A5 ( ctmn_6622 ) , .Y ( ctmn_6623 ) ) ;
OR2X2_RVT ctmi_7183 ( .A1 ( port3_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6613 ) , .Y ( ctmn_6618 ) ) ;
OR3X2_RVT ctmi_7184 ( .A1 ( port3_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6610 ) , 
    .Y ( ctmn_6619 ) ) ;
OA22X1_RVT ctmi_7185 ( .A1 ( port3_i_port_fifo_mem[53] ) , .A2 ( ctmn_6620 ) , 
    .A3 ( ctmn_6621 ) , .A4 ( port3_i_port_fifo_mem[5] ) , .Y ( ctmn_6622 ) ) ;
NAND3X2_RVT ctmi_7186 ( .A1 ( port3_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6610 ) , 
    .Y ( ctmn_6620 ) ) ;
OR3X2_RVT ctmi_7187 ( .A1 ( port3_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port3_i_port_fifo_rd_ptr[0] ) , 
    .A3 ( port3_i_port_fifo_rd_ptr[2] ) , .Y ( ctmn_6621 ) ) ;
NAND2X0_RVT ctmi_7198 ( .A1 ( port2_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_rd_ptr[0] ) , .Y ( ctmn_6631 ) ) ;
OA221X1_RVT ctmi_7199 ( .A1 ( ctmn_6632 ) , 
    .A2 ( port2_i_port_fifo_mem[117] ) , .A3 ( port2_i_port_fifo_mem[69] ) , 
    .A4 ( ctmn_6630 ) , .A5 ( ctmn_6637_CDR1 ) , .Y ( ctmn_6638_CDR1 ) ) ;
NAND3X2_RVT ctmi_7200 ( .A1 ( port2_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6625 ) , 
    .Y ( ctmn_6633 ) ) ;
OR3X2_RVT ctmi_7201 ( .A1 ( port2_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port2_i_port_fifo_rd_ptr[0] ) , 
    .A3 ( port2_i_port_fifo_rd_ptr[2] ) , .Y ( ctmn_6634 ) ) ;
OA22X1_RVT ctmi_7202 ( .A1 ( port2_i_port_fifo_mem[53] ) , .A2 ( ctmn_6633 ) , 
    .A3 ( port2_i_port_fifo_mem[21] ) , .A4 ( ctmn_6635 ) , 
    .Y ( ctmn_6637_CDR1 ) ) ;
OR2X2_RVT ctmi_7203 ( .A1 ( port2_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6626 ) , .Y ( ctmn_6635 ) ) ;
OR2X2_RVT ctmi_7204 ( .A1 ( port2_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6628 ) , .Y ( ctmn_6636 ) ) ;
AND2X1_RVT ctmi_7226 ( .A1 ( top_arb_i_N22 ) , .A2 ( ctmn_6659 ) , 
    .Y ( ctmn_6660 ) ) ;
NAND2X1_RVT ctmi_7227 ( .A1 ( ctmn_6657 ) , .A2 ( ctmn_6658 ) , 
    .Y ( ctmn_6659 ) ) ;
NOR3X1_RVT ctmi_7228 ( .A1 ( port2_i_port_fifo_fifo_count[1] ) , 
    .A2 ( port2_i_port_fifo_fifo_count[0] ) , 
    .A3 ( port2_i_port_fifo_fifo_count[2] ) , .Y ( ctmn_6657 ) ) ;
AO21X1_RVT ctmi_7232 ( .A1 ( ctmn_6643 ) , .A2 ( ctmn_6665 ) , 
    .A3 ( ctmn_6661 ) , .Y ( ctmn_6666 ) ) ;
NAND2X0_RVT ctmi_7233 ( .A1 ( port2_i_port_fifo_N36 ) , .A2 ( ctmn_6659 ) , 
    .Y ( ctmn_6665 ) ) ;
AO22X1_RVT ctmi_7236 ( .A1 ( top_arb_i_common_ptr[1] ) , 
    .A2 ( top_arb_i_N22 ) , .A3 ( ctmn_6643 ) , .A4 ( ctmn_6656 ) , 
    .Y ( ctmn_6668 ) ) ;
OA221X1_RVT ctmi_7239 ( .A1 ( port1_i_port_fifo_mem[38] ) , .A2 ( HFSNET_7 ) , 
    .A3 ( ctmn_6589 ) , .A4 ( port1_i_port_fifo_mem[118] ) , 
    .A5 ( ctmn_6670_CDR1 ) , .Y ( ctmn_6671 ) ) ;
OA221X1_RVT ctmi_7163 ( .A1 ( ctmn_6603 ) , 
    .A2 ( port0_i_port_fifo_mem[37] ) , .A3 ( ctmn_6606 ) , 
    .A4 ( port0_i_port_fifo_mem[53] ) , .A5 ( ctmn_6607_CDR1 ) , 
    .Y ( ctmn_6608 ) ) ;
OR2X2_RVT ctmi_7164 ( .A1 ( ctmn_6595 ) , .A2 ( ctmn_6599 ) , 
    .Y ( ctmn_6602 ) ) ;
OR2X2_RVT ctmi_7165 ( .A1 ( port0_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6596 ) , .Y ( ctmn_6603 ) ) ;
OA22X1_RVT ctmi_7166 ( .A1 ( port0_i_port_fifo_mem[85] ) , .A2 ( ctmn_6602 ) , 
    .A3 ( port0_i_port_fifo_mem[117] ) , .A4 ( ctmn_6605 ) , 
    .Y ( ctmn_6607_CDR1 ) ) ;
OR2X2_RVT ctmi_7167 ( .A1 ( ctmn_6595 ) , .A2 ( ctmn_6604 ) , 
    .Y ( ctmn_6605 ) ) ;
NAND2X0_RVT ctmi_7168 ( .A1 ( port0_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_rd_ptr[0] ) , .Y ( ctmn_6604 ) ) ;
NAND3X2_RVT ctmi_7169 ( .A1 ( port0_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port0_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6595 ) , 
    .Y ( ctmn_6606 ) ) ;
OA22X1_RVT ctmi_7240 ( .A1 ( port1_i_port_fifo_mem[86] ) , .A2 ( ctmn_6587 ) , 
    .A3 ( ctmn_6590 ) , .A4 ( port1_i_port_fifo_mem[54] ) , 
    .Y ( ctmn_6670_CDR1 ) ) ;
NAND3X0_RVT ctmi_7362 ( .A1 ( ctmn_6774 ) , .A2 ( port3_i_port_fifo_N37 ) , 
    .A3 ( ctmn_6648 ) , .Y ( ctmn_6775 ) ) ;
AND2X1_RVT ctmi_7363 ( .A1 ( ctmn_6755 ) , .A2 ( ctmn_6773 ) , 
    .Y ( ctmn_6774 ) ) ;
AO221X1_RVT ctmi_7364 ( .A1 ( ctmn_6645 ) , .A2 ( phfnn_276 ) , 
    .A3 ( top_arb_i_common_ptr[1] ) , .A4 ( phfnn_281 ) , 
    .A5 ( top_arb_i_common_ptr[0] ) , .Y ( ctmn_6773 ) ) ;
OA221X1_RVT ctmi_7365 ( .A1 ( ctmn_6776 ) , .A2 ( ctmn_6649 ) , 
    .A3 ( phfnn_270 ) , .A4 ( ctmn_6774 ) , .A5 ( ctmn_6780 ) , 
    .Y ( ctmn_6781 ) ) ;
AND4X1_RVT ctmi_7367 ( .A1 ( ctmn_6777 ) , .A2 ( ctmn_6778 ) , 
    .A3 ( port3_i_current_state[1] ) , .A4 ( ctmn_6779 ) , .Y ( ctmn_6780 ) ) ;
NAND4X0_RVT ctmi_7369 ( .A1 ( ctmn_6649 ) , .A2 ( ctmn_6690 ) , 
    .A3 ( ctmn_6721 ) , .A4 ( phfnn_270 ) , .Y ( ctmn_6778 ) ) ;
OA22X1_RVT ctmi_7370 ( .A1 ( ctmn_6698 ) , .A2 ( ctmn_6690 ) , 
    .A3 ( ctmn_6721 ) , .A4 ( ctmn_6729 ) , .Y ( ctmn_6779 ) ) ;
OA221X1_RVT ctmi_7374 ( .A1 ( ctmn_6785 ) , .A2 ( ctmn_6643 ) , 
    .A3 ( phfnn_279 ) , .A4 ( ctmn_6786 ) , .A5 ( ctmn_6790 ) , 
    .Y ( ctmn_6791 ) ) ;
AND2X1_RVT ctmi_7375 ( .A1 ( ctmn_6662 ) , .A2 ( ctmn_6656 ) , 
    .Y ( ctmn_6785 ) ) ;
OA221X1_RVT ctmi_7377 ( .A1 ( ctmn_6693 ) , .A2 ( phfnn_280 ) , 
    .A3 ( ctmn_6714 ) , .A4 ( ctmn_6724 ) , .A5 ( ctmn_6789 ) , 
    .Y ( ctmn_6790 ) ) ;
NOR3X1_RVT ctmi_7378 ( .A1 ( ctmn_6787 ) , .A2 ( port1_i_current_state[0] ) , 
    .A3 ( ctmn_6788 ) , .Y ( ctmn_6789 ) ) ;
AND4X1_RVT ctmi_7380 ( .A1 ( ctmn_6643 ) , .A2 ( phfnn_280 ) , 
    .A3 ( ctmn_6714 ) , .A4 ( phfnn_279 ) , .Y ( ctmn_6788 ) ) ;
SDFFX1_RVT port0_i_port_fifo_mem_reg_7__15_ ( .D ( port0_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port0_i_port_fifo_mem_reg_7 ) , 
    .Q ( port0_i_port_fifo_mem[127] ) ) ;
NAND2X0_RVT ctmi_7136 ( .A1 ( port1_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_N20 ) , .Y ( ctmn_6580 ) ) ;
OR2X2_RVT ctmi_7137 ( .A1 ( ctmn_6582 ) , .A2 ( ctmn_6580 ) , 
    .Y ( ctmn_6583 ) ) ;
OA221X1_RVT ctmi_7139 ( .A1 ( ctmn_6585 ) , .A2 ( port1_i_port_fifo_mem[5] ) , 
    .A3 ( port1_i_port_fifo_mem[69] ) , .A4 ( ctmn_6584 ) , 
    .A5 ( ctmn_6593_CDR1 ) , .Y ( ctmn_6594 ) ) ;
OR3X2_RVT ctmi_7140 ( .A1 ( port1_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6582 ) , 
    .Y ( ctmn_6584 ) ) ;
OR3X2_RVT ctmi_7141 ( .A1 ( port1_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_rd_ptr[0] ) , 
    .A3 ( port1_i_port_fifo_rd_ptr[2] ) , .Y ( ctmn_6585 ) ) ;
OA221X1_RVT ctmi_7142 ( .A1 ( port1_i_port_fifo_mem[85] ) , 
    .A2 ( ctmn_6587 ) , .A3 ( ctmn_6589 ) , 
    .A4 ( port1_i_port_fifo_mem[117] ) , .A5 ( ctmn_6592_CDR1 ) , 
    .Y ( ctmn_6593_CDR1 ) ) ;
OR2X2_RVT ctmi_7143 ( .A1 ( ctmn_6582 ) , .A2 ( ctmn_6586 ) , 
    .Y ( ctmn_6587 ) ) ;
OR2X1_RVT ctmi_7144 ( .A1 ( port1_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_N20 ) , .Y ( ctmn_6586 ) ) ;
OR2X2_RVT ctmi_7145 ( .A1 ( ctmn_6582 ) , .A2 ( ctmn_6588 ) , 
    .Y ( ctmn_6589 ) ) ;
NAND2X0_RVT ctmi_7146 ( .A1 ( port1_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_rd_ptr[0] ) , .Y ( ctmn_6588 ) ) ;
OA22X1_RVT ctmi_7147 ( .A1 ( ctmn_6591 ) , .A2 ( port1_i_port_fifo_mem[21] ) , 
    .A3 ( port1_i_port_fifo_mem[53] ) , .A4 ( ctmn_6590 ) , 
    .Y ( ctmn_6592_CDR1 ) ) ;
NAND3X2_RVT ctmi_7148 ( .A1 ( port1_i_port_fifo_rd_ptr[1] ) , 
    .A2 ( port1_i_port_fifo_rd_ptr[0] ) , .A3 ( ctmn_6582 ) , 
    .Y ( ctmn_6590 ) ) ;
OR2X2_RVT ctmi_7149 ( .A1 ( port1_i_port_fifo_rd_ptr[2] ) , 
    .A2 ( ctmn_6586 ) , .Y ( ctmn_6591 ) ) ;
SDFFX1_RVT port1_i_port_fifo_mem_reg_7__15_ ( .D ( port1_data_in[7] ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( clk_clock_gate_port1_i_port_fifo_mem_reg_14 ) , 
    .Q ( port1_i_port_fifo_mem[127] ) ) ;
endmodule


