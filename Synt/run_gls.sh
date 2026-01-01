#!/bin/bash

# 1. Define Paths
SAED32="/data/synopsys/lib/saed32nm/lib/std/verilog/saed32nm.v"
# Point to your standard NETLIST (Not clock gated)
NETLIST="../Synt/switch_4port_netlist.v"

# 2. Compile
# Note: We use +define+SDF_ANNOTATE which now does TWO jobs:
#       1. Loads the .sdf file (in the `initial` block)
#       2. Disables the RTL probes (via the `ifndef` blocks)
vcs -sverilog -debug_access+all -full64 -kdb \
    -timescale=1ns/1ps \
    -top switch_test \
    +vcs+lic+wait \
    +define+SDF_ANNOTATE \
    -v $SAED32 \
    ../design/packet_pkg.sv \
    ../design/port_if.sv \
    ../verification/assertions.sv \
    ../verification/component_base.sv \
    ../verification/packet_vc.sv \
    ../verification/monitor.sv \
    ../verification/sequencer.sv \
    ../verification/driver.sv \
    ../verification/agent.sv \
    ../verification/checker.sv \
    ../verification/switch_test.sv \
    $NETLIST \
    -o simv_gls

# 3. Launch
if [ $? -eq 0 ]; then
    echo "Compilation Successful. Launching Verdi..."
    ./simv_gls -gui=verdi
else
    echo "Compilation Failed!"
fi