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
verdiWindowResize -win $_Verdi_1 "0" "24" "1278" "651"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_test.dut.mux0_i" -win $_nTrace1
srcHBSelect "switch_test.dut" -win $_nTrace1
srcHBSelect "switch_test.dut.mux0_i" -win $_nTrace1
srcHBSelect "switch_test.dut.mux0_i" -win $_nTrace1
srcSetScope "switch_test.dut.mux0_i" -delim "." -win $_nTrace1
srcHBSelect "switch_test.dut.mux0_i" -win $_nTrace1
srcHBSelect "switch_test.dut.port0_i" -win $_nTrace1
srcSetScope "switch_test.dut.port0_i" -delim "." -win $_nTrace1
srcHBSelect "switch_test.dut.port0_i" -win $_nTrace1
srcSignalViewSelect "switch_test.dut.port0_i.clk"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "switch_test.dut.port0_i.valid_in"
srcSignalViewSelect "switch_test.dut.port0_i.valid_in" \
           "switch_test.dut.port0_i.clk"
srcSignalViewSelect "switch_test.dut.port0_i.valid_in" \
           "switch_test.dut.port0_i.clk" \
           "switch_test.dut.port0_i.data_in\[7:0\]"
srcSignalViewSelect "switch_test.dut.port0_i.valid_in" \
           "switch_test.dut.port0_i.clk" \
           "switch_test.dut.port0_i.data_in\[7:0\]" \
           "switch_test.dut.port0_i.grant"
srcSignalViewSelect "switch_test.dut.port0_i.valid_in" \
           "switch_test.dut.port0_i.clk" \
           "switch_test.dut.port0_i.data_in\[7:0\]" \
           "switch_test.dut.port0_i.grant" \
           "switch_test.dut.port0_i.current_state\[1:0\]"
wvAddSignal -win $_nWave2 "/switch_test/dut/port0_i/valid_in" \
           "/switch_test/dut/port0_i/clk" \
           "/switch_test/dut/port0_i/data_in\[7:0\]" \
           "/switch_test/dut/port0_i/grant" \
           "/switch_test/dut/port0_i/current_state\[1:0\]"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSelectGroup -win $_nWave2 {G2}
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvMoveSelected -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
srcHBSelect "switch_test.dut.mux0_i" -win $_nTrace1
srcSetScope "switch_test.dut.mux0_i" -delim "." -win $_nTrace1
srcHBSelect "switch_test.dut.mux0_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalViewSelect "switch_test.dut.mux0_i.mux_sel\[1:0\]"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "switch_test.dut.mux0_i.mux_sel\[1:0\]" \
           "switch_test.dut.mux0_i.data_out\[7:0\]"
srcSignalViewSelect "switch_test.dut.mux0_i.mux_sel\[1:0\]" \
           "switch_test.dut.mux0_i.data_out\[7:0\]" \
           "switch_test.dut.mux0_i.target_out\[3:0\]"
srcSignalViewSelect "switch_test.dut.mux0_i.mux_sel\[1:0\]" \
           "switch_test.dut.mux0_i.data_out\[7:0\]" \
           "switch_test.dut.mux0_i.target_out\[3:0\]" \
           "switch_test.dut.mux0_i.source_out\[3:0\]"
srcSignalViewSelect "switch_test.dut.mux0_i.mux_sel\[1:0\]" \
           "switch_test.dut.mux0_i.data_out\[7:0\]" \
           "switch_test.dut.mux0_i.target_out\[3:0\]" \
           "switch_test.dut.mux0_i.source_out\[3:0\]" \
           "switch_test.dut.mux0_i.valid_out"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 "/switch_test/dut/mux0_i/mux_sel\[1:0\]" \
           "/switch_test/dut/mux0_i/data_out\[7:0\]" \
           "/switch_test/dut/mux0_i/target_out\[3:0\]" \
           "/switch_test/dut/mux0_i/source_out\[3:0\]" \
           "/switch_test/dut/mux0_i/valid_out"
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSelectGroup -win $_nWave2 {G2}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 9 10 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 9 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSelectGroup -win $_nWave2 {G2}
verdiSetActWin -dock widgetDock_<Inst._Tree>
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
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollDown -win $_nWave2 0
debRestoreSession \
           /project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/signals/Verdistucksss.ses
