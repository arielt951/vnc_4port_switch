#!/bin/bash

# Define the assertion files (Update filenames if different!)
ASSERTIONS="../verification/assertions.sv"

# Run VCS with GTECH library + Netlist + switch_test.sv
vcs -sverilog -debug_access+all -full64 \
    -timescale=1ns/1ps \
    -v /tools/synopsys/syn/W-2024.09-SP3/dw/sim_ver/DW_gtech.v \ # TODO ADD LIB PATH
    +define+SDF_ANNOTATE \
    ../design/packet_pkg.sv \
    ../design/port_if.sv \
    $ASSERTIONS \
    ../verification/component_base.sv \
    ../verification/packet_vc.sv \
    ../verification/monitor.sv \
    ../verification/sequencer.sv \
    ../verification/driver.sv \
    ../verification/agent.sv \
    ../verification/checker.sv \
    ../verification/switch_test.sv \
    switch_4port_netlist.v \
    -o simv_gls
# Check if compile succeeded
if [ $? -eq 0 ]; then
    echo "Compilation Successful. Running Simulation..."
    ./simv_gls
else
    echo "Compilation Failed!"
fi