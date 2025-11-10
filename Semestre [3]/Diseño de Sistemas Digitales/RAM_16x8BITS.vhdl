library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RAM16x8_Nexys4 is
    Port (
        SW     : in  STD_LOGIC_VECTOR(15 downto 0);  -- Switches
        BTNC   : in  STD_LOGIC;                      -- Reloj manual
        SEG    : out STD_LOGIC_VECTOR(6 downto 0);   -- Segmentos a–g
        AN     : out STD_LOGIC_VECTOR(7 downto 0);   -- Anodos
        LED    : out STD_LOGIC_VECTOR(7 downto 0)    -- Leds (binario)
    );
end RAM16x8_Nexys4;

architecture Behavioral of RAM16x8_Nexys4 is

    -- RAM 16x8 bits
    type ram_type is array (0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
    signal RAM : ram_type := (others => (others => '0'));

    -- Señales de control
    signal addr   : STD_LOGIC_VECTOR(3 downto 0);
    signal data_in, data_out : STD_LOGIC_VECTOR(7 downto 0);
    signal enable, rw : STD_LOGIC;
    signal clk_manual : STD_LOGIC;

    -- Señales para mostrar
    signal data_int : integer range 0 to 255;
    signal addr_int : integer range 0 to 15;

    ----------------------------------------------------------------------------
    -- FUNCTION: decodificador hexadecimal → segmentos
    ----------------------------------------------------------------------------
    function HEX_TO_7SEG(x : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
        variable segs : STD_LOGIC_VECTOR(6 downto 0);
    begin
        case x is
            when "0000" => segs := "0000001"; -- 0
            when "0001" => segs := "1001111"; -- 1
            when "0010" => segs := "0010010"; -- 2
            when "0011" => segs := "0000110"; -- 3
            when "0100" => segs := "1001100"; -- 4
            when "0101" => segs := "0100100"; -- 5
            when "0110" => segs := "0100000"; -- 6
            when "0111" => segs := "0001111"; -- 7
            when "1000" => segs := "0000000"; -- 8
            when "1001" => segs := "0000100"; -- 9
            when "1010" => segs := "0001000"; -- A
            when "1011" => segs := "1100000"; -- b
            when "1100" => segs := "0110001"; -- C
            when "1101" => segs := "1000010"; -- d
            when "1110" => segs := "0110000"; -- E
            when "1111" => segs := "0111000"; -- F
            when others => segs := "1111111"; -- Apagado
        end case;
        return segs;
    end function;

begin
    ----------------------------------------------------------------------------
    -- Asignaciones de entradas
    ----------------------------------------------------------------------------
    addr   <= SW(3 downto 0);
    enable <= SW(4);
    rw     <= SW(5);
    data_in <= SW(15 downto 8);
    clk_manual <= BTNC;

    ----------------------------------------------------------------------------
    -- Proceso de lectura/escritura (sin reloj global, usa botón BTNC)
    ----------------------------------------------------------------------------
    process(clk_manual)
    begin
        if rising_edge(clk_manual) then
            if enable = '1' then
                if rw = '0' then
                    RAM(to_integer(unsigned(addr))) <= data_in; -- Escritura
                else
                    data_out <= RAM(to_integer(unsigned(addr))); -- Lectura
                end if;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------------------
    -- Salida de datos
    ----------------------------------------------------------------------------
    data_int <= to_integer(unsigned(data_out)) when rw = '1' else to_integer(unsigned(data_in));
    addr_int <= to_integer(unsigned(addr));

    -- LEDs en binario
    LED <= data_out when (rw = '1' and enable = '1') else
           data_in  when (rw = '0' and enable = '1') else
           (others => '0');

    ----------------------------------------------------------------------------
    -- Control de los displays
    ----------------------------------------------------------------------------
    process(enable, rw, addr_int, data_int)
        variable centenas, decenas, unidades : integer;
        variable segs_out : STD_LOGIC_VECTOR(6 downto 0);
    begin
        AN <= "11111111";  -- Todos apagados por defecto

        if enable = '0' then
            -- Mostrar solo segmento G (apagado)
            SEG <= "0111111";
        else
            if rw = '1' then
                -- Lectura: mostrar valor leído
                centenas := data_int / 100;
                decenas  := (data_int / 10) mod 10;
                unidades := data_int mod 10;
            else
                -- Escritura: mostrar valor ingresado
                centenas := data_int / 100;
                decenas  := (data_int / 10) mod 10;
                unidades := data_int mod 10;
            end if;

            -- Anodos activos
            AN(0) <= '0'; -- unidades
            AN(1) <= '0'; -- decenas
            AN(2) <= '0'; -- centenas
            AN(7) <= '0'; -- dirección HEX

            -- Mostrar dirección en hexadecimal
            segs_out := HEX_TO_7SEG(std_logic_vector(to_unsigned(addr_int,4)));
            SEG <= segs_out;
        end if;
    end process;

end Behavioral;
