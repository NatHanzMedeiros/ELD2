transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/nathan.mc05/Documentos/BCDAULA_30_04/bcdcase.vhd}

