library ieee;
use ieee.std_logic_1164.all;

-- Single Stage Synchronizer
entity Synchronizer_tb is
end entity Synchronizer_tb;

architecture behavioral of Synchronizer_tb is
constant clk_period : time := 10 ns; -- f = 1/10ns = 1/(10*10^-9) = 100 MHz
constant async_in_period : time := 50 ns; -- f = 1/50ns = 1/(50*10^-9) = 20 MHz
signal clk_100MHz : std_logic := '0';
signal async_in_20MHz : std_logic := '0';
signal sync_out : std_logic := '0';
    component Synchronizer is
        port (
            clk : in std_logic;
            async_in : in std_logic;
            sync_out : out std_logic
        );
    end component;
    
begin
    uut : Synchronizer
        port map (
            clk => clk_100MHz,
            async_in => async_in_20MHz,
            sync_out => sync_out
        );

    clk_100MHz <= not clk_100MHz after clk_period/2;
    async_in_20MHz <= not async_in_20MHz after async_in_period/2;

    process
    begin
        wait for 500 ns;    
        -- end simulation
      assert false report "Simulation Finished" severity failure;
    end process;
end architecture behavioral;