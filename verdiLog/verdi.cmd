simSetSimulator "-vcssv" -exec \
           "/project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/simv" \
           -args
debImport "-dbdir" \
          "/project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/simv.daidir"
debLoadSimResult \
           /project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/novas.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiFindBar -show -win nWave_2
verdiWindowResize -win $_Verdi_1 "0" "24" "1438" "751"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debRestoreSession \
           /project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/signals/arreng_complex.ses
verdiFindBar -show -win nWave_3
verdiSetActWin -win $_nWave3
debReload
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvZoomOut -win $_nWave3
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvZoom -win $_nWave3 602.970919 605.228221
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
debReload
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvSetCursor -win $_nWave3 609.858320 -snap {("port 1 in" 6)}
wvSetCursor -win $_nWave3 619.524719 -snap {("port 3 in" 6)}
wvSetPosition -win $_nWave3 {("port 2" 0)}
wvCollapseGroup -win $_nWave3 "port 2"
wvExpandGroup -win $_nWave3 "port 2"
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
srcHBSelect "switch_collision_tb.dut.port2_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_collision_tb.dut.mux2_i" -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.mux2_i" -win $_nTrace1
srcSetScope "switch_collision_tb.dut.mux2_i" -delim "." -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.mux2_i" -win $_nTrace1
srcSignalViewSelect "switch_collision_tb.dut.mux2_i.data_out\[7:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 3
wvSelectSignal -win $_nWave3 {( "port 2" 2 )} 
verdiSetActWin -win $_nWave3
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("port 2" 1)}
wvSelectSignal -win $_nWave3 {( "port 2" 2 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("port 2" 1)}
wvSelectSignal -win $_nWave3 {( "port 2" 3 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("port 2" 1)}
wvSetPosition -win $_nWave3 {("port 2" 3)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("port 2" 3)}
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 0)}
wvSetPosition -win $_nWave3 {("port 2" 2)}
wvSelectSignal -win $_nWave3 {( "port 2" 2 )} 
wvScrollDown -win $_nWave3 0
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 0)}
wvSetPosition -win $_nWave3 {("port 2" 1)}
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_collision_tb.dut.port2_i" -win $_nTrace1
srcSetScope "switch_collision_tb.dut.port2_i" -delim "." -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.port2_i" -win $_nTrace1
srcSignalViewSelect "switch_collision_tb.dut.port2_i.current_state\[1:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "switch_collision_tb.dut.port2_i.current_state\[1:0\]"
wvSelectSignal -win $_nWave3 {( "port 2" 2 )} 
verdiSetActWin -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
debReload
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvSelectSignal -win $_nWave3 {( "port 3 in" 2 )} 
wvSelectSignal -win $_nWave3 {( "port 1 in" 2 )} 
wvSelectSignal -win $_nWave3 {( "port 2" 2 )} 
wvExpandBus -win $_nWave3
wvSetCursor -win $_nWave3 445.327070 -snap {("port 1 in" 4)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 3
wvScrollDown -win $_nWave3 1
wvSetCursor -win $_nWave3 150.282971 -snap {("port 2" 1)}
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
debReload
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSelectGroup -win $_nWave3 {port 0}
srcHBSelect "switch_collision_tb.dut.mux0_i" -win $_nTrace1
srcSetScope "switch_collision_tb.dut.mux0_i" -delim "." -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.mux0_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalViewSelect "switch_collision_tb.dut.mux0_i.data_out\[7:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvSetPosition -win $_nWave3 {("port 2" 4)}
wvSetPosition -win $_nWave3 {("port 2" 0)}
wvSetPosition -win $_nWave3 {("port 0" 0)}
verdiSetActWin -win $_nWave3
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("port 0" 0)}
wvSetPosition -win $_nWave3 {("port 0" 1)}
srcSignalViewSelect "switch_collision_tb.dut.mux0_i.valid_out"
verdiSetActWin -dock widgetDock_<Signal_List>
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
verdiSetActWin -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
debReload
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
srcHBSelect "switch_collision_tb.dut.mux2_i" -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.port0_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_collision_tb.dut.port3_i" -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.port3_i" -win $_nTrace1
srcSetScope "switch_collision_tb.dut.port3_i" -delim "." -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.port3_i" -win $_nTrace1
srcSignalViewSelect "switch_collision_tb.dut.port3_i.header_out\[7:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
wvSetPosition -win $_nWave3 {("port 0" 1)}
wvSetPosition -win $_nWave3 {("port 1 in" 4)}
wvSetPosition -win $_nWave3 {("port 1 in" 1)}
verdiSetActWin -win $_nWave3
wvSetPosition -win $_nWave3 {("port 3 in" 5)}
wvSetPosition -win $_nWave3 {("port 3 in" 4)}
wvSetPosition -win $_nWave3 {("port 3 in" 3)}
wvSetPosition -win $_nWave3 {("port 3 in" 2)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("port 3 in" 2)}
wvSetPosition -win $_nWave3 {("port 3 in" 3)}
wvSetCursor -win $_nWave3 579.002440 -snap {("port 3 in" 3)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
srcHBSelect "switch_collision_tb.dut.top_arb_i" -win $_nTrace1
srcSetScope "switch_collision_tb.dut.top_arb_i" -delim "." -win $_nTrace1
srcHBSelect "switch_collision_tb.dut.top_arb_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "port 3 in" 1 )} 
verdiSetActWin -win $_nWave3
wvSearchNext -win $_nWave3
wvSearchNext -win $_nWave3
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSignalViewSelect "switch_collision_tb.dut.top_arb_i.win_out0\[3:0\]"
verdiSetActWin -dock widgetDock_<Signal_List>
srcDeselectAll -win $_nTrace1
srcSelect -signal "win_out0" -line 36 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiFindBar -show -widget MTB_SOURCE_TAB_1
verdiFindBar -pattern "win_out0" -next -widget MTB_SOURCE_TAB_1
srcSignalViewSelect "switch_collision_tb.dut.top_arb_i.reqs_out0\[3:0\]"
verdiSetActWin -dock widgetDock_<Signal_List>
srcDeselectAll -win $_nTrace1
srcSelect -signal "reqs_out0" -line 39 -pos 1 -win $_nTrace1
verdiFindBar -show -widget MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiFindBar -pattern "port_reqs" -next -widget MTB_SOURCE_TAB_1
verdiFindBar -pattern "port_reqs" -next -widget MTB_SOURCE_TAB_1
verdiFindBar -pattern "port_reqs" -next -widget MTB_SOURCE_TAB_1
verdiFindBar -pattern "port_reqs" -next -widget MTB_SOURCE_TAB_1
verdiFindBar -pattern "port_reqs" -previous -widget MTB_SOURCE_TAB_1
verdiFindBar -pattern "port_reqs" -previous -widget MTB_SOURCE_TAB_1
srcSignalViewSelect "switch_collision_tb.dut.top_arb_i.win_out2\[3:0\]"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "switch_collision_tb.dut.top_arb_i.port_reqs\[3:0\]"
wvScrollDown -win $_nWave3 5
wvScrollDown -win $_nWave3 4
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/_vcs_unit__2593612624"
verdiSetActWin -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/switch_collision_tb/dut/top_arb_i"
wvSetPosition -win $_nWave3 {("G6" 9)}
wvSetPosition -win $_nWave3 {("G6" 9)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"port 3 out" \
{/switch_collision_tb/dut/port3_i/clk} -height 16 -color ID_GREEN5 \
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
{/switch_collision_tb/dut/port2_i/current_state\[1\]} -height 16 \
{/switch_collision_tb/dut/port2_i/current_state\[0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G6" \
{/switch_collision_tb/dut/top_arb_i/port_reqs\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr0\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr1\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr2\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr3\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out2\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out1\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out0\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out3\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G7" \
}
wvSelectSignal -win $_nWave3 {( "G6" 9 )} 
wvSetPosition -win $_nWave3 {("G6" 9)}
wvSetPosition -win $_nWave3 {("G6" 9)}
wvSetPosition -win $_nWave3 {("G6" 9)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"port 3 out" \
{/switch_collision_tb/dut/port3_i/clk} -height 16 -color ID_GREEN5 \
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
{/switch_collision_tb/dut/port2_i/current_state\[1\]} -height 16 \
{/switch_collision_tb/dut/port2_i/current_state\[0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G6" \
{/switch_collision_tb/dut/top_arb_i/port_reqs\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr0\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr1\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr2\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/ptr3\[1:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out2\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out1\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out0\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/reqs_out3\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G7" \
}
wvSelectSignal -win $_nWave3 {( "G6" 9 )} 
wvSetPosition -win $_nWave3 {("G6" 9)}
wvGetSignalClose -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvSelectGroup -win $_nWave3 {port 2}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 2
wvSelectSignal -win $_nWave3 {( "G6" 8 )} 
wvSelectSignal -win $_nWave3 {( "G6" 8 )} 
wvSetPosition -win $_nWave3 {("G6" 8)}
wvExpandBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 13)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G6" 8 )} 
wvSetPosition -win $_nWave3 {("G6" 8)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 8)}
wvSetPosition -win $_nWave3 {("G6" 9)}
wvSelectSignal -win $_nWave3 {( "G6" 7 )} 
wvSetPosition -win $_nWave3 {("G6" 7)}
wvExpandBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 13)}
wvSelectSignal -win $_nWave3 {( "G6" 7 )} 
wvSetPosition -win $_nWave3 {("G6" 7)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 7)}
wvSetPosition -win $_nWave3 {("G6" 9)}
wvSelectSignal -win $_nWave3 {( "G6" 6 )} 
wvSetPosition -win $_nWave3 {("G6" 6)}
wvExpandBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 13)}
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G6" 6 )} 
wvSetPosition -win $_nWave3 {("G6" 6)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 6)}
wvSetPosition -win $_nWave3 {("G6" 9)}
wvSelectSignal -win $_nWave3 {( "G6" 9 )} 
wvExpandBus -win $_nWave3
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G6" 9 )} 
wvSetPosition -win $_nWave3 {("G6" 9)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 9)}
wvSelectSignal -win $_nWave3 {( "G6" 6 )} 
wvSetPosition -win $_nWave3 {("G6" 6)}
wvExpandBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 13)}
wvSelectSignal -win $_nWave3 {( "port 2" 4 )} 
wvSelectSignal -win $_nWave3 {( "port 2" 2 )} 
wvSetPosition -win $_nWave3 {("port 2" 2)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("port 2" 2)}
wvSetPosition -win $_nWave3 {("G6" 13)}
wvScrollUp -win $_nWave3 3
wvScrollDown -win $_nWave3 3
wvSelectSignal -win $_nWave3 {( "G6" 2 )} 
wvSelectSignal -win $_nWave3 {( "G6" 3 )} 
wvSelectSignal -win $_nWave3 {( "G6" 4 )} 
wvSelectSignal -win $_nWave3 {( "G6" 5 )} 
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/_vcs_unit__2593612624"
wvGetSignalSetScope -win $_nWave3 "/switch_collision_tb"
wvGetSignalSetScope -win $_nWave3 "/switch_collision_tb/dut"
wvGetSignalSetScope -win $_nWave3 "/switch_collision_tb/dut/top_arb_i"
wvSetPosition -win $_nWave3 {("G6" 14)}
wvSetPosition -win $_nWave3 {("G6" 14)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"port 3 out" \
{/switch_collision_tb/dut/port3_i/clk} -height 16 -color ID_GREEN5 \
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
{/switch_collision_tb/dut/top_arb_i/win_out2\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G7" \
}
wvSelectSignal -win $_nWave3 {( "G6" 14 )} 
wvSetPosition -win $_nWave3 {("G6" 14)}
wvSetPosition -win $_nWave3 {("G6" 17)}
wvSetPosition -win $_nWave3 {("G6" 17)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"port 3 out" \
{/switch_collision_tb/dut/port3_i/clk} -height 16 -color ID_GREEN5 \
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
{/switch_collision_tb/dut/top_arb_i/win_out1\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out2\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out0\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out3\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G7" \
}
wvSelectSignal -win $_nWave3 {( "G6" 17 )} 
wvSetPosition -win $_nWave3 {("G6" 17)}
wvSetPosition -win $_nWave3 {("G6" 17)}
wvSetPosition -win $_nWave3 {("G6" 17)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"port 3 out" \
{/switch_collision_tb/dut/port3_i/clk} -height 16 -color ID_GREEN5 \
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
{/switch_collision_tb/dut/top_arb_i/win_out1\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out2\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out0\[3:0\]} -height 16 \
{/switch_collision_tb/dut/top_arb_i/win_out3\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G7" \
}
wvSelectSignal -win $_nWave3 {( "G6" 17 )} 
wvSetPosition -win $_nWave3 {("G6" 17)}
wvGetSignalClose -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G6" 14 )} 
wvSelectSignal -win $_nWave3 {( "G6" 15 )} 
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 5
wvScrollDown -win $_nWave3 3
wvSelectSignal -win $_nWave3 {( "G6" 15 )} 
wvSetPosition -win $_nWave3 {("G6" 15)}
wvExpandBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 21)}
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G6" 15 )} 
wvSetPosition -win $_nWave3 {("G6" 15)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 15)}
wvSetPosition -win $_nWave3 {("G6" 17)}
wvSelectSignal -win $_nWave3 {( "G6" 18 )} 
wvSetPosition -win $_nWave3 {("G6" 18)}
wvExpandBus -win $_nWave3
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G6" 18 )} 
wvSetPosition -win $_nWave3 {("G6" 18)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 18)}
wvSelectSignal -win $_nWave3 {( "G6" 17 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G7" 0)}
wvSetPosition -win $_nWave3 {("G6" 17)}
wvSelectSignal -win $_nWave3 {( "G6" 17 )} 
wvExpandBus -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G6" 16 )} 
wvSelectSignal -win $_nWave3 {( "G6" 16 )} 
wvSetPosition -win $_nWave3 {("G6" 16)}
wvExpandBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 25)}
wvSelectSignal -win $_nWave3 {( "G6" 21 )} 
wvSetPosition -win $_nWave3 {("G6" 21)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 21)}
wvSelectSignal -win $_nWave3 {( "G6" 21 )} 
wvExpandBus -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G6" 21 )} 
wvSetPosition -win $_nWave3 {("G6" 21)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 21)}
wvSelectSignal -win $_nWave3 {( "G6" 17 )} 
wvSelectSignal -win $_nWave3 {( "G6" 17 )} 
wvSelectSignal -win $_nWave3 {( "G6" 16 )} 
wvSetPosition -win $_nWave3 {("G6" 16)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 16)}
wvSetPosition -win $_nWave3 {("G6" 17)}
wvSelectSignal -win $_nWave3 {( "G6" 14 )} 
wvSetPosition -win $_nWave3 {("G6" 14)}
wvExpandBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G6" 21)}
wvSelectSignal -win $_nWave3 {( "G6" 13 )} 
wvSelectSignal -win $_nWave3 {( "G6" 14 )} 
debSaveSession \
           /project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/signals/arreng_complex.ses \
           -keynote \
           {invoke directory: /project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel
command line: -elab /project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/simv.daidir/kdb.elab++ -ba 
current trace scope: switch_collision_tb.dut.top_arb_i
memo:} \
           -saveDB on
