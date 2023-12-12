library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART_controller_tb is
end UART_controller_tb;

architecture testbench of UART_controller_tb is
    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal tx_enable : std_logic := '0';
    signal data_in : std_logic_vector(7 downto 0) := (others => '0');
    signal data_out : std_logic_vector(7 downto 0);
    signal rx : std_logic := '0';
    signal tx : std_logic;

    -- Instantiate the UART_controller
    component UART_controller
        port (
            clk         : in std_logic;
            reset       : in std_logic;
            tx_enable   : in std_logic;
            --data_in     : in std_logic_vector(7 downto 0);
            data_out    : out std_logic_vector(7 downto 0);
            rx          : in std_logic;
            tx          : out std_logic
        );
    end component;

begin
    -- Instantiate the UART_controller entity
    UART_inst : UART_controller
        port map (
            clk         => clk,
            reset       => reset,
            tx_enable   => tx_enable,
            --data_in     => data_in,
            data_out    => data_out,
            rx          => rx,
            tx          => tx
        );

    clk_gen: process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

    reset_gen: process
    begin
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait;
    end process;

    -- Stimulus process
    process
    begin
        -- Wait for a few clock cycles before enabling transmission
        wait for 50 ns;
        
        tx_enable <= '1';  -- Enable transmission
        wait for 50 ns;
        
        tx_enable <= '0';  -- Enable transmission
        wait for 100 ns;
        --data_in <= "11011010";  -- Example data to transmit
        
        -- Wait for transmission to complete
        wait until tx = '1';
        
        -- Add more test cases or stimuli as needed
        
        wait;
    end process;
end testbench;
