verdiFindBar -show
simSetSimulator "-vcssv" -exec \
           "/project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/simv" \
           -args
debImport "-dbdir" \
          "/project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/simv.daidir"
debLoadSimResult \
           /project/verif/users/arielt/ws/ex_vlsi_switch_project_ariel/novas.fsdb
wvCreateWindow
verdiFindBar -show -win nWave_2
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "0" "24" "1278" "651"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
