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

    -- Señales para entradas y salidas
    signal addr       : STD_LOGIC_VECTOR(3 downto 0);
    signal data_in    : STD_LOGIC_VECTOR(7 downto 0);
    signal data_out   : STD_LOGIC_VECTOR(7 downto 0);
    signal enable, rw : STD_LOGIC;
    type RAM_TYPE is array(0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
    signal RAM : RAM_TYPE := (others => (others => '0'));

    -- Antirrebote
    signal btn_sync1, btn_sync2 : STD_LOGIC := '0';
    signal btn_last : STD_LOGIC := '0';
    signal clk_pulse : STD_LOGIC := '0';

    -- Datos activos y para display
    signal active_data : STD_LOGIC_VECTOR(7 downto 0);
    signal bcd0, bcd1, bcd2 : STD_LOGIC_VECTOR(3 downto 0);
    signal display_sel : integer range 0 to 3 := 0;

begin

    ------------------------------------------------------------------
    -- Asignaciones de entradas
    ------------------------------------------------------------------
    addr     <= SW(3) & SW(2) & SW(1) & SW(0);
    enable   <= SW(4);
    rw       <= SW(5);
    data_in  <= SW(15 downto 8);

    ------------------------------------------------------------------
    -- Sincronizador de botón (antirrebote simple)
    ------------------------------------------------------------------
    process
    begin
        wait for 1 ms; -- simula una pequeña espera para evitar rebotes
        btn_sync1 <= BTNC;
        btn_sync2 <= btn_sync1;
    end process;

    process(btn_sync2)
    begin
        if rising_edge(btn_sync2) then
            clk_pulse <= '1';
        else
            clk_pulse <= '0';
        end if;
    end process;

    ------------------------------------------------------------------
    -- Proceso de lectura/escritura controlado por botón
    ------------------------------------------------------------------
    process(clk_pulse)
    begin
        if rising_edge(clk_pulse) then
            if enable = '1' then
                if rw = '0' then  -- Escritura
                    RAM(to_integer(unsigned(addr))) <= data_in;
                    data_out <= data_in;
                else              -- Lectura
                    data_out <= RAM(to_integer(unsigned(addr)));
                end if;
            end if;
        end if;
    end process;

    ------------------------------------------------------------------
    -- Selección del dato mostrado
    ------------------------------------------------------------------
    active_data <= (others => '0') when enable = '0' else data_out;

    ------------------------------------------------------------------
    -- Conversión a decimal
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
    -- Decodificador de 7 segmentos
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
    -- Multiplexado de displays (ciclo visual)
    ------------------------------------------------------------------
    process
    begin
        wait for 2 ms; -- velocidad humana de actualización
        if enable = '0' then
            AN  <= "11111110";  -- solo AN0
            SEG <= "0111111";   -- solo segmento G
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
                    AN <= "01111111"; -- AN7 -> dirección HEX
                    SEG <= to7seg(addr);
                when others =>
                    AN <= "11111111";
                    SEG <= "1111111";
            end case;
            display_sel <= (display_sel + 1) mod 4;
        end if;
    end process;

    ------------------------------------------------------------------
    -- LEDs muestran el dato binario activo
    ------------------------------------------------------------------
    LED <= (others => '0') when enable = '0' else active_data;

end Behavioral;
