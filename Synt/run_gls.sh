#!/bin/bash

# 1. Define Paths
ASSERTIONS="../verification/assertions.sv"
SAED32_VRG="/data/synopsys/lib/saed32nm/lib/std/verilog/saed32nm.v"

# 2. Choose Netlist (Standard or Low Power)
# NETLIST="switch_4port_netlist.v"  
NETLIST="switch_4port_cg.v"      

# 3. Compile with VCS + KDB (Required for Verdi)
# Added '-kdb' to generate the database Verdi needs.
vcs -sverilog -debug_access+all -full64 -kdb \
    -timescale=1ns/1ps \
    -top switch_test \
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

# 4. Launch Simulation in Verdi GUI
if [ $? -eq 0 ]; then
    echo "Compilation Successful. Launching Verdi..."
    ./simv_gls -gui=verdi
else
    echo "GLS Compilation Failed!"
fi