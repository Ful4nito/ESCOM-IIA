## Switches (direcciones y datos)
set_property PACKAGE_PIN P4 [get_ports {SW[0]}]
set_property PACKAGE_PIN P3 [get_ports {SW[1]}]
set_property PACKAGE_PIN R3 [get_ports {SW[2]}]
set_property PACKAGE_PIN T1 [get_ports {SW[3]}]
set_property PACKAGE_PIN U2 [get_ports {SW[4]}]   # Enable
set_property PACKAGE_PIN V2 [get_ports {SW[5]}]   # R/~W
set_property PACKAGE_PIN V5 [get_ports {SW[8]}]
set_property PACKAGE_PIN V6 [get_ports {SW[9]}]
set_property PACKAGE_PIN V7 [get_ports {SW[10]}]
set_property PACKAGE_PIN R5 [get_ports {SW[11]}]
set_property PACKAGE_PIN R6 [get_ports {SW[12]}]
set_property PACKAGE_PIN R7 [get_ports {SW[13]}]
set_property PACKAGE_PIN U8 [get_ports {SW[14]}]
set_property PACKAGE_PIN U9 [get_ports {SW[15]}]

## Displays 7 segmentos
set_property PACKAGE_PIN N6 [get_ports {AN[0]}]
set_property PACKAGE_PIN M6 [get_ports {AN[1]}]
set_property PACKAGE_PIN M3 [get_ports {AN[2]}]
set_property PACKAGE_PIN M1 [get_ports {AN[7]}]

## Segmentos
set_property PACKAGE_PIN W7 [get_ports {SEG[0]}]
set_property PACKAGE_PIN W6 [get_ports {SEG[1]}]
set_property PACKAGE_PIN U8 [get_ports {SEG[2]}]
set_property PACKAGE_PIN V8 [get_ports {SEG[3]}]
set_property PACKAGE_PIN U5 [get_ports {SEG[4]}]
set_property PACKAGE_PIN V5 [get_ports {SEG[5]}]
set_property PACKAGE_PIN U7 [get_ports {SEG[6]}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {LED[0]}]
set_property PACKAGE_PIN E19 [get_ports {LED[1]}]
set_property PACKAGE_PIN U19 [get_ports {LED[2]}]
set_property PACKAGE_PIN V19 [get_ports {LED[3]}]
set_property PACKAGE_PIN W18 [get_ports {LED[4]}]
set_property PACKAGE_PIN U15 [get_ports {LED[5]}]
set_property PACKAGE_PIN U14 [get_ports {LED[6]}]
set_property PACKAGE_PIN V14 [get_ports {LED[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[*]}]

## Botón central
set_property PACKAGE_PIN M17 [get_ports {BTNC}]
set_property IOSTANDARD LVCMOS33 [get_ports {BTNC}]