verdiFindBar -show -win nWave_3
verdiSetActWin -win $_nWave3
verdiWindowResize -win $_Verdi_1 "0" "24" "1440" "752"
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvScrollDown -win $_nWave3 10
wvScrollDown -win $_nWave3 2
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
wvSelectSignal -win $_nWave3 {( "G2" 1 )} 
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G2" 2 )} 
wvSelectSignal -win $_nWave3 {( "G2" 3 )} 
wvScrollDown -win $_nWave3 0
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvSetCursor -win $_nWave3 126.767914 -snap {("G2" 1)}
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_test.dut.port0_i.port_fifo" -win $_nTrace1
srcHBSelect "switch_test.dut.port0_i.port_fifo" -win $_nTrace1
srcSetScope "switch_test.dut.port0_i.port_fifo" -delim "." -win $_nTrace1
srcHBSelect "switch_test.dut.port0_i.port_fifo" -win $_nTrace1
srcSignalViewSelect "switch_test.dut.port0_i.port_fifo.fifo_empty"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcHBSelect "switch_test.dut.port1_i" -win $_nTrace1
srcSetScope "switch_test.dut.port1_i" -delim "." -win $_nTrace1
srcHBSelect "switch_test.dut.port1_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_test.dut.port1_i.port_fifo" -win $_nTrace1
srcSetScope "switch_test.dut.port1_i.port_fifo" -delim "." -win $_nTrace1
srcHBSelect "switch_test.dut.port1_i.port_fifo" -win $_nTrace1
srcSignalViewSelect "switch_test.dut.port1_i.port_fifo.fifo_empty"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcHBSelect "switch_test.dut.port2" -win $_nTrace1
srcSetScope "switch_test.dut.port2" -delim "." -win $_nTrace1
srcHBSelect "switch_test.dut.port2" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_test.dut.port2_i" -win $_nTrace1
srcSetScope "switch_test.dut.port2_i" -delim "." -win $_nTrace1
srcHBSelect "switch_test.dut.port2_i" -win $_nTrace1
srcHBSelect "switch_test.dut.port2_i.port_fifo" -win $_nTrace1
srcSetScope "switch_test.dut.port2_i.port_fifo" -delim "." -win $_nTrace1
srcHBSelect "switch_test.dut.port2_i.port_fifo" -win $_nTrace1
srcSignalViewSelect "switch_test.dut.port2_i.port_fifo.fifo_empty"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
srcHBSelect "switch_test.dut.port3_i" -win $_nTrace1
srcSetScope "switch_test.dut.port3_i" -delim "." -win $_nTrace1
srcHBSelect "switch_test.dut.port3_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_test.dut.port3_i.port_fifo" -win $_nTrace1
srcSetScope "switch_test.dut.port3_i.port_fifo" -delim "." -win $_nTrace1
srcHBSelect "switch_test.dut.port3_i.port_fifo" -win $_nTrace1
srcSignalViewSelect "switch_test.dut.port3_i.port_fifo.fifo_empty"
srcSignalViewAddSelectedToWave
verdiSetActWin -dock widgetDock_<Signal_List>
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 2277.989305 -snap {("G4" 1)}
verdiSetActWin -win $_nWave3
wvZoomOut -win $_nWave3
wvScrollUp -win $_nWave3 1
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
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
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
wvSelectSignal -win $_nWave3 {( "G3" 2 )} 
wvSelectSignal -win $_nWave3 {( "G3" 3 )} 
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
wvSelectSignal -win $_nWave3 {( "G3" 2 )} 
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
wvSelectSignal -win $_nWave3 {( "G3" 2 )} 
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
wvScrollUp -win $_nWave3 5
wvScrollUp -win $_nWave3 7
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvSelectSignal -win $_nWave3 {( "G1" 2 )} 
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
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
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 2623.618128 -snap {("G3" 2)}
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 1239.297005 -snap {("G3" 1)}
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
schCreateWindow -delim "." -win $_nSchema1 -scope \
           "switch_test.dut.port3_i.port_fifo"
