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
verdiWindowResize -win $_Verdi_1 "0" "24" "1920" "932"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_complex_tb.dut.port1_i" -win $_nTrace1
srcHBSelect "switch_complex_tb.dut.port1_i" -win $_nTrace1
srcSetScope "switch_complex_tb.dut.port1_i" -delim "." -win $_nTrace1
srcHBSelect "switch_complex_tb.dut.port1_i" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "current_state" -line 23 -pos 1 -win $_nTrace1
srcAction -pos 22 2 4 -win $_nTrace1 -name "current_state" -ctrlKey off
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvAddSignal -win $_nWave2 "/switch_complex_tb/dut/port1_i/current_state\[1:0\]"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
srcHBSelect "switch_complex_tb.dut.port0_i" -win $_nTrace1
srcSetScope "switch_complex_tb.dut.port0_i" -delim "." -win $_nTrace1
srcHBSelect "switch_complex_tb.dut.port0_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcDeselectAll -win $_nTrace1
srcSelect -signal "current_state" -line 78 -pos 1 -win $_nTrace1
srcAction -pos 77 5 6 -win $_nTrace1 -name "current_state" -ctrlKey off
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "current_state" -line 78 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "current_state" -line 64 -pos 1 -win $_nTrace1
srcSelect -win $_nTrace1 -range {64 79 3 1 9 1}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/_vcs_unit__1988831713"
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/dut/port0_i"
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_complex_tb/dut/port0_i/clk} -height 16 \
{/switch_complex_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/dut/port1"
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/dut/port1_i/parser_inst"
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/dut/port1_i"
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_complex_tb/dut/port0_i/clk} -height 16 \
{/switch_complex_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/dut/port2_i"
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/dut/port3_i"
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_complex_tb/dut/port0_i/clk} -height 16 \
{/switch_complex_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port3_i/current_state\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "source_in" -line 7 -pos 1 -win $_nTrace1
srcAction -pos 6 11 2 -win $_nTrace1 -name "source_in" -ctrlKey off
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvGetSignalOpen -win $_nWave2
verdiSetActWin -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/dut/port0_i"
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/dut"
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb"
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/dut"
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/p0"
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_complex_tb/dut/port0_i/clk} -height 16 \
{/switch_complex_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port3_i/current_state\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/switch_complex_tb/p0/valid_in} -height 16 \
{/switch_complex_tb/p0/data_out\[7:0\]} -height 16 \
{/switch_complex_tb/p0/data_in\[7:0\]} -height 16 \
{/switch_complex_tb/p0/source_in\[3:0\]} -height 16 \
{/switch_complex_tb/p0/target_in\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSetPosition -win $_nWave2 {("G2" 5)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectGroup -win $_nWave2 {G3}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/_vcs_unit__1988831713"
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb"
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/dut"
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/p0"
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/dut/mux1_i"
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_complex_tb/dut/port0_i/clk} -height 16 \
{/switch_complex_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port3_i/current_state\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/switch_complex_tb/p0/valid_in} -height 16 \
{/switch_complex_tb/p0/data_in\[7:0\]} -height 16 \
{/switch_complex_tb/p0/data_out\[7:0\]} -height 16 \
{/switch_complex_tb/p0/source_in\[3:0\]} -height 16 \
{/switch_complex_tb/p0/target_in\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/switch_complex_tb/dut/mux1_i/data_out\[15:0\]} -height 16 \
{/switch_complex_tb/dut/mux1_i/data_in3\[15:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetCursor -win $_nWave2 118.664384 -snap {("G3" 1)}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSetCursor -win $_nWave2 120.384157 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 117.435974 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 78.618225 -snap {("G2" 2)}
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectGroup -win $_nWave2 {G2}
wvRenameGroup -win $_nWave2 {G2} {port if}
wvSelectGroup -win $_nWave2 {port if}
wvSelectGroup -win $_nWave2 {port if}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectGroup -win $_nWave2 {G3}
wvRenameGroup -win $_nWave2 {G3} {mux1}
wvSetPosition -win $_nWave2 {("mux1" 3)}
wvSetPosition -win $_nWave2 {("mux1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_complex_tb/dut/port0_i/clk} -height 16 \
{/switch_complex_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port3_i/current_state\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port if" \
{/switch_complex_tb/p0/valid_in} -height 16 \
{/switch_complex_tb/p0/data_in\[7:0\]} -height 16 \
{/switch_complex_tb/p0/data_out\[7:0\]} -height 16 \
{/switch_complex_tb/p0/source_in\[3:0\]} -height 16 \
{/switch_complex_tb/p0/target_in\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"mux1" \
{/switch_complex_tb/dut/mux1_i/data_out\[15:0\]} -height 16 \
{/switch_complex_tb/dut/mux1_i/mux_sel\[1:0\]} -height 16 \
{/switch_complex_tb/dut/mux1_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "mux1" 3 )} 
wvSetPosition -win $_nWave2 {("mux1" 3)}
wvSelectSignal -win $_nWave2 {( "mux1" 2 )} 
wvSelectSignal -win $_nWave2 {( "port if" 2 )} 
wvSetCursor -win $_nWave2 116.453246 -snap {("mux1" 1)}
debReload
wvSelectSignal -win $_nWave2 {( "mux1" 1 )} 
wvSelectSignal -win $_nWave2 {( "port if" 3 )} 
wvSelectSignal -win $_nWave2 {( "port if" 2 )} 
wvSelectSignal -win $_nWave2 {( "port if" 3 )} 
wvSelectSignal -win $_nWave2 {( "mux1" 1 )} 
wvSelectSignal -win $_nWave2 {( "mux1" 2 )} 
wvSetPosition -win $_nWave2 {("mux1" 3)}
wvSetPosition -win $_nWave2 {("mux1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_complex_tb/dut/port0_i/clk} -height 16 \
{/switch_complex_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port3_i/current_state\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port if" \
{/switch_complex_tb/p0/valid_in} -height 16 \
{/switch_complex_tb/p0/data_in\[7:0\]} -height 16 \
{/switch_complex_tb/p0/data_out\[7:0\]} -height 16 \
{/switch_complex_tb/p0/source_in\[3:0\]} -height 16 \
{/switch_complex_tb/p0/target_in\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"mux1" \
{/switch_complex_tb/dut/mux1_i/mux_sel\[1:0\]} -height 16 \
{/switch_complex_tb/dut/mux1_i/valid_out} -height 16 \
{/switch_complex_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
}
wvSelectSignal -win $_nWave2 {( "mux1" 3 )} 
wvSetPosition -win $_nWave2 {("mux1" 3)}
wvSetCursor -win $_nWave2 116.698928 -snap {("mux1" 3)}
wvSetCursor -win $_nWave2 77.144133 -snap {("port if" 2)}
debReload
wvSetCursor -win $_nWave2 118.173020 -snap {("mux1" 3)}
wvSelectSignal -win $_nWave2 {( "mux1" 2 )} 
wvSetCursor -win $_nWave2 75.424360 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 89.428231 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 4.913639 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 24.813877 -snap {("G1" 1)}
wvGetSignalSetScope -win $_nWave2 "/switch_complex_tb/dut"
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_complex_tb/dut/port0_i/clk} -height 16 \
{/switch_complex_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_complex_tb/dut/port3_i/current_state\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port if" \
{/switch_complex_tb/p0/valid_in} -height 16 \
{/switch_complex_tb/p0/data_in\[7:0\]} -height 16 \
{/switch_complex_tb/p0/data_out\[7:0\]} -height 16 \
{/switch_complex_tb/p0/source_in\[3:0\]} -height 16 \
{/switch_complex_tb/p0/target_in\[3:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"mux1" \
{/switch_complex_tb/dut/mux1_i/mux_sel\[1:0\]} -height 16 \
{/switch_complex_tb/dut/mux1_i/valid_out} -height 16 \
{/switch_complex_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/switch_complex_tb/dut/rst_n} -height 16 \
{/switch_complex_tb/dut/fifo_data_out0\[15:0\]} -height 16 \
{/switch_complex_tb/dut/fifo_data_out1\[15:0\]} -height 16 \
{/switch_complex_tb/dut/rst_n} -height 16 \
{/switch_complex_tb/dut/valid_out0} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "G5" 2 3 4 5 )} 
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 2)}
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 0)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetCursor -win $_nWave2 3.930911 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 14.495235 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 25.305241 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 34.149792 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 45.942525 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 54.050030 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 64.614354 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 45.451161 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 54.787076 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 64.614354 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 70.265039 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 73.950268 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 45.205479 -snap {("G5" 1)}
wvSetCursor -win $_nWave2 54.541394 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 64.860036 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 74.687314 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 85.251638 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 94.341870 -snap {("G1" 1)}
wvZoom -win $_nWave2 3.439547 4.913639
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 44.959797 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 54.787076 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 64.614354 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 74.687314 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 85.005956 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 95.078916 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 44.222752 -snap {("G5" 1)}
wvSetCursor -win $_nWave2 54.050030 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 65.351400 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 74.687314 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 84.514592 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 95.078916 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 104.169148 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 114.242108 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 125.052114 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 134.142347 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 74.932996 -snap {("port if" 1)}
wvSetCursor -win $_nWave2 84.268910 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 94.587552 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 104.414830 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 114.242108 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 84.514592 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 95.078916 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 103.923466 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 114.733472 -snap {("G1" 1)}
