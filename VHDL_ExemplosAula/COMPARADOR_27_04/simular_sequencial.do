# 1. Preparação do Ambiente
vlib work
vcom -93 sequencial.vhd

# 2. Inicialização da Simulação usando a CONFIGURATION
vsim work.cfg_ifsc

# 3. Organização da Janela Wave
add wave -divider "Entradas"
add wave -format literal -radix decimal /sequencial/A
add wave -format literal -radix decimal /sequencial/B
add wave -divider "Resultados"
add wave /sequencial/gt
add wave /sequencial/eq
add wave /sequencial/lt


# Caso 1: A (5) > B (2)
force A 00000101
force B 00000010
run 50ns

# Caso 2: A (-1) < B (0)
force A 11111111
force B 00000000
run 50ns

# Caso 3: A (10) = B (10)
force A 00001010
force B 00001010
run 50ns


wave zoom full