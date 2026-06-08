quit -sim


vlib work
vcom -93 FlipFlopEnable.vhd
vsim work.FlipFlopEnable(ifsc_v1)

add wave -divider "Entradas"
add wave RST
add wave CLK
add wave E 
add wave D

add wave -divider "Saidas"
add wave Q

force CLK 0 0ns, 1 25ns -repeat 50ns

force RST "1"
run 20ns
force RST "0"

force E 1 0ns, 0 50ns -repeat 100ns
force D 0 0ns, 1 70ns -repeat 140ns

run 480ns

wave zoom full