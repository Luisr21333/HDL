library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LFSR_tb is
end entity;

architecture behavioral of LFSR_tb is

  signal clk : std_logic := '0';
  signal reset : std_logic := '0';
  signal lfsr_out : unsigned(7 downto 0);

begin

  dut : entity work.LFSR
    generic map (
      WIDTH => 8,
      POLY => "100000111"
    )
    port map (
      clk => clk,
      reset => reset,
      lfsr_out => lfsr_out
    );

  clk_process : process
  begin
    while now < 1000 ns loop
      clk <= '0';
      wait for 5 ns;
      clk <= '1';
      wait for 5 ns;
    end loop;
    wait;
  end process;

  reset_process : process
  begin
    reset <= '1';
    wait for 50 ns;
    reset <= '0';
    wait for 750 ns;
    
     --end simulation
    assert false report "Simulation Finished" severity failure;
  end process;
end architecture;