verdiSetActWin -win $_nSchema_4
schZoomIn -win $_nSchema4 -pos 29519 2879
schZoomIn -win $_nSchema4 -pos 21691 3550
schZoomOut -win $_nSchema4
schSelect -win $_nSchema4 -port "data_in\[15:0\]"
schSelect -win $_nSchema4 -inst "fifo\(@1\):Always0:26:28:Combo"
schZoomIn -win $_nSchema4 -pos 12382 28
schZoomIn -win $_nSchema4 -pos 12507 -98
schZoomIn -win $_nSchema4 -pos 12507 -98
schSelect -win $_nSchema4 -inst "fifo\(@1\):SigOp1:64:64:Combo"
schZoomOut -win $_nSchema4 -pos 23262 1741
schZoomOut -win $_nSchema4 -pos 23262 1740
schZoomOut -win $_nSchema4 -pos 23151 1740
schZoomOut -win $_nSchema4 -pos 22875 1740
schZoomOut -win $_nSchema4 -pos 22701 1740
verdiDockToContainer -win $_nSchema_4 -newContainer -windowTitle "sss"
verdiWindowResize -win $_dockContainer_1 "0" "24" "770" "185"
schZoomIn -win $_nSchema4 -pos 18010 6350
schZoomIn -win $_nSchema4 -pos 18529 4877
schZoomIn -win $_nSchema4 -pos 19308 3318
schZoomIn -win $_nSchema4 -pos 19356 3317
schZoomIn -win $_nSchema4 -pos 19357 3317
schSelect -win $_nSchema4 -inst "fifo\(@1\):SigOp1:64:64:Combo"
schSelect -win $_nSchema4 -inst "fifo\(@1\):Always2:26:28:ComboMemory_mem\[7:0\]"
schZoomOut -win $_nSchema4 -pos 16069 2633
schZoomOut -win $_nSchema4 -pos 16000 2633
schZoomOut -win $_nSchema4 -pos 15786 2547
schZoomIn -win $_nSchema4 -pos 4493 -3554
schZoomIn -win $_nSchema4 -pos 1844 -3354
schZoomIn -win $_nSchema4 -pos 1844 -3354
schZoomOut -win $_nSchema4 -pos 1798 -2677
schZoomOut -win $_nSchema4 -pos 11759 -3834
schZoomOut -win $_nSchema4 -pos 11794 -3799
schZoom {-2624} {-9619} {36969} {10971} -win $_nSchema4
schCloseWindow -win $_nSchema4
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
debReload
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 132.801497 -snap {("G2" 2)}
verdiSetActWin -win $_nWave3
wvZoom -win $_nWave3 0.000000 232.402620
wvSetCursor -win $_nWave3 98.429345 -snap {("G2" 1)}
wvSetCursor -win $_nWave3 73.324891 -snap {("G2" 1)}
wvSetCursor -win $_nWave3 134.967511 -snap {("G2" 1)}
wvSetCursor -win $_nWave3 143.418515 -snap {("G2" 1)}
wvSetCursor -win $_nWave3 137.453101 -snap {("G2" 2)}
wvSetCursor -win $_nWave3 141.181485 -snap {("G2" 3)}
wvSetCursor -win $_nWave3 139.938690 -snap {("G2" 1)}
wvSetCursor -win $_nWave3 139.441572 -snap {("G2" 3)}
wvSetCursor -win $_nWave3 141.927162 -snap {("G2" 2)}
wvSetCursor -win $_nWave3 160.320524 -snap {("G2" 2)}
wvSetCursor -win $_nWave3 159.574847 -snap {("G2" 4)}
wvSetCursor -win $_nWave3 156.592140 -snap {("G2" 4)}
wvSetCursor -win $_nWave3 172.748472 -snap {("G3" 1)}
srcHBSelect "switch_test.dut.port3_i" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "switch_test.dut.port3_i" -win $_nTrace1
srcSetScope "switch_test.dut.port3_i" -delim "." -win $_nTrace1
srcHBSelect "switch_test.dut.port3_i" -win $_nTrace1
srcSignalViewSelect "switch_test.dut.port3_i.valid_in"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "switch_test.dut.port3_i.valid_in"
srcSignalViewAddSelectedToWave
wvSetPosition -win $_nWave3 {("G4" 4)}
wvSetPosition -win $_nWave3 {("G4" 2)}
wvSetPosition -win $_nWave3 {("G4" 0)}
wvSetPosition -win $_nWave3 {("G3" 3)}
wvSetPosition -win $_nWave3 {("G3" 2)}
wvSetPosition -win $_nWave3 {("G3" 1)}
verdiSetActWin -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 2)}
wvSetPosition -win $_nWave3 {("G3" 3)}
wvSetPosition -win $_nWave3 {("G4" 0)}
wvSetPosition -win $_nWave3 {("G3" 3)}
wvSetPosition -win $_nWave3 {("G3" 1)}
wvSetPosition -win $_nWave3 {("G3" 0)}
wvSetPosition -win $_nWave3 {("G3" 1)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 1)}
wvSetPosition -win $_nWave3 {("G3" 2)}
wvSetCursor -win $_nWave3 77.053275 -snap {("G3" 0)}
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
wvSelectSignal -win $_nWave3 {( "G3" 2 )} 
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
