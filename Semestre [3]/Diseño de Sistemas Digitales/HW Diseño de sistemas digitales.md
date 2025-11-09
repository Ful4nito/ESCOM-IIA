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

### Practica_1 Sumador y Restador

~~SUMADOR Y RESTADOR~~

### Practica_2 Comparador


### Practica 3 ALU

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

### Practica_4 Memoria RAM

Implementar una memoria RAM 16x8Bits

``` vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RAM16x8_Nexys4 is
    Port (
        SW      : in  STD_LOGIC_VECTOR(15 downto 0);
        BTNC    : in  STD_LOGIC;
        SEG     : out STD_LOGIC_VECTOR(6 downto 0);
        AN      : out STD_LOGIC_VECTOR(7 downto 0);
        LED     : out STD_LOGIC_VECTOR(7 downto 0)
    );
end RAM16x8_Nexys4;

architecture Behavioral of RAM16x8_Nexys4 is

    -- Señales de control
    signal addr : STD_LOGIC_VECTOR(3 downto 0);
    signal data_in : STD_LOGIC_VECTOR(7 downto 0);
    signal data_out : STD_LOGIC_VECTOR(7 downto 0);
    signal enable, rw : STD_LOGIC;
    signal btn_sync, btn_last : STD_LOGIC := '0';
    signal clk_manual : STD_LOGIC := '0';

    -- Memoria 16x8
    type RAM_TYPE is array(0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
    signal RAM : RAM_TYPE := (others => (others => '0'));

    -- Para displays
    signal bcd0, bcd1, bcd2 : STD_LOGIC_VECTOR(3 downto 0);
    signal display_sel : integer range 0 to 3 := 0;
    signal active_data : STD_LOGIC_VECTOR(7 downto 0);

begin
    ------------------------------------------------------------------
    -- Asignación de señales desde switches
    ------------------------------------------------------------------
    addr     <= SW(3) & SW(2) & SW(1) & SW(0);  -- Dirección
    enable   <= SW(4);                          -- Enable
    rw       <= SW(5);                          -- R/~W
    data_in  <= SW(15 downto 8);                -- Datos de entrada

    ------------------------------------------------------------------
    -- Detección de flanco de subida del botón BTNC (reloj manual)
    ------------------------------------------------------------------
    process(BTNC)
    begin
        if rising_edge(BTNC) then
            clk_manual <= not clk_manual;
        end if;
    end process;

    ------------------------------------------------------------------
    -- Proceso de lectura/escritura (usa el reloj manual)
    ------------------------------------------------------------------
    process(clk_manual)
    begin
        if rising_edge(clk_manual) then
            if enable = '1' then
                if rw = '0' then  -- Escritura
                    RAM(to_integer(unsigned(addr))) <= data_in;
                    data_out <= data_in;
                else               -- Lectura
                    data_out <= RAM(to_integer(unsigned(addr)));
                end if;
            end if;
        end if;
    end process;

    ------------------------------------------------------------------
    -- Selección de qué dato mostrar (lectura o escritura)
    ------------------------------------------------------------------
    active_data <= (others => '0') when enable = '0' else data_out;

    ------------------------------------------------------------------
    -- Conversión a decimal (para displays)
    ------------------------------------------------------------------
    process(active_data)
        variable val : integer;
        variable d0, d1, d2 : integer;
    begin
        val := to_integer(unsigned(active_data));
        d0 := val mod 10;
        d1 := (val / 10) mod 10;
        d2 := (val / 100) mod 10;

        bcd0 <= std_logic_vector(to_unsigned(d0,4));
        bcd1 <= std_logic_vector(to_unsigned(d1,4));
        bcd2 <= std_logic_vector(to_unsigned(d2,4));
    end process;

    ------------------------------------------------------------------
    -- Decodificador 7 segmentos (hex y dec)
    ------------------------------------------------------------------
    function to7seg(bcd : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
    begin
        case bcd is
            when "0000" => return "0000001"; -- 0
            when "0001" => return "1001111"; -- 1
            when "0010" => return "0010010"; -- 2
            when "0011" => return "0000110"; -- 3
            when "0100" => return "1001100"; -- 4
            when "0101" => return "0100100"; -- 5
            when "0110" => return "0100000"; -- 6
            when "0111" => return "0001111"; -- 7
            when "1000" => return "0000000"; -- 8
            when "1001" => return "0000100"; -- 9
            when "1010" => return "0001000"; -- A
            when "1011" => return "1100000"; -- b
            when "1100" => return "0110001"; -- C
            when "1101" => return "1000010"; -- d
            when "1110" => return "0110000"; -- E
            when "1111" => return "0111000"; -- F
            when others => return "1111111";
        end case;
    end function;

    ------------------------------------------------------------------
    -- Multiplexado de displays
    ------------------------------------------------------------------
    process(clk_manual)
    begin
        if rising_edge(clk_manual) then
            if enable = '0' then
                AN  <= "11111110";  -- solo AN0
                SEG <= "0111111";   -- solo segmento g
            else
                case display_sel is
                    when 0 =>
                        AN <= "11111110"; -- AN0 -> unidades
                        SEG <= to7seg(bcd0);
                    when 1 =>
                        AN <= "11111101"; -- AN1 -> decenas
                        SEG <= to7seg(bcd1);
                    when 2 =>
                        AN <= "11111011"; -- AN2 -> centenas
                        SEG <= to7seg(bcd2);
                    when 3 =>
                        AN <= "01111111"; -- AN7 -> dirección hex
                        SEG <= to7seg(addr);
                    when others =>
                        AN <= "11111111";
                        SEG <= "1111111";
                end case;
                display_sel <= (display_sel + 1) mod 4;
            end if;
        end if;
    end process;

    ------------------------------------------------------------------
    -- Mostrar datos en LEDs (binario)
    ------------------------------------------------------------------
    LED <= (others => '0') when enable = '0' else active_data;

end Behavioral;

```