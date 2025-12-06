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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             wvScrollDown -win $_nWave3 1
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
