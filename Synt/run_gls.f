// 1. Packages & Interfaces
../design/packet_pkg.sv
../design/port_if.sv

// 2. Verification Extras (NOT in package)
../verification/assertions.sv

// 3. DUT Wrapper & Netlist
../verification/dut_wrapper.sv
./switch_4port_netlist_cg.v

// 4. Testbench Top
../verification/switch_test.sv

// 5. Library (Keep your SAED paths)
-v ./saed32nm_hvt_fixed.tv
-v ./saed32nm_rvt_fixed.tv
-v ./saed32nm_lvt_fixed.tv