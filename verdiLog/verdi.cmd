simSetSimulator "-vcssv" -exec \
           "/project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/simv" \
           -args
debImport "-dbdir" \
          "/project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/simv.daidir"
debLoadSimResult \
           /project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/novas.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "0" "24" "1918" "931"
verdiWindowResize -win $_Verdi_1 "0" "24" "1918" "931"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSignalView -on
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "switch_sequential_tb.clk"
srcSignalViewSelect "switch_sequential_tb.clk"
srcSignalViewAddSelectedToWave
srcSignalViewSelect "switch_sequential_tb.rst_n"
srcSignalViewAddSelectedToWave
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
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
verdiSetActWin -win $_nWave2
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_sequential_tb.dut.mux0_i" -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.mux0_i" -win $_nTrace1
srcSetScope "switch_sequential_tb.dut.mux0_i" -delim "." -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.mux0_i" -win $_nTrace1
srcSignalViewSelect "switch_sequential_tb.dut.mux0_i.valid_out"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
wvSetPosition -win $_nWave2 {("G2" 0)}
verdiSetActWin -win $_nWave2
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
srcSignalViewSelect "switch_sequential_tb.dut.mux0_i.data_out\[7:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcHBSelect "switch_sequential_tb.dut.port0" -win $_nTrace1
srcSetScope "switch_sequential_tb.dut.port0" -delim "." -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.port0" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_sequential_tb.dut.port0" -win $_nTrace1
srcSetScope "switch_sequential_tb.dut.port0" -delim "." -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.port0" -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.port0" -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.port0_i" -win $_nTrace1
srcSetScope "switch_sequential_tb.dut.port0_i" -delim "." -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.port0_i" -win $_nTrace1
srcSignalViewSelect "switch_sequential_tb.dut.port0_i.valid_in"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 1)}
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
srcSignalViewSelect "switch_sequential_tb.dut.port0_i.data_in\[7:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
wvSelectGroup -win $_nWave2 {G3}
verdiSetActWin -win $_nWave2
srcHBSelect "switch_sequential_tb.dut.mux1_i" -win $_nTrace1
srcSetScope "switch_sequential_tb.dut.mux1_i" -delim "." -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.mux1_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalViewSelect "switch_sequential_tb.dut.mux1_i.valid_out"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "switch_sequential_tb.dut.mux1_i.data_out\[7:0\]"
srcSignalViewAddSelectedToWave
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 5 )} 
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSetPosition -win $_nWave2 {("G3" 1)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 10)}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSetPosition -win $_nWave2 {("G3" 1)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
verdiFindBar -show -win nWave_2
wvShowOneTraceSignals -win $_nWave2 -signal \
           "/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]" -driver
wvSelectGroup -win $_nWave2 {G3}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSelectGroup -win $_nWave2 {G3}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectGroup -win $_nWave2 \
           {G3//switch_sequential_tb/dut/mux1_i/data_out@0(1s)#ActiveDriver}
wvSelectGroup -win $_nWave2 \
           {G3//switch_sequential_tb/dut/mux1_i/data_out@0(1s)#ActiveDriver}
wvSelectGroup -win $_nWave2 \
           {G3//switch_sequential_tb/dut/mux1_i/data_out@0(1s)#ActiveDriver}
wvSelectGroup -win $_nWave2 \
           {G3//switch_sequential_tb/dut/mux1_i/data_out@0(1s)#ActiveDriver}
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 \
           {( "G3//switch_sequential_tb/dut/mux1_i/data_out@0(1s)#ActiveDriver" \
           2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSelectSignal -win $_nWave2 \
           {( "G3//switch_sequential_tb/dut/mux1_i/data_out@0(1s)#ActiveDriver" \
           2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSelectSignal -win $_nWave2 \
           {( "G3//switch_sequential_tb/dut/mux1_i/data_out@0(1s)#ActiveDriver" \
           2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSelectSignal -win $_nWave2 \
           {( "G3//switch_sequential_tb/dut/mux1_i/data_out@0(1s)#ActiveDriver" \
           2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSelectSignal -win $_nWave2 \
           {( "G3//switch_sequential_tb/dut/mux1_i/data_out@0(1s)#ActiveDriver" \
           2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSelectSignal -win $_nWave2 \
           {( "G3//switch_sequential_tb/dut/mux1_i/data_out@0(1s)#ActiveDriver" \
           2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 \
           {( "G3//switch_sequential_tb/dut/mux1_i/data_out@0(1s)#ActiveDriver" \
           1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSelectGroup -win $_nWave2 \
           {G3//switch_sequential_tb/dut/mux1_i/data_out@0(1s)#ActiveDriver}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvShowOneTraceSignals -win $_nWave2 -signal \
           "/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]" -driver
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSelectGroup -win $_nWave2 \
           {G2//switch_sequential_tb/dut/mux0_i/data_out@0(1s)#ActiveDriver}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G2}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvRenameGroup -win $_nWave2 {G2} {port 0 if}
wvSelectGroup -win $_nWave2 {G3}
srcHBSelect "switch_sequential_tb.dut.port1_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_sequential_tb.dut.port1_i" -win $_nTrace1
srcSetScope "switch_sequential_tb.dut.port1_i" -delim "." -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.port1_i" -win $_nTrace1
srcSignalViewSelect "switch_sequential_tb.dut.port1_i.valid_in"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
wvSetPosition -win $_nWave2 {("port 0 if" 4)}
wvSetPosition -win $_nWave2 {("port 0 if" 5)}
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 1)}
srcSignalViewSelect "switch_sequential_tb.dut.port1_i.data_in\[7:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcHBSelect "switch_sequential_tb.dut.mux1_i" -win $_nTrace1
srcSetScope "switch_sequential_tb.dut.mux1_i" -delim "." -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.mux1_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalViewSelect "switch_sequential_tb.dut.mux1_i.data_out\[7:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "switch_sequential_tb.dut.mux1_i.valid_out"
srcSignalViewAddSelectedToWave
wvScrollDown -win $_nWave2 0
wvSelectGroup -win $_nWave2 {G4}
verdiSetActWin -win $_nWave2
srcHBSelect "switch_sequential_tb.dut.port2_i" -win $_nTrace1
srcSetScope "switch_sequential_tb.dut.port2_i" -delim "." -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.port2_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalViewSelect "switch_sequential_tb.dut.port2_i.valid_in"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "switch_sequential_tb.dut.port2_i.data_in\[7:0\]"
srcSignalViewAddSelectedToWave
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 5 6 )} 
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 2)}
srcHBSelect "switch_sequential_tb.dut.mux2_i" -win $_nTrace1
srcSetScope "switch_sequential_tb.dut.mux2_i" -delim "." -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.mux2_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalViewSelect "switch_sequential_tb.dut.mux2_i.valid_out"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "switch_sequential_tb.dut.mux2_i.data_out\[7:0\]"
srcSignalViewAddSelectedToWave
wvScrollDown -win $_nWave2 2
wvSelectGroup -win $_nWave2 {G5}
verdiSetActWin -win $_nWave2
srcHBSelect "switch_sequential_tb.dut.port3_i" -win $_nTrace1
srcSetScope "switch_sequential_tb.dut.port3_i" -delim "." -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.port3_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalViewSelect "switch_sequential_tb.dut.port3_i.valid_in"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
wvSetPosition -win $_nWave2 {("G5" 0)}
verdiSetActWin -win $_nWave2
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 1)}
srcSignalViewSelect "switch_sequential_tb.dut.port3_i.data_in\[7:0\]"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcHBSelect "switch_sequential_tb.dut.mux3_i" -win $_nTrace1
srcSetScope "switch_sequential_tb.dut.mux3_i" -delim "." -win $_nTrace1
srcHBSelect "switch_sequential_tb.dut.mux3_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalViewSelect "switch_sequential_tb.dut.mux3_i.valid_out"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "switch_sequential_tb.dut.mux3_i.data_out\[7:0\]"
srcSignalViewAddSelectedToWave
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
verdiSetActWin -win $_nWave2
wvSelectGroup -win $_nWave2 {G1}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetCursor -win $_nWave2 44.954620 -snap {("G1" 1)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSetSearchMode -win $_nWave2 -posedge
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSelectGroup -win $_nWave2 {port 0 if}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/_vcs_unit__1083842608"
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/port0_i"
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "G5" 5 )} 
wvSetPosition -win $_nWave2 {("G5" 5)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("port 0 if" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("port 0 if" 4)}
wvSetPosition -win $_nWave2 {("port 0 if" 5)}
wvScrollUp -win $_nWave2 5
wvSetPosition -win $_nWave2 {("port 0 if" 4)}
wvSetPosition -win $_nWave2 {("port 0 if" 2)}
wvSetPosition -win $_nWave2 {("port 0 if" 1)}
wvSetPosition -win $_nWave2 {("port 0 if" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("port 0 if" 0)}
wvSetPosition -win $_nWave2 {("port 0 if" 1)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSetCursor -win $_nWave2 69.652335 -snap {("port 0 if" 3)}
wvSelectSignal -win $_nWave2 {( "port 0 if" 3 )} 
wvSelectSignal -win $_nWave2 {( "port 0 if" 2 )} 
wvSelectGroup -win $_nWave2 {G1}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSelectGroup -win $_nWave2 {G3}
wvSelectSignal -win $_nWave2 {( "port 0 if" 1 )} 
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/port1_i"
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/port2_i"
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/switch_sequential_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/switch_sequential_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSetPosition -win $_nWave2 {("G4" 1)}
wvScrollDown -win $_nWave2 0
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/port3_i"
wvSetPosition -win $_nWave2 {("G5" 1)}
wvSetPosition -win $_nWave2 {("G5" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/switch_sequential_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/switch_sequential_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/switch_sequential_tb/dut/port3_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSetPosition -win $_nWave2 {("G5" 1)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
verdiSetActWin -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectGroup -win $_nWave2 {port 0 if}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/port0_i"
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/port0_i/port_fifo"
wvSetPosition -win $_nWave2 {("port 0 if" 4)}
wvSetPosition -win $_nWave2 {("port 0 if" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/fifo_empty} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/switch_sequential_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/switch_sequential_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/switch_sequential_tb/dut/port3_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "port 0 if" 4 )} 
wvSetPosition -win $_nWave2 {("port 0 if" 4)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSearchNext -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvSelectSignal -win $_nWave2 {( "G4" 5 )} 
wvSelectSignal -win $_nWave2 {( "G3" 4 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectGroup -win $_nWave2 {G3}
wvRenameGroup -win $_nWave2 {G3} {port1}
wvSelectGroup -win $_nWave2 {G4}
wvRenameGroup -win $_nWave2 {G4} {port2}
wvSelectGroup -win $_nWave2 {G5}
wvRenameGroup -win $_nWave2 {G5} {port3}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectGroup -win $_nWave2 {port 0 if}
wvSelectGroup -win $_nWave2 {port 0 if}
wvSelectSignal -win $_nWave2 {( "port 0 if" 5 )} 
wvSelectSignal -win $_nWave2 {( "port 0 if" 6 )} 
wvSelectSignal -win $_nWave2 {( "port 0 if" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("port 0 if" 4)}
wvSetPosition -win $_nWave2 {("port 0 if" 4)}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvAddGroup -win $_nWave2 {G7}
wvSelectSignal -win $_nWave2 {( "port1" 4 )} 
wvSelectGroup -win $_nWave2 {G7}
wvSelectSignal -win $_nWave2 {( "port 0 if" 1 )} 
wvSelectSignal -win $_nWave2 {( "port 0 if" 4 )} 
wvSelectSignal -win $_nWave2 {( "port 0 if" 6 )} 
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "port1" 2 )} 
wvSelectSignal -win $_nWave2 {( "port1" 3 )} 
wvSelectSignal -win $_nWave2 {( "port1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSelectSignal -win $_nWave2 {( "port 0 if" 3 )} 
wvSetCursor -win $_nWave2 109.272182 -snap {("port 0 if" 3)}
wvSetCursor -win $_nWave2 98.384001 -snap {("port 0 if" 3)}
wvSetCursor -win $_nWave2 110.393025 -snap {("port 0 if" 3)}
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("port 0 if" 5)}
wvSetPosition -win $_nWave2 {("port 0 if" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/fifo_empty} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/rd_en} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"port1" \
{/switch_sequential_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port2" \
{/switch_sequential_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port3" \
{/switch_sequential_tb/dut/port3_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "port 0 if" 5 )} 
wvSetPosition -win $_nWave2 {("port 0 if" 5)}
wvSetCursor -win $_nWave2 105.359165 -snap {("port 0 if" 6)}
wvSelectSignal -win $_nWave2 {( "port 0 if" 7 )} 
wvSelectSignal -win $_nWave2 {( "port1" 4 )} 
wvSetCursor -win $_nWave2 110.803255 -snap {("port1" 5)}
wvSetCursor -win $_nWave2 99.915074 -snap {("port1" 4)}
verdiFindBar -hide -win nWave_2
wvScrollUp -win $_nWave2 1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/port0_i"
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/mux0_i"
wvSetPosition -win $_nWave2 {("port 0 if" 6)}
wvSetPosition -win $_nWave2 {("port 0 if" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/fifo_empty} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/rd_en} -height 16 \
{/switch_sequential_tb/dut/mux0_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"port1" \
{/switch_sequential_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port2" \
{/switch_sequential_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port3" \
{/switch_sequential_tb/dut/port3_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "port 0 if" 6 )} 
wvSetPosition -win $_nWave2 {("port 0 if" 6)}
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 20.815640 -snap {("port 0 if" 6)}
wvSetCursor -win $_nWave2 17.933475 -snap {("port 0 if" 6)}
wvSetCursor -win $_nWave2 105.679406 -snap {("port 0 if" 6)}
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("port 0 if" 7)}
wvSetPosition -win $_nWave2 {("port 0 if" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/fifo_empty} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/rd_en} -height 16 \
{/switch_sequential_tb/dut/mux0_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/arb_active} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"port1" \
{/switch_sequential_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port2" \
{/switch_sequential_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port3" \
{/switch_sequential_tb/dut/port3_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "port 0 if" 7 )} 
wvSetPosition -win $_nWave2 {("port 0 if" 7)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/mux1_i"
wvSetPosition -win $_nWave2 {("port1" 5)}
wvSetPosition -win $_nWave2 {("port1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/fifo_empty} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/rd_en} -height 16 \
{/switch_sequential_tb/dut/mux0_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/arb_active} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"port1" \
{/switch_sequential_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/arb_active} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port2" \
{/switch_sequential_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port3" \
{/switch_sequential_tb/dut/port3_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "port1" 5 )} 
wvSetPosition -win $_nWave2 {("port1" 5)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "port 0 if" 7 )} 
wvSelectSignal -win $_nWave2 {( "port 0 if" 8 )} 
wvSelectSignal -win $_nWave2 {( "port 0 if" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("port1" 6)}
wvSetPosition -win $_nWave2 {("port1" 5)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/mux0_i"
wvSetPosition -win $_nWave2 {("port 0 if" 9)}
wvSetPosition -win $_nWave2 {("port 0 if" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/fifo_empty} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/rd_en} -height 16 \
{/switch_sequential_tb/dut/mux0_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/arb_active} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"port1" \
{/switch_sequential_tb/dut/port1_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux1_i/arb_active} -height 16 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port2" \
{/switch_sequential_tb/dut/port2_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port3" \
{/switch_sequential_tb/dut/port3_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "port 0 if" 9 )} 
wvSetPosition -win $_nWave2 {("port 0 if" 9)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "port1" 6 )} 
wvSelectSignal -win $_nWave2 {( "port 0 if" 9 )} 
wvSelectSignal -win $_nWave2 {( "port1" 6 )} 
wvSelectSignal -win $_nWave2 {( "port 0 if" 8 )} 
wvSelectSignal -win $_nWave2 {( "port 0 if" 9 )} 
wvSelectSignal -win $_nWave2 {( "port 0 if" 3 )} 
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectGroup -win $_nWave2 {G7}
wvScrollDown -win $_nWave2 2
wvSelectGroup -win $_nWave2 {G7} {port1}
wvSelectSignal -win $_nWave2 {( "port1" 5 )} 
wvSelectGroup -win $_nWave2 {port1}
wvChangeDisplayAttr -win $_nWave2 -c ID_RED5 -lw 0 -ls solid
wvSelectSignal -win $_nWave2 {( "port1" 4 )} 
wvSelectSignal -win $_nWave2 {( "port1" 1 )} 
wvSelectSignal -win $_nWave2 {( "port1" 1 2 3 4 5 )} 
wvSelectSignal -win $_nWave2 {( "port1" 1 2 3 4 5 6 )} 
wvChangeDisplayAttr -win $_nWave2 -c ID_RED5 -lw 1 -ls solid
wvChangeDisplayAttr -win $_nWave2 -c ID_CYAN5 -lw 1 -ls solid
wvSelectSignal -win $_nWave2 {( "port2" 1 )} 
wvSelectSignal -win $_nWave2 {( "port2" 1 2 3 4 5 )} 
wvChangeDisplayAttr -win $_nWave2 -c ID_GREEN5 -lw 1 -ls solid
wvSelectSignal -win $_nWave2 {( "port3" 1 )} 
wvSelectSignal -win $_nWave2 {( "port3" 1 2 3 4 5 )} 
wvChangeDisplayAttr -win $_nWave2 -c ID_PURPLE5 -lw 1 -ls solid
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 114.005662 -snap {("port2" 1)}
wvSetCursor -win $_nWave2 105.679406 -snap {("port2" 0)}
wvSelectSignal -win $_nWave2 {( "port1" 5 )} 
wvSelectSignal -win $_nWave2 {( "port1" 4 )} 
wvSelectGroup -win $_nWave2 {G7}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "port1" 1 )} 
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "port1" 2 )} 
wvSelectGroup -win $_nWave2 {port1}
wvSetCursor -win $_nWave2 273.549379 -snap {("port1" 2)}
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 329.031067 -snap {("port1" 3)}
wvSetCursor -win $_nWave2 317.498556 -snap {("port2" 5)}
wvSelectSignal -win $_nWave2 {( "port2" 1 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/port2_i"
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/mux2_i"
wvSetPosition -win $_nWave2 {("port2" 4)}
wvSetPosition -win $_nWave2 {("port2" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/fifo_empty} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/rd_en} -height 16 \
{/switch_sequential_tb/dut/mux0_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/arb_active} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"port1" \
{/switch_sequential_tb/dut/port1_i/current_state\[1:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/arb_active} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 -color ID_CYAN5 \
}
wvAddSignal -win $_nWave2 -group {"port2" \
{/switch_sequential_tb/dut/port2_i/current_state\[1:0\]} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/mux2_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 -color ID_GREEN5 \
}
wvAddSignal -win $_nWave2 -group {"port3" \
{/switch_sequential_tb/dut/port3_i/current_state\[1:0\]} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 -color ID_PURPLE5 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "port2" 4 )} 
wvSetPosition -win $_nWave2 {("port2" 4)}
wvSelectSignal -win $_nWave2 {( "port2" 4 )} 
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "port2" 4 )} 
wvSetPosition -win $_nWave2 {("port2" 4)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("port2" 4)}
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/top_arb_i"
wvSetPosition -win $_nWave2 {("port2" 5)}
wvSetPosition -win $_nWave2 {("port2" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/fifo_empty} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/rd_en} -height 16 \
{/switch_sequential_tb/dut/mux0_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/arb_active} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"port1" \
{/switch_sequential_tb/dut/port1_i/current_state\[1:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/arb_active} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 -color ID_CYAN5 \
}
wvAddSignal -win $_nWave2 -group {"port2" \
{/switch_sequential_tb/dut/port2_i/current_state\[1:0\]} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/mux2_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/top_arb_i/mux_sel2\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 -color ID_GREEN5 \
}
wvAddSignal -win $_nWave2 -group {"port3" \
{/switch_sequential_tb/dut/port3_i/current_state\[1:0\]} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 -color ID_PURPLE5 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
wvSetPosition -win $_nWave2 {("port2" 5)}
wvSetPosition -win $_nWave2 {("port2" 6)}
wvSetPosition -win $_nWave2 {("port2" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/fifo_empty} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/rd_en} -height 16 \
{/switch_sequential_tb/dut/mux0_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/arb_active} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"port1" \
{/switch_sequential_tb/dut/port1_i/current_state\[1:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/arb_active} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 -color ID_CYAN5 \
}
wvAddSignal -win $_nWave2 -group {"port2" \
{/switch_sequential_tb/dut/port2_i/current_state\[1:0\]} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/mux2_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/top_arb_i/mux_sel2\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/top_arb_i/win_out2\[3:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 -color ID_GREEN5 \
}
wvAddSignal -win $_nWave2 -group {"port3" \
{/switch_sequential_tb/dut/port3_i/current_state\[1:0\]} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 -color ID_PURPLE5 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "port2" 6 )} 
wvSetPosition -win $_nWave2 {("port2" 6)}
wvSelectSignal -win $_nWave2 {( "port2" 6 )} 
wvExpandBus -win $_nWave2
wvSelectSignal -win $_nWave2 {( "port2" 6 )} 
wvSetPosition -win $_nWave2 {("port2" 6)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("port2" 6)}
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
wvSetPosition -win $_nWave2 {("port2" 5)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("port2" 8)}
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
wvSetPosition -win $_nWave2 {("port2" 5)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("port2" 5)}
wvSetPosition -win $_nWave2 {("port2" 6)}
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
wvSetPosition -win $_nWave2 {("port2" 5)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("port2" 8)}
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
wvSetPosition -win $_nWave2 {("port2" 5)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("port2" 5)}
wvSetPosition -win $_nWave2 {("port2" 6)}
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
wvSetPosition -win $_nWave2 {("port2" 5)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("port2" 8)}
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
wvSetPosition -win $_nWave2 {("port2" 5)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("port2" 5)}
wvSetPosition -win $_nWave2 {("port2" 6)}
wvSelectSignal -win $_nWave2 {( "port2" 4 )} 
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
wvSetPosition -win $_nWave2 {("port2" 5)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("port2" 8)}
wvSelectSignal -win $_nWave2 {( "port2" 7 )} 
wvSelectSignal -win $_nWave2 {( "port2" 6 )} 
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
wvSetPosition -win $_nWave2 {("port2" 5)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("port2" 5)}
wvSetPosition -win $_nWave2 {("port2" 6)}
wvSelectSignal -win $_nWave2 {( "port2" 4 )} 
wvSetPosition -win $_nWave2 {("port2" 4)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("port2" 8)}
wvSelectSignal -win $_nWave2 {( "port2" 4 )} 
wvSetPosition -win $_nWave2 {("port2" 4)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("port2" 4)}
wvSetPosition -win $_nWave2 {("port2" 6)}
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/mux1_i"
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/mux2_i"
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/mux1_i"
wvSelectSignal -win $_nWave2 {( "port2" 8 )} 
wvSelectSignal -win $_nWave2 {( "port2" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("port2" 6)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/mux2_i"
wvSetPosition -win $_nWave2 {("port2" 7)}
wvSetPosition -win $_nWave2 {("port2" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/fifo_empty} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/rd_en} -height 16 \
{/switch_sequential_tb/dut/mux0_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/arb_active} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"port1" \
{/switch_sequential_tb/dut/port1_i/current_state\[1:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/arb_active} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 -color ID_CYAN5 \
}
wvAddSignal -win $_nWave2 -group {"port2" \
{/switch_sequential_tb/dut/port2_i/current_state\[1:0\]} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/mux2_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/top_arb_i/mux_sel2\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/top_arb_i/win_out2\[3:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 -color ID_GREEN5 \
}
wvAddSignal -win $_nWave2 -group {"port3" \
{/switch_sequential_tb/dut/port3_i/current_state\[1:0\]} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 -color ID_PURPLE5 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "port2" 7 )} 
wvSetPosition -win $_nWave2 {("port2" 7)}
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/mux1_i"
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/port2_i"
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/port1_i"
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/port1_i/port_fifo"
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "port1" 2 )} 
wvSetCursor -win $_nWave2 104.538542 -snap {("port1" 4)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "port2" 1 )} 
wvSelectSignal -win $_nWave2 {( "port2" 4 )} 
wvSelectSignal -win $_nWave2 {( "port2" 1 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/switch_sequential_tb/dut/mux2_i"
wvSetPosition -win $_nWave2 {("port2" 7)}
wvSetPosition -win $_nWave2 {("port2" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/switch_sequential_tb/clk} -height 16 \
{/switch_sequential_tb/rst_n} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"port 0 if" \
{/switch_sequential_tb/dut/port0_i/current_state\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/valid_in} -height 16 \
{/switch_sequential_tb/dut/port0_i/data_in\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/fifo_empty} -height 16 \
{/switch_sequential_tb/dut/port0_i/port_fifo/rd_en} -height 16 \
{/switch_sequential_tb/dut/mux0_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/arb_active} -height 16 \
{/switch_sequential_tb/dut/mux0_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux0_i/valid_out} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvAddSignal -win $_nWave2 -group {"port1" \
{/switch_sequential_tb/dut/port1_i/current_state\[1:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/port1_i/valid_in} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/port1_i/data_in\[7:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/data_out\[7:0\]} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/arb_active} -height 16 -color ID_CYAN5 \
{/switch_sequential_tb/dut/mux1_i/valid_out} -height 16 -color ID_CYAN5 \
}
wvAddSignal -win $_nWave2 -group {"port2" \
{/switch_sequential_tb/dut/port2_i/current_state\[1:0\]} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/port2_i/valid_in} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/port2_i/data_in\[7:0\]} -height 16 -color ID_GREEN5 \
{/switch_sequential_tb/dut/mux2_i/mux_sel\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/top_arb_i/mux_sel2\[1:0\]} -height 16 \
{/switch_sequential_tb/dut/top_arb_i/win_out2\[3:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/arb_active} -height 16 \
{/switch_sequential_tb/dut/mux2_i/data_out\[7:0\]} -height 16 \
{/switch_sequential_tb/dut/mux2_i/valid_out} -height 16 -color ID_GREEN5 \
}
wvAddSignal -win $_nWave2 -group {"port3" \
{/switch_sequential_tb/dut/port3_i/current_state\[1:0\]} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/port3_i/valid_in} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/port3_i/data_in\[7:0\]} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/mux3_i/valid_out} -height 16 -color ID_PURPLE5 \
{/switch_sequential_tb/dut/mux3_i/data_out\[7:0\]} -height 16 -color ID_PURPLE5 \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "port2" 7 )} 
wvSetPosition -win $_nWave2 {("port2" 7)}
wvSelectSignal -win $_nWave2 {( "port2" 8 )} 
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
wvSelectSignal -win $_nWave2 {( "port2" 4 )} 
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
wvSelectSignal -win $_nWave2 {( "port2" 6 )} 
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
wvSelectSignal -win $_nWave2 {( "port2" 4 )} 
wvSelectSignal -win $_nWave2 {( "port2" 6 )} 
wvSelectSignal -win $_nWave2 {( "port2" 5 )} 
debReload
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 553.419823 -snap {("port2" 3)}
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 701.001920 -snap {("port3" 2)}
wvSetCursor -win $_nWave2 697.799513 -snap {("port3" 2)}
wvSetCursor -win $_nWave2 697.799513 -snap {("port3" 3)}
wvSetCursor -win $_nWave2 714.452026 -snap {("port3" 3)}
