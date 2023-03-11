library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- parameterized Up/Down Counter  
entity Up_Down_Counter_tb is
end entity;

architecture behavioral of Up_Down_Counter_tb is
constant WIDTH : integer := 8;
constant PERIOD : time := 10 ns;
signal clk : std_logic := '0';
signal reset : std_logic := '1';
signal dir : std_logic := '0';
signal count : unsigned(WIDTH-1 downto 0);
  component Up_Down_Counter is
    generic (
      WIDTH : integer := 8
    );
    port (
      clk : in std_logic;
      reset : in std_logic;
      dir : in std_logic;
      count : out unsigned(WIDTH-1 downto 0)
    );
  end component;

begin
  uut : up_down_counter
    generic map (
      WIDTH => WIDTH
    )
    port map (
      clk => clk,
      reset => reset,
      dir => dir,
      count => count
    );

  clk_process : process
  begin
    while now < 1000 ns loop
      clk <= '0';
      wait for PERIOD / 2;
      clk <= '1';
      wait for PERIOD / 2;
    end loop;
    wait;
  end process;

  test_process : process
  begin
    -- Test up functionality
    reset <= '1';
    dir <= '1';
    wait for PERIOD;
    reset <= '0';
    wait for PERIOD * 17.5;
    assert count = to_unsigned(10, WIDTH) report "Up counter test failed" severity error;
    
    -- Test down functionality
    reset <= '1';
    dir <= '0';
    wait for PERIOD;
    reset <= '0';
    wait for PERIOD * 17.5;
    assert count = to_unsigned(0, WIDTH) report "Down counter test failed" severity error;

    -- end simulation
    assert false report "Simulation Finished" severity failure;
  end process;
end architecture;
