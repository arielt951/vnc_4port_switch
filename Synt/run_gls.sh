#!/bin/bash

# 1. Define Paths
SAED32="/data/synopsys/lib/saed32nm/lib/std/verilog/saed32nm.v"

# DIRECT PATH (Since you are in Synt/)
NETLIST="./switch_4port_netlist.v"

# 2. Compile with Strict Order
# Order Logic:
# 1. packet_pkg (Defines types)
# 2. component_base (Base class)
# 3. monitor/sequencer (Independent components)
# 4. checker (Needs monitor)
# 5. driver (Needs checker)
# 6. agent (Needs driver, sequencer, monitor)
# 7. packet_vc (Needs agent)
# 8. switch_test (Needs everything)

vcs -sverilog -debug_access+all -full64 -kdb \
    -timescale=1ns/1ps \
    -top switch_test \
    -v $SAED32 \
    +define+SDF_ANNOTATE \
    ../design/packet_pkg.sv \
    ../design/port_if.sv \
    ../verification/assertions.sv \
    ../verification/component_base.sv \
    ../verification/monitor.sv \
    ../verification/sequencer.sv \
    ../verification/checker.sv \
    ../verification/driver.sv \
    ../verification/agent.sv \
    ../verification/packet_vc.sv \
    ../verification/switch_test.sv \
    $NETLIST \
    -o simv_gls

# 3. Launch
if [ $? -eq 0 ]; then
    echo "GLS Compilation Successful. Launching Verdi..."
    ./simv_gls -gui=verdi
else
    echo "GLS Compilation Failed! (Check syntax errors above)"
fi