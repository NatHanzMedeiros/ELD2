transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/aluno/Documentos/timer_restored/db {/home/aluno/Documentos/timer_restored/db/pll_timer_altpll.v}
vcom -93 -work work {/home/aluno/Documentos/timer_restored/list_09_05_06_timer_CORRIGIDO_50mhz.vhd}
vcom -93 -work work {/home/aluno/Documentos/timer_restored/bcd2ssd.vhd}
vcom -93 -work work {/home/aluno/Documentos/timer_restored/bin2bcd.vhd}
vcom -93 -work work {/home/aluno/Documentos/timer_restored/top_timer_de2_115.vhd}
vcom -93 -work work {/home/aluno/Documentos/timer_restored/pll_timer.vhd}

