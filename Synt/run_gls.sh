#!/bin/bash

# 1. Define Assertions
ASSERTIONS="../verification/assertions.sv"

# 2. Define the Simulation Library (SAED32)
# This is the path we confirmed exists on your server
SAED32_VRG="/data/synopsys/lib/saed32nm/lib/std/verilog/saed32nm.v"

# 3. Choose which netlist to simulate
# Uncomment the one you want to test:

# Option A: Standard Synthesis (from synth.tcl)
# NETLIST="switch_4port_netlist.v"

# Option B: Low Power / Clock Gating (from synth_cg.tcl)
NETLIST="switch_4port_cg.v" 

# 4. Run VCS
# We use the '-v' flag to include the SAED32 standard cells
vcs -sverilog -debug_access+all -full64 \
    -timescale=1ns/1ps \
    +vcs+lic+wait \             
    -v $SAED32_VRG \
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
    $NETLIST \
    -o simv_gls

# 5. Check if compilation succeeded
if [ $? -eq 0 ]; then
    echo "GLS Compilation Successful. Running Simulation..."
    ./simv_gls
else
    echo "GLS Compilation Failed!"
fi