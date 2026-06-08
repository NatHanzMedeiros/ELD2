vlib work
vcom -93 bcdcase.vhd

vsim work.bcdcase(ifsc_v1)

add wave -divider "Entradas"
add wave En
add wave -divider "Saidas"
add wave Ou

force	En "0000"
run 100ns

force	En "0111"
run 100ns

force	En "0101"
run 100ns

force	En "1000"
run 100ns

wave zoom full