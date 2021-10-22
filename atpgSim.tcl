read_netlist pdt2002.v -library -insensitive
read_netlist c6288.vhd -insensitive -master
run_build_model c6288
#adding primary inputs contraints
add_pi_constraints X datai(0)
add_pi_constraints X  datai(1)
add_pi_constraints X datai(2)
#adding primary output masks
#add_po_masks datao(1)
#################################
report_primitives -pos
run_drc c6288.stil
set_faults -model stuck
add_faults -all
set_patterns -internal
run_atpg -auto_compression
set_faults -summary verbose -fault_coverage
report_summaries
quit
