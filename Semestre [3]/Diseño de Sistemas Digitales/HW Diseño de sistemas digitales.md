---
cssclasses:
  - HWK
---

## INVESTIGACIONES
### RaspBerry 

~~ENTREGA: 30 AGOSTO 25~~

Realizar una breve investigación acerca de las tarjetas Raspberry.  [[Investigacion Raspberry.pdf|PDF 📄]]
Características:
- Individual
- 2 a 4 cuartillas
- Colocar imágenes relacionadas con el escrito.
- Arial 12 puntos, justificado.
- Referencias en formato IEEE.
- Carátula con todos sus datos.



### Nexys IV

~~ENTREGA VENCIDA~~


## Practica Fuente de poder
__ENTREGA: 20 SEPTIEMBRE 2025__

Armar una fuente de Alimentación fija de 5V y variable de 1.25V  a 12V CD

Materiales:
- [x] 1 Clavija de corriente
- [x] 2 Metros de cable doble polo 14AWG
- [x] 1 Interruptor
- [x] 2 Porta fusible
- [x] 1 Fusible 1A
- [x] 1 Fusible 3A
- [x] 1 Transformador 12V 3A
- [x] 4 Diodos rectificadores 1N5404 ó 1 Puente de diodos 6A
- [x] 2 Diodos rectificadores 1N4007
- [x] 1 Capacitor Electrolítico 2200uF 25V
- [x] 1 Capacitor Electrolítico 10uF 50V
- [x] 1 Capacitor de cerámico 100nF
- [x] 1 Resistencia de 560 Ω
- [x] 1 Resistencia de 1 KΩ
- [x] 1 Led
- [x] 1 Potenciómetro de 5 KΩ
- [x] 1 Regulador LM317
- [x] 1 Regulador 7805
- [x] 1 Placa Fenólica 150 x 75 mm
- [x] 2 Disipadores para TO-220
- [x] 2 Bloque terminal de 2 polos
- [x] Caja para encapsular la fuente

Diagrama Eléctrico
## Exposición IV. Memorias
~~EXPO: 18 SEPTIEMBRE 2025~~

4.1 Memorias y su clasificación 
4.2 Memorias RAM, SRAM y DRAM 
4.3 Memorias ROM, PROM, EPROM, EEPROM Y Flash 
4.4 Tipos especiales de memorias, FIFO y NVRAM 
4.5 Módulos de memorias 
4.6 Manejo de arreglos y diseño de memorias RAM, ROM y FIFO con lenguaje de descripción de hardware

## Proyecto Final
~~ENTREGA EN NOVIEMBRE~~

__CONTROL DE ACCESO POR RECONOCIMIENTO FACIAL__


__CODIGO ARDUINO__
``` c
include <servo.h>
```

## PRACTICAS

### Practica 1

~~SUMADOR Y RESTADOR~~

### Practica 2


### Practica 3

~~ALU 4 BITS~~

``` vhdl
----------------------------------------------------------------------------------
-- Company: ESCOM 
-- Engineer: EQUIPO 4 
-- 
-- Create Date: 26.10.2025 20:52:04
-- Design Name: PRACTICA #3
-- Module Name: ALU_4BITS - Behavioral
-- Target Devices: NEXYS4 ARTIX-7
-- Description: Unidad Aritmetica Logica de 4 Bits
--  Aritmetica: Suma Resta
--  Logica:     AND OR XOR NOT-A NOT-B
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_4_BITS is
    Port (
        A   : in  STD_LOGIC_VECTOR(3 downto 0);
        B   : in  STD_LOGIC_VECTOR(3 downto 0);
        sel : in  STD_LOGIC_VECTOR(2 downto 0);
        R   : out STD_LOGIC_VECTOR(3 downto 0);
        Cout: out STD_LOGIC
    );
end ALU_4_BITS;

architecture Behavioral of ALU_4_BITS is
    signal tmp : STD_LOGIC_VECTOR(4 downto 0);
begin
    process (A, B, sel)
    begin
        case sel is
            when "000" =>  -- Suma
                tmp <= ('0' & A) + ('0' & B);
                R <= tmp(3 downto 0);
                Cout <= tmp(4);

            when "001" =>  -- Resta
                tmp <= ('0' & A) - ('0' & B);
                R <= tmp(3 downto 0);
                Cout <= tmp(4);

            when "010" =>  -- AND
                R <= A and B;
                Cout <= '0';

            when "011" =>  -- OR
                R <= A or B;
                Cout <= '0';

            when "100" =>  -- NOT (solo A)
                R <= not A;
                Cout <= '0';

            when "101" =>  -- XOR
                R <= A xor B;
                Cout <= '0';

            when others =>
                R <= (others => '0');
                Cout <= '0';
        end case;
    end process;
end Behavioral;

```

``` vhdl
## Switches A[3:0]
set_property PACKAGE_PIN W17 [get_ports {A[0]}]
set_property PACKAGE_PIN W16 [get_ports {A[1]}]
set_property PACKAGE_PIN V16 [get_ports {A[2]}]
set_property PACKAGE_PIN V17 [get_ports {A[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {A[*]}]

## Switches B[3:0]
set_property PACKAGE_PIN V13 [get_ports {B[0]}]
set_property PACKAGE_PIN V14 [get_ports {B[1]}]
set_property PACKAGE_PIN W14 [get_ports {B[2]}]
set_property PACKAGE_PIN W15 [get_ports {B[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B[*]}]

## Selección sel[2:0]
set_property PACKAGE_PIN V12 [get_ports {sel[0]}]
set_property PACKAGE_PIN W12 [get_ports {sel[1]}]
set_property PACKAGE_PIN W13 [get_ports {sel[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sel[*]}]

## LEDs R[3:0]
set_property PACKAGE_PIN V19 [get_ports {R[0]}]
set_property PACKAGE_PIN U19 [get_ports {R[1]}]
set_property PACKAGE_PIN E19 [get_ports {R[2]}]
set_property PACKAGE_PIN U16 [get_ports {R[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R[*]}]

## LED de Carry
set_property PACKAGE_PIN W18 [get_ports {Cout}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cout}]
```