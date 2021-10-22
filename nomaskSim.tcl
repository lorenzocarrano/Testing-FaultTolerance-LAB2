read_netlist pdt2002.v -library -insensitive
read_netlist c6288.vhd -insensitive -master
run_build_model c6288
run_drc c6288.stil
set_faults -model stuck
add_faults -all
set_patterns -external c6288.stil
report_patterns -external -all
run_simulation
run_fault_sim
report_summaries
