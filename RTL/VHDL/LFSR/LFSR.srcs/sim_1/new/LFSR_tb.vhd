library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- parameterized Linear Feedback Shift Register (LFSR)
entity LFSR_tb is
end entity;

architecture behavioral of LFSR_tb is
constant WIDTH : integer := 8;
constant POLY : std_logic_vector(8 downto 0) := "100000111";
signal clk : std_logic := '0';
signal reset : std_logic := '0';
signal lfsr_out : unsigned(WIDTH-1 downto 0);
    component LFSR
    generic (
      WIDTH : integer := 8;
      POLY : std_logic_vector(8 downto 0) := "100000111"
    );
    port(
         clk : in  std_logic;
         reset : in  std_logic;
         lfsr_out : out  unsigned(WIDTH-1 downto 0)
        );
        end component;

begin
    uut: LFSR port map (
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
    wait for 650 ns;
    
    --end simulation
    assert false report "Simulation Finished" severity failure;
  end process;
end architecture;
