read_netlist pdt2002.v -library -insensitive
read_netlist c6288.vhd -insensitive -master
run_build_model c6288
add_po_masks datao(0)
#add_po_masks datao(1)
#add_po_masks datao(2)
#add_po_masks datao(3)
add_po_masks datao(4)
add_po_masks datao(5)
add_po_masks datao(6)
add_po_masks datao(7)
add_po_masks datao(8)
add_po_masks datao(9)
add_po_masks datao(10)
add_po_masks datao(11)
add_po_masks datao(12)
add_po_masks datao(13)
add_po_masks datao(14)
add_po_masks datao(15)
add_po_masks datao(16)
add_po_masks datao(17)
add_po_masks datao(18)
add_po_masks datao(19)
add_po_masks datao(20)
add_po_masks datao(21)
add_po_masks datao(22)
add_po_masks datao(23)
add_po_masks datao(24)
add_po_masks datao(25)
add_po_masks datao(26)
add_po_masks datao(27)
add_po_masks datao(28)
add_po_masks datao(29)
add_po_masks datao(30)
add_po_masks datao(31)
report_primitives -pos
run_drc c6288.stil
set_faults -model stuck
add_faults -all
set_patterns -external c6288.stil
report_patterns -external -all
run_simulation
run_fault_sim
report_summaries
