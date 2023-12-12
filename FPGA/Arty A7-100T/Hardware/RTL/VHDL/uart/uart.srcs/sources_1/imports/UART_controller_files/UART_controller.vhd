
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity UART_controller is

    port(
        clk              : in  std_logic;
        reset            : in  std_logic;
        tx_enable        : in  std_logic;

--        data_in          : in  std_logic_vector (7 downto 0);
--        data_out         : out std_logic_vector (7 downto 0);

        rx               : in  std_logic;
        tx               : out std_logic;
        probe_tx         : out std_logic;
        probe_rx         : out std_logic
        );
end UART_controller;

architecture Behavioral of UART_controller is
constant clk_freq : integer := 100000000;
signal data_in : std_logic_vector (7 downto 0);
signal data_out : std_logic_vector (7 downto 0);
signal cnt : integer := 0;
signal cnt_freq : integer range 0 to clk_freq;
signal rx_loopback : std_logic := '0';
signal tx_loopback : std_logic := '0';

 signal internal_rx : std_logic := '0';
 signal internal_tx : std_logic := '0';

    component button_debounce
        port(
            clk        : in  std_logic;
            reset      : in  std_logic;
            button_in  : in  std_logic;
            button_out : out std_logic
            );
    end component;


    component UART
        port(
            clk            : in  std_logic;
            reset          : in  std_logic;
            tx_start       : in  std_logic;

            data_in        : in  std_logic_vector (7 downto 0);
            data_out       : out std_logic_vector (7 downto 0);

            rx             : in  std_logic;
            tx             : out std_logic
            );
    end component;

    signal button_pressed : std_logic;

begin
    tx_button_controller: button_debounce
    port map(
            clk            => clk,
            reset          => reset,
            button_in      => tx_enable,
            button_out     => button_pressed
            );

    UART_transceiver: UART
    port map(
            clk            => clk,
            reset          => reset,
            tx_start       => button_pressed,
            data_in        => data_in,
            data_out       => data_out,
            rx             => rx,--rx_loopback,rx
            tx             => tx --tx_loopback tx
            );
            
process (clk,reset)
    begin
        if reset = '1' then
        probe_rx <= '0';
        probe_tx <= '0';
        internal_rx <= '0';
        internal_tx <= '0';
        
            --data_in <= x"41";  -- Reset to 'A'
            cnt <= 0;  -- Reset the binary_read 
            cnt_freq  <= 0;
--            rx_loopback <= '0';  -- Reset to 0
--            tx_loopback <= '0';  -- Reset to 0
            
        elsif rising_edge(clk) then
            internal_rx <= rx;
            internal_tx <= tx;
    
        if tx_enable = '1' then
        cnt_freq <= cnt_freq + 1;
        
            --for i in 0 to 11 loop
            if cnt_freq = clk_freq - 1 then
            
                cnt <= cnt + 1;
                cnt_freq <= 0;
                
                    case cnt is
                        when 0 =>
                            data_in <= x"48"; -- 'H'
                        when 1 =>
                            data_in <= x"45"; -- 'E'
                        when 2 =>
                            data_in <= x"4C"; -- 'L'
                        when 3 =>
                            data_in <= x"4C"; -- 'L'
                        when 4 =>
                            data_in <= x"4F"; -- 'O'
                        when 5 =>
                            data_in <= x"20"; -- ' '
                        when 6 =>
                            data_in <= x"4C"; -- 'L' 
                        when 7 =>
                            data_in <= x"55"; -- 'U'
                        when 8 =>
                            data_in <= x"49"; -- 'I'
                        when 9 =>
                            data_in <= x"53"; -- 'S' 
                        when 10 =>
                            data_in <= x"21"; -- '!' 
                        when others =>
                            data_in <= x"0A"; -- New Line
                            cnt <= 0;
                    end case;
                end if;
        end if;
        end if;
    end process;    
probe_rx <= internal_rx ;
probe_tx  <= internal_tx ;
end Behavioral;