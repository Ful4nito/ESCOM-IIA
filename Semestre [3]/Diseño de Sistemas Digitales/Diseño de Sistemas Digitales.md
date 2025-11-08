---
tags:
  - Tercero
  - Tecnologicas
cssclasses:
  - TECNOLOGICAS
---
[[disenoSistemasDigitales_IIA2020.pdf|Programa Sintético: 📄]]
Profesor: Carlos Lerma Magaña
Alumno: Jonathan Leon Baez Pacheco - Grupo: 3BV1
____
____
## I.  REGISTROS
---
____
### Dispositivos Lógicos Programables

Diferencias con software
Sistema secuencial

Arreglos de compuertas programables y fijos

PLD
    SPLD
    CPLD
    FPGA

Principales fabricantes
    Altera
    Atmel
    Laticce
    Xilins > Altera > Vivado
    Vatis
    Cypress


SPLD Reducida cantidad de macro celdas, cuando se utiliza el flipflop de la macro celda

Los CPLD tienen bloques específicos de compuertas

FPGA Arreglo de compuertas programables por campo, se emplea un codigo en HDL que crean hardware dentro de la FPGA.
vhsic HDL very high speed integrated circuit

| Placa       | Modelo   | Densidad de compuertas | sofware |
| ----------- | -------- | ---------------------- | ------- |
| Spartan II  | XC2515   | 15000                  | Cyclone |
| Spartan IIE | XC25150E | 150000                 |         |
| Virtex II   | XC2V8000 | 8000000                |         |

### Tema2

Estilos de programacion en HDL
Funcional. if else

Flujo de datos. when else

Estructural. circuitos

__Restador de 4 Bits__
``` vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Restador4Bits is
    Port (
        A    : in  STD_LOGIC_VECTOR (3 downto 0);
        B    : in  STD_LOGIC_VECTOR (3 downto 0);
        R    : out STD_LOGIC_VECTOR (3 downto 0);
        BorrowOut : out STD_LOGIC
    );
end Restador4Bits;

architecture Behavioral of Restador4Bits is
    signal B_complement : STD_LOGIC_VECTOR (3 downto 0);
    signal temp_result  : STD_LOGIC_VECTOR (4 downto 0);
begin
    process(A, B)
    begin
        -- Resta A - B = A + (complemento a 2 de B)
        B_complement <= not B + 1;
        temp_result <= ('0' & A) + ('0' & B_complement);  -- 5 bits para incluir borrow
        R <= temp_result(3 downto 0);
        BorrowOut <= not temp_result(4); -- Si el bit más significativo es 0, hubo "préstamo"
    end process;
end Behavioral;
```

____
## II.  DISEÑO DE SISTEMAS DIGITALES
---



## III.  CONTADORES
____






## IV.  MEMORIAS
____






## V.  MÁQUINA DE ESTADO ALGORÍTMICA


