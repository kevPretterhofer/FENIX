#read_labels test/labels.txt
parse_design test/circuit.json
#load_design test/circuit.data
show_design test/circuit.dot
#read_trace test/circuit.vcd
#read_labels test/labels.txt
set_mode stable 
set_order 1
set_cycles 10
build_formula
exit