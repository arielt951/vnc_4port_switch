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
verdiFindBar -show -win nWave_2
verdiWindowResize -win $_Verdi_1 "0" "24" "1438" "751"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debRestoreSession \
           /project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/signals/arrengment_simple.ses
verdiFindBar -show -win nSchema_4
verdiSetActWin -win $_nSchema_4
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 6
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
verdiSetActWin -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 2 )} 
wvScrollDown -win $_nWave3 4
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 3
wvScrollUp -win $_nWave3 8
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "arbiter" 2 )} 
wvSelectGroup -win $_nWave3 {arbiter}
wvRenameGroup -win $_nWave3 {arbiter} {port1}
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb/dut/port1_i"
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb/dut/mux1_i"
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb/dut/mux2_i"
wvSetPosition -win $_nWave3 {("port1" 6)}
wvSetPosition -win $_nWave3 {("port1" 6)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/switch_simple_tb/dut/port1/valid_in} -height 16 \
{/switch_simple_tb/dut/port1/data_in\[7:0\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/mux_sel\[1:0\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"port1" \
{/switch_simple_tb/dut/top_arb_i/clk} -height 16 \
{/switch_simple_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/clk} -height 16 \
{/switch_simple_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/fifo_data_out\[15:0\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"comb arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/port_reqs\[1\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/port1_dst\[2\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/reqs_out2\[3:0\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/grant_bus\[3:0\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/grant_bus\[1\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"seq arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/ptr2\[1:0\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/port1_dst\[2\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/win_out2\[1\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/mux_sel2\[1:0\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/arb_active} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G5" \
}
wvSelectSignal -win $_nWave3 {( "port1" 6 )} 
wvSetPosition -win $_nWave3 {("port1" 6)}
wvSetPosition -win $_nWave3 {("port1" 6)}
wvSetPosition -win $_nWave3 {("port1" 6)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/switch_simple_tb/dut/port1/valid_in} -height 16 \
{/switch_simple_tb/dut/port1/data_in\[7:0\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/mux_sel\[1:0\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"port1" \
{/switch_simple_tb/dut/top_arb_i/clk} -height 16 \
{/switch_simple_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/clk} -height 16 \
{/switch_simple_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/fifo_data_out\[15:0\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"comb arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/port_reqs\[1\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/port1_dst\[2\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/reqs_out2\[3:0\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/grant_bus\[3:0\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/grant_bus\[1\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"seq arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/ptr2\[1:0\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/port1_dst\[2\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/win_out2\[1\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/mux_sel2\[1:0\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/arb_active} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G5" \
}
wvSelectSignal -win $_nWave3 {( "port1" 6 )} 
wvSetPosition -win $_nWave3 {("port1" 6)}
wvGetSignalClose -win $_nWave3
wvScrollUp -win $_nWave3 7
wvScrollUp -win $_nWave3 3
wvScrollUp -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "port1" 3 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("comb arbiter logic" 0)}
wvSetPosition -win $_nWave3 {("port1" 5)}
wvScrollUp -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("comb arbiter logic" 0)}
wvSetPosition -win $_nWave3 {("port1" 5)}
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("comb arbiter logic" 0)}
wvSetPosition -win $_nWave3 {("port1" 5)}
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("comb arbiter logic" 0)}
wvSetPosition -win $_nWave3 {("port1" 5)}
wvSelectSignal -win $_nWave3 {( "port1" 5 )} 
wvSelectSignal -win $_nWave3 {( "port1" 5 )} 
wvSetPosition -win $_nWave3 {("port1" 4)}
wvSetPosition -win $_nWave3 {("port1" 3)}
wvSetPosition -win $_nWave3 {("port1" 2)}
wvSetPosition -win $_nWave3 {("port1" 1)}
wvSetPosition -win $_nWave3 {("port1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSelectGroup -win $_nWave3 {G1}
wvRenameGroup -win $_nWave3 {G1} {port2}
wvScrollDown -win $_nWave3 1
wvRenameSignal -win $_nWave3 {/switch_simple_tb/dut/mux2_i/valid_out} {port2}
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 1 )} 
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 2 )} 
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 3 )} 
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 2 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("port2" 2)}
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 2 )} 
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 3 )} 
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 4 )} 
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 3 )} 
wvSetPosition -win $_nWave3 {("comb arbiter logic" 3)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("comb arbiter logic" 3)}
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 1 )} 
wvScrollDown -win $_nWave3 1
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("comb arbiter logic" 3)}
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 1 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("comb arbiter logic" 3)}
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 1 )} 
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 2 )} 
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 3 )} 
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 2 )} 
wvSetPosition -win $_nWave3 {("seq arbiter logic" 3)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("seq arbiter logic" 3)}
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 2 )} 
wvSetCursor -win $_nWave3 105.578201 -snap {("seq arbiter logic" 2)}
wvSetCursor -win $_nWave3 94.001644 -snap {("seq arbiter logic" 2)}
wvScrollUp -win $_nWave3 4
wvScrollDown -win $_nWave3 0
wvSelectGroup -win $_nWave3 {port1}
wvSelectGroup -win $_nWave3 {port2}
wvSelectSignal -win $_nWave3 {( "port2" 1 )} 
wvSelectSignal -win $_nWave3 {( "port2" 1 2 )} 
wvSelectSignal -win $_nWave3 {( "port2" 1 2 )} 
wvSetCursor -win $_nWave3 104.652076 -snap {("port1" 2)}
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "port2" 1 )} 
wvSelectSignal -win $_nWave3 {( "port2" 1 )} 
wvSelectSignal -win $_nWave3 {( "port2" 1 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G5" 0)}
wvSetPosition -win $_nWave3 {("seq arbiter logic" 3)}
wvSelectGroup -win $_nWave3 {port2}
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/_vcs_unit__1210967606"
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb"
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb/dut"
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb/dut/port1_i"
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb/dut/mux2_i"
wvSetPosition -win $_nWave3 {("port2" 2)}
wvSetPosition -win $_nWave3 {("port2" 2)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"port2" \
{/switch_simple_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/arb_active} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"port1" \
{/switch_simple_tb/dut/top_arb_i/clk} -height 16 \
{/switch_simple_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/fifo_data_out\[15:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"comb arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/port_reqs\[1\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/reqs_out2\[3:0\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/grant_bus\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"seq arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/win_out2\[1\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/arb_active} -height 16 \
{/switch_simple_tb/dut/top_arb_i/mux_sel2\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G5" \
}
wvSelectSignal -win $_nWave3 {( "port2" 2 )} 
wvSetPosition -win $_nWave3 {("port2" 2)}
wvSetCursor -win $_nWave3 5.093685 -snap {("comb arbiter logic" 2)}
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb/dut/mux1_i"
wvSetPosition -win $_nWave3 {("port2" 3)}
wvSetPosition -win $_nWave3 {("port2" 3)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"port2" \
{/switch_simple_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/arb_active} -height 16 \
{/switch_simple_tb/dut/mux1_i/arb_active} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"port1" \
{/switch_simple_tb/dut/top_arb_i/clk} -height 16 \
{/switch_simple_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/fifo_data_out\[15:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"comb arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/port_reqs\[1\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/reqs_out2\[3:0\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/grant_bus\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"seq arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/win_out2\[1\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/arb_active} -height 16 \
{/switch_simple_tb/dut/top_arb_i/mux_sel2\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G5" \
}
wvSelectSignal -win $_nWave3 {( "port2" 3 )} 
wvSetPosition -win $_nWave3 {("port2" 3)}
wvSetPosition -win $_nWave3 {("port2" 3)}
wvSetPosition -win $_nWave3 {("port2" 3)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"port2" \
{/switch_simple_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/arb_active} -height 16 \
{/switch_simple_tb/dut/mux1_i/arb_active} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"port1" \
{/switch_simple_tb/dut/top_arb_i/clk} -height 16 \
{/switch_simple_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/fifo_data_out\[15:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"comb arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/port_reqs\[1\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/reqs_out2\[3:0\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/grant_bus\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"seq arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/win_out2\[1\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/arb_active} -height 16 \
{/switch_simple_tb/dut/top_arb_i/mux_sel2\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G5" \
}
wvSelectSignal -win $_nWave3 {( "port2" 3 )} 
wvSetPosition -win $_nWave3 {("port2" 3)}
wvGetSignalClose -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 1 )} 
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 1 )} 
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 2 )} 
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/_vcs_unit__1210967606"
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb"
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb/dut"
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb/dut/mux2_i"
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb/dut/port1_i"
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb/dut/mux1_i"
wvGetSignalSetScope -win $_nWave3 "/switch_simple_tb/dut/top_arb_i"
wvSetPosition -win $_nWave3 {("seq arbiter logic" 1)}
wvSetPosition -win $_nWave3 {("seq arbiter logic" 1)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"port2" \
{/switch_simple_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/arb_active} -height 16 \
{/switch_simple_tb/dut/mux1_i/arb_active} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"port1" \
{/switch_simple_tb/dut/top_arb_i/clk} -height 16 \
{/switch_simple_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/fifo_data_out\[15:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"comb arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/port_reqs\[1\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/reqs_out2\[3:0\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/grant_bus\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"seq arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/port_reqs\[3:0\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/win_out2\[1\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/arb_active} -height 16 \
{/switch_simple_tb/dut/top_arb_i/mux_sel2\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G5" \
}
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 1 )} 
wvSetPosition -win $_nWave3 {("seq arbiter logic" 1)}
wvSetPosition -win $_nWave3 {("seq arbiter logic" 1)}
wvSetPosition -win $_nWave3 {("seq arbiter logic" 1)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"port2" \
{/switch_simple_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/arb_active} -height 16 \
{/switch_simple_tb/dut/mux1_i/arb_active} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"port1" \
{/switch_simple_tb/dut/top_arb_i/clk} -height 16 \
{/switch_simple_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_simple_tb/dut/port1_i/fifo_data_out\[15:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"comb arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/port_reqs\[1\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/reqs_out2\[3:0\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/grant_bus\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"seq arbiter logic" \
{/switch_simple_tb/dut/top_arb_i/port_reqs\[3:0\]} -height 16 \
{/switch_simple_tb/dut/top_arb_i/win_out2\[1\]} -height 16 \
{/switch_simple_tb/dut/mux2_i/arb_active} -height 16 \
{/switch_simple_tb/dut/top_arb_i/mux_sel2\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave3 -group {"G5" \
}
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 1 )} 
wvSetPosition -win $_nWave3 {("seq arbiter logic" 1)}
wvGetSignalClose -win $_nWave3
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 1 )} 
wvExpandBus -win $_nWave3
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 1 )} 
wvSetPosition -win $_nWave3 {("seq arbiter logic" 1)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("seq arbiter logic" 1)}
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 1 )} 
wvExpandBus -win $_nWave3
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 1 )} 
wvSetPosition -win $_nWave3 {("seq arbiter logic" 1)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("seq arbiter logic" 1)}
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 1 )} 
wvExpandBus -win $_nWave3
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 1 )} 
wvSetPosition -win $_nWave3 {("seq arbiter logic" 1)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("seq arbiter logic" 1)}
wvSetCursor -win $_nWave3 75.479152 -snap {("seq arbiter logic" 2)}
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 2 )} 
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 2 )} 
wvSetPosition -win $_nWave3 {("comb arbiter logic" 2)}
wvExpandBus -win $_nWave3
wvSetPosition -win $_nWave3 {("seq arbiter logic" 1)}
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 2 )} 
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 1 )} 
wvExpandBus -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 2 )} 
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 4 )} 
wvSelectSignal -win $_nWave3 {( "comb arbiter logic" 5 )} 
wvSetCursor -win $_nWave3 82.888149 -snap {("seq arbiter logic" 4)}
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 4 )} 
wvSelectSignal -win $_nWave3 {( "seq arbiter logic" 1 )} 
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSetCursor -win $_nWave3 95.622362 -snap {("seq arbiter logic" 4)}
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
