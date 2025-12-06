verdiFindBar -show
simSetSimulator "-vcssv" -exec \
           "/project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/simv" \
           -args
debImport "-dbdir" \
          "/project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/simv.daidir"
debLoadSimResult \
           /project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/novas.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "0" "24" "1920" "932"
verdiFindBar -show -win nWave_2
verdiWindowResize -win $_Verdi_1 "0" "24" "1920" "932"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/_vcs_unit__4084447049"
verdiSetActWin -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/port1"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut/mux1_i"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/port0"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut/port0"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut/port0_i"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut/port0_i/port_fifo"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut/port0_i"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut/port1"
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_overflow_tb/dut/port0_i/fifo_empty} -height 16 \
{/switch_overflow_tb/dut/port0_i/fifo_full} -height 16 \
{/switch_overflow_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_overflow_tb/dut/port0_i/fifo_empty} -height 16 \
{/switch_overflow_tb/dut/port0_i/fifo_full} -height 16 \
{/switch_overflow_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/_vcs_unit__4084447049"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut/port0_i"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut/port1"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut/mux1_i"
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_overflow_tb/dut/port0_i/fifo_empty} -height 16 \
{/switch_overflow_tb/dut/port0_i/fifo_full} -height 16 \
{/switch_overflow_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/switch_overflow_tb/dut/mux1_i/mux_sel\[1:0\]} -height 16 \
{/switch_overflow_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_overflow_tb/dut/port0_i/fifo_empty} -height 16 \
{/switch_overflow_tb/dut/port0_i/fifo_full} -height 16 \
{/switch_overflow_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/switch_overflow_tb/dut/mux1_i/mux_sel\[1:0\]} -height 16 \
{/switch_overflow_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetPosition -win $_nWave2 {("G2" 1)}
wvGetSignalClose -win $_nWave2
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 108.000735 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 119.213926 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 126.886109 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 137.509132 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 155.214171 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 164.656858 -snap {("G1" 3)}
wvScrollDown -win $_nWave2 0
wvZoomIn -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/_vcs_unit__4084447049"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut/port0_i"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut/port1"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut/mux1_i"
wvGetSignalSetScope -win $_nWave2 "/switch_overflow_tb/dut/port0_i"
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_overflow_tb/dut/port0_i/fifo_empty} -height 16 \
{/switch_overflow_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_overflow_tb/dut/port0_i/fifo_full} -height 16 \
{/switch_overflow_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/switch_overflow_tb/dut/mux1_i/mux_sel\[1:0\]} -height 16 \
{/switch_overflow_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_overflow_tb/dut/port0_i/fifo_empty} -height 16 \
{/switch_overflow_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_overflow_tb/dut/port0_i/fifo_full} -height 16 \
{/switch_overflow_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/switch_overflow_tb/dut/mux1_i/mux_sel\[1:0\]} -height 16 \
{/switch_overflow_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvGetSignalClose -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 158.344773 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 165.064507 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 175.582352 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 185.223710 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 195.303311 -snap {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
debReload
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetCursor -win $_nWave2 99.762194 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 111.302607 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 123.865588 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 131.461810 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 139.496274 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 150.452362 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 161.992775 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 171.926295 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 144.235301 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 163.664097 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 174.474104 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 120.570150 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 128.604615 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 140.583272 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 150.078548 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 160.596393 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 170.237750 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 181.193838 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 192.588170 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 202.813852 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 101.871760 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 109.175819 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 202.521690 -snap {("G1" 4)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debReload
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
debReload
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 324.601994 -snap {("G3" 0)}
debReload
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   wvScrollDown -win $_nWave3 1
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
debReload
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvSelectSignal -win $_nWave3 {( "port 0" 1 )} 
wvSelectGroup -win $_nWave3 {port 2}
wvSelectSignal -win $_nWave3 {( "port 2" 1 )} 
wvSelectGroup -win $_nWave3 {port 2}
wvSelectGroup -win $_nWave3 {port 2}
wvSelectSignal -win $_nWave3 {( "port 2" 2 )} 
wvSelectSignal -win $_nWave3 {( "port 2" 1 2 )} 
wvSelectSignal -win $_nWave3 {( "port 2" 1 2 )} 
wvScrollUp -win $_nWave3 4
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "port 3 out" 1 )} 
wvGetSignalOpen -win $_nWave3
wvSetPosition -win $_nWave3 {("port 3 out" 2)}
wvSetPosition -win $_nWave3 {("port 3 out" 2)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"port 3 out" \
{/switch_collision_tb/dut/port3_i/clk} -height 16 -color ID_GREEN5 \
{/switch_collision_tb/dut/rst_n} -height 16 \
{/switch_collision_tb/dut/mux3_i/mux_sel\[1:0\]} -height 16 -color ID_GREEN5 \
}
wvAddSignal -win $_nWave3 -group {"port 3 in" \
{/switch_collision_tb/dut/port3_i/current_state\[1:0\]} -height 16 -color ID_CYAN5 \
{/switch_collision_tb/dut/port3_i/data_in\[7:0\]} -height 16 -color ID_CYAN5 \
{/switch_collision_tb/dut/port3_i/header_out\[7:0\]} -height 16 \
{/switch_collision_tb/dut/mux3_i/mux_sel\[1:0\]} -height 16 -color ID_CYAN5 \
{/switch_collision_tb/dut/mux3_i/arb_active} -height 16 \
{/switch_collision_tb/dut/port3_i/grant} -height 16 \
{/switch_collision_tb/dut/mux3_i/data_out\[7:0\]} -height 16 -color ID_CYAN5 \
}
wvAddSignal -win $_nWave3 -group {"port 1 in" \
{/switch_collision_tb/dut/port1_i/current_state\[1:0\]} -height 16 -color ID_YELLOW5 \
{/switch_collision_tb/dut/port1_i/data_in\[7:0\]} -height 16 -color ID_YELLOW5 \
{/switch_collision_tb/dut/mux1_i/mux_sel\[1:0\]} -height 16 \
{/switch_collision_tb/dut/mux1_i/arb_active} -height 16 \
{/switch_collision_tb/dut/port1_i/grant} -height 16 \
{/switch_collision_tb/dut/mux1_i/data_out\[7:0\]} -height 16 -color ID_YELLOW5 \
}
wvAddSignal -win $_nWave3 -group {"port 0" \
{/switch_collision_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"port 2" \
{/switch_collision_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
{/switch_collision_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G6" \
{/switch_collision_tb/dut/top_arb_i/port_reqs\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr0\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr1\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr2\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr3\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out2\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out2\[3\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out2\[2\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out2\[1\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out2\[0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out1\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out0\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out3\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out0\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out0\[3\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out0\[2\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out0\[1\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out0\[0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out1\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out2\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out3\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G7" \
}
wvSelectSignal -win $_nWave3 {( "port 3 out" 2 )} 
wvSetPosition -win $_nWave3 {("port 3 out" 2)}
wvSetPosition -win $_nWave3 {("port 3 out" 2)}
wvSetPosition -win $_nWave3 {("port 3 out" 2)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"port 3 out" \
{/switch_collision_tb/dut/port3_i/clk} -height 16 -color ID_GREEN5 \
{/switch_collision_tb/dut/rst_n} -height 16 \
{/switch_collision_tb/dut/mux3_i/mux_sel\[1:0\]} -height 16 -color ID_GREEN5 \
}
wvAddSignal -win $_nWave3 -group {"port 3 in" \
{/switch_collision_tb/dut/port3_i/current_state\[1:0\]} -height 16 -color ID_CYAN5 \
{/switch_collision_tb/dut/port3_i/data_in\[7:0\]} -height 16 -color ID_CYAN5 \
{/switch_collision_tb/dut/port3_i/header_out\[7:0\]} -height 16 \
{/switch_collision_tb/dut/mux3_i/mux_sel\[1:0\]} -height 16 -color ID_CYAN5 \
{/switch_collision_tb/dut/mux3_i/arb_active} -height 16 \
{/switch_collision_tb/dut/port3_i/grant} -height 16 \
{/switch_collision_tb/dut/mux3_i/data_out\[7:0\]} -height 16 -color ID_CYAN5 \
}
wvAddSignal -win $_nWave3 -group {"port 1 in" \
{/switch_collision_tb/dut/port1_i/current_state\[1:0\]} -height 16 -color ID_YELLOW5 \
{/switch_collision_tb/dut/port1_i/data_in\[7:0\]} -height 16 -color ID_YELLOW5 \
{/switch_collision_tb/dut/mux1_i/mux_sel\[1:0\]} -height 16 \
{/switch_collision_tb/dut/mux1_i/arb_active} -height 16 \
{/switch_collision_tb/dut/port1_i/grant} -height 16 \
{/switch_collision_tb/dut/mux1_i/data_out\[7:0\]} -height 16 -color ID_YELLOW5 \
}
wvAddSignal -win $_nWave3 -group {"port 0" \
{/switch_collision_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"port 2" \
{/switch_collision_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
{/switch_collision_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G6" \
{/switch_collision_tb/dut/top_arb_i/port_reqs\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr0\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr1\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr2\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr3\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out2\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out2\[3\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out2\[2\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out2\[1\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out2\[0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out1\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out0\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out3\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out0\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out0\[3\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out0\[2\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out0\[1\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out0\[0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out1\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out2\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out3\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G7" \
}
wvSelectSignal -win $_nWave3 {( "port 3 out" 2 )} 
wvSetPosition -win $_nWave3 {("port 3 out" 2)}
wvGetSignalClose -win $_nWave3
wvScrollUp -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "port 3 out" 3 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("port 3 out" 2)}
wvSelectSignal -win $_nWave3 {( "port 3 in" 1 )} 
wvSelectSignal -win $_nWave3 {( "port 1 in" 1 )} 
wvSelectSignal -win $_nWave3 {( "port 3 in" 2 )} 
wvSelectSignal -win $_nWave3 {( "port 1 in" 2 )} 
wvSelectSignal -win $_nWave3 {( "port 3 in" 3 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("port 3 out" 2)}
wvSelectSignal -win $_nWave3 {( "port 3 in" 2 )} 
wvSelectSignal -win $_nWave3 {( "port 3 in" 3 )} 
wvSelectSignal -win $_nWave3 {( "port 3 in" 4 )} 
wvSelectSignal -win $_nWave3 {( "port 3 in" 5 )} 
wvSelectSignal -win $_nWave3 {( "port 3 in" 6 )} 
wvSelectSignal -win $_nWave3 {( "port 1 in" 1 )} 
wvSelectSignal -win $_nWave3 {( "port 1 in" 2 )} 
wvSelectSignal -win $_nWave3 {( "port 1 in" 3 )} 
wvSelectSignal -win $_nWave3 {( "port 1 in" 4 )} 
wvSelectSignal -win $_nWave3 {( "port 1 in" 5 )} 
wvSelectSignal -win $_nWave3 {( "port 1 in" 6 )} 
wvSelectGroup -win $_nWave3 {port 0}
srcHBSelect "switch_collision_tb.dut.port0_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_collision_tb.dut.port0_i" -win $_nTrace1
srcSetScope "switch_collision_tb.dut.port0_i" -delim "." -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.port0_i" -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "port 3 out" 2 )} 
verdiSetActWin -win $_nWave3
wvSelectGroup -win $_nWave3 {port 3 in}
srcSignalViewSelect "switch_collision_tb.dut.port0_i.current_state\[1:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
wvSetPosition -win $_nWave3 {("port 3 in" 1)}
wvSetPosition -win $_nWave3 {("port 3 in" 3)}
wvSetPosition -win $_nWave3 {("port 3 in" 5)}
wvSetPosition -win $_nWave3 {("port 3 in" 6)}
verdiSetActWin -win $_nWave3
wvSetPosition -win $_nWave3 {("port 1 in" 0)}
wvSetPosition -win $_nWave3 {("port 1 in" 1)}
wvSetPosition -win $_nWave3 {("port 1 in" 2)}
wvSetPosition -win $_nWave3 {("port 1 in" 3)}
wvSetPosition -win $_nWave3 {("port 1 in" 6)}
wvSetPosition -win $_nWave3 {("port 0" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("port 0" 1)}
srcSignalViewSelect "switch_collision_tb.dut.port0_i.data_in\[7:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
wvScrollDown -win $_nWave3 1
srcHBSelect "switch_collision_tb.dut.mux0_i" -win $_nTrace1
srcSetScope "switch_collision_tb.dut.mux0_i" -delim "." -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.mux0_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalViewSelect "switch_collision_tb.dut.mux0_i.mux_sel\[1:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "switch_collision_tb.dut.mux0_i.arb_active"
srcSignalViewAddSelectedToWave
srcHBSelect "switch_collision_tb.dut.port0_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_collision_tb.dut.port0_i" -win $_nTrace1
srcSetScope "switch_collision_tb.dut.port0_i" -delim "." -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.port0_i" -win $_nTrace1
srcSignalViewSelect "switch_collision_tb.dut.port0_i.grant"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
wvScrollDown -win $_nWave3 2
wvSelectSignal -win $_nWave3 {( "port 0" 6 )} 
verdiSetActWin -win $_nWave3
wvScrollDown -win $_nWave3 3
wvSelectGroup -win $_nWave3 {port 2}
wvSelectSignal -win $_nWave3 {( "port 2" 2 )} 
wvSetPosition -win $_nWave3 {("port 2" 1)}
wvSetPosition -win $_nWave3 {("port 2" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("port 2" 0)}
wvSetPosition -win $_nWave3 {("port 2" 1)}
srcHBSelect "switch_collision_tb.dut.port1_i" -win $_nTrace1
srcSetScope "switch_collision_tb.dut.port1_i" -delim "." -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.port1_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_collision_tb.dut.port2_i" -win $_nTrace1
srcSetScope "switch_collision_tb.dut.port2_i" -delim "." -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.port2_i" -win $_nTrace1
srcSignalViewSelect "switch_collision_tb.dut.port2_i.data_in\[7:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcHBSelect "switch_collision_tb.dut.mux2_i" -win $_nTrace1
srcSetScope "switch_collision_tb.dut.mux2_i" -delim "." -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.mux2_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalViewSelect "switch_collision_tb.dut.mux2_i.mux_sel\[1:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "switch_collision_tb.dut.mux2_i.arb_active"
srcSignalViewAddSelectedToWave
srcHBSelect "switch_collision_tb.dut.port2_i" -win $_nTrace1
srcSetScope "switch_collision_tb.dut.port2_i" -delim "." -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.port2_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalViewSelect "switch_collision_tb.dut.port2_i.grant"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
wvScrollDown -win $_nWave3 2
wvScrollUp -win $_nWave3 6
wvScrollUp -win $_nWave3 5
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "port 3 out" 2 )} 
verdiSetActWin -win $_nWave3
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("port 2" 6)}
wvSetPosition -win $_nWave3 {("port 2" 5)}
wvSelectGroup -win $_nWave3 {port 0}
wvSetPosition -win $_nWave3 {("port 1 in" 6)}
wvSetPosition -win $_nWave3 {("port 1 in" 4)}
wvSetPosition -win $_nWave3 {("port 1 in" 2)}
wvSetPosition -win $_nWave3 {("port 3 in" 5)}
wvSetPosition -win $_nWave3 {("port 3 in" 3)}
wvSetPosition -win $_nWave3 {("port 3 in" 0)}
wvSetPosition -win $_nWave3 {("port 3 out" 1)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("port 3 out" 1)}
wvSelectGroup -win $_nWave3 {port 1 in}
wvSelectSignal -win $_nWave3 {( "port 3 in" 5 )} 
wvSelectGroup -win $_nWave3 {port 1 in}
wvSetPosition -win $_nWave3 {("port 3 in" 6)}
wvSetPosition -win $_nWave3 {("port 3 in" 5)}
wvSetPosition -win $_nWave3 {("port 3 in" 2)}
wvSetPosition -win $_nWave3 {("port 3 in" 0)}
wvSetPosition -win $_nWave3 {("port 0" 6)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("port 0" 6)}
wvSelectGroup -win $_nWave3 {port 2}
wvSetPosition -win $_nWave3 {("port 3 in" 6)}
wvSetPosition -win $_nWave3 {("port 3 in" 3)}
wvSetPosition -win $_nWave3 {("port 3 in" 2)}
wvSetPosition -win $_nWave3 {("port 3 in" 1)}
wvSetPosition -win $_nWave3 {("port 1 in" 6)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("port 1 in" 6)}
wvScrollDown -win $_nWave3 1
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectGroup -win $_nWave3 {G6}
wvScrollDown -win $_nWave3 0
wvSetCursor -win $_nWave3 666.302928 -snap {("G7" 0)}
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "port 1 in" 1 )} 
wvSelectSignal -win $_nWave3 {( "port 1 in" 1 2 3 4 5 6 )} 
wvChangeDisplayAttr -win $_nWave3 -c ID_YELLOW5 -lw 0 -ls solid
wvSelectSignal -win $_nWave3 {( "port 2" 1 )} 
wvSelectSignal -win $_nWave3 {( "port 2" 1 2 3 4 5 6 )} 
wvChangeDisplayAttr -win $_nWave3 -c ID_PURPLE5 -lw 1 -ls solid
wvSelectSignal -win $_nWave3 {( "port 0" 1 )} 
wvSelectSignal -win $_nWave3 {( "port 0" 1 2 3 4 5 6 )} 
wvChangeDisplayAttr -win $_nWave3 -c ID_GREEN6 -lw 1 -ls solid
wvSelectGroup -win $_nWave3 {port 3 out}
wvSelectSignal -win $_nWave3 {( "port 3 out" 1 )} 
wvChangeDisplayAttr -win $_nWave3 -c ID_BLUE5 -lw 1 -ls solid
wvSetCursor -win $_nWave3 609.666601 -snap {("G7" 0)}
wvSetCursor -win $_nWave3 622.354224 -snap {("G7" 0)}
wvSelectGroup -win $_nWave3 {port 3 out}
debSaveSession \
           /project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/signals/allports.ses \
           -keynote \
           {invoke directory: /project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel
command line: -elab /project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/simv.daidir/kdb.elab++ -ba 
current trace scope: switch_collision_tb.dut.port2_i
memo:} \
           -saveDB on
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "port 0" 2 )} 
wvSetCursor -win $_nWave3 617.119471 -snap {("G7" 0)}
wvSelectSignal -win $_nWave3 {( "port 0" 2 )} 
wvSetPosition -win $_nWave3 {("port 0" 2)}
wvExpandBus -win $_nWave3
wvSetPosition -win $_nWave3 {("port 1 in" 6)}
wvSelectSignal -win $_nWave3 {( "port 0" 2 )} 
wvSetPosition -win $_nWave3 {("port 0" 2)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("port 0" 2)}
wvSetPosition -win $_nWave3 {("port 1 in" 6)}
wvSelectSignal -win $_nWave3 {( "port 0" 2 )} 
wvSelectGroup -win $_nWave3 {port 3 out}
wvSelectSignal -win $_nWave3 {( "port 0" 1 )} 
wvSelectSignal -win $_nWave3 {( "port 0" 1 2 3 4 5 6 )} 
wvChangeDisplayAttr -win $_nWave3 -c ID_CYAN6 -lw 1 -ls solid
wvSetCursor -win $_nWave3 639.921701 -snap {("G7" 0)}
wvSetCursor -win $_nWave3 592.276573 -snap {("port 1 in" 1)}
wvSelectSignal -win $_nWave3 {( "port 0" 1 )} 
wvSelectGroup -win $_nWave3 {port 3 out}
wvSelectSignal -win $_nWave3 {( "port 0" 1 )} 
wvSelectSignal -win $_nWave3 {( "port 0" 1 2 3 4 5 6 )} 
wvChangeDisplayAttr -win $_nWave3 -default
wvSelectSignal -win $_nWave3 {( "port 1 in" 1 )} 
wvSelectSignal -win $_nWave3 {( "port 1 in" 1 2 3 4 5 6 )} {( "port 2" 1 2 3 4 \
           5 6 )} {( "port 3 in" 1 2 3 4 5 6 )} 
wvChangeDisplayAttr -win $_nWave3 -default
wvSetCursor -win $_nWave3 629.274745 -snap {("G7" 0)}
wvSelectSignal -win $_nWave3 {( "port 1 in" 1 )} 
wvSelectSignal -win $_nWave3 {( "port 0" 1 )} 
wvSelectSignal -win $_nWave3 {( "port 0" 1 )} 
wvSelectSignal -win $_nWave3 {( "port 3 out" 1 )} 
wvSelectGroup -win $_nWave3 {G7}
wvSelectSignal -win $_nWave3 {( "port 3 out" 1 )} 
wvChangeDisplayAttr -win $_nWave3 -default
wvSelectSignal -win $_nWave3 {( "port 1 in" 5 )} 
debReload
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSelectGroup -win $_nWave3 {port 1 in}
verdiSetActWin -win $_nWave3
wvSelectGroup -win $_nWave3 {port 3 in}
wvSetCursor -win $_nWave3 596.089567 -snap {("port 3 in" 2)}
debReload
wvScrollDown -win $_nWave3 0
wvSetCursor -win $_nWave3 599.737383 -snap {("port 1 in" 2)}
wvSetCursor -win $_nWave3 600.092282 -snap {("port 3 in" 2)}
wvSetCursor -win $_nWave3 630.879729 -snap {("port 3 in" 5)}
wvSetCursor -win $_nWave3 664.861264 -snap {("port 1 in" 5)}
wvSelectSignal -win $_nWave3 {( "port 1 in" 5 )} 
wvSetCursor -win $_nWave3 634.870413 -snap {("port 1 in" 5)}
wvSelectSignal -win $_nWave3 {( "port 1 in" 5 )} 
