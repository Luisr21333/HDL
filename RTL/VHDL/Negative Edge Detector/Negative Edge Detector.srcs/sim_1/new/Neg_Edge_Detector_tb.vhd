library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Negative Edge Detector
entity Neg_Edge_Detector_tb is
end entity Neg_Edge_Detector_tb;

architecture behavioral of Neg_Edge_Detector_tb is
signal clk : std_logic := '0';
signal reset : std_logic := '0';
signal falling_edge_detected : std_logic;

  component Neg_Edge_Detector is
    port (
      clk : in std_logic;
      reset : in std_logic;
      falling_edge_detected : out std_logic
    );
  end component;

begin
  uut: Neg_Edge_Detector
    port map (
      clk => clk,
      reset => reset,
      falling_edge_detected => falling_edge_detected
    );

  process
  begin
    reset <= '1';
    wait for 10 ns;
    reset <= '0';

    for i in 0 to 20 loop
      clk <= '0';
      wait for 5 ns;
      clk <= '1';
      wait for 5 ns;
    end loop;
    
    wait for 50 ns;
       
    -- end simulation
    assert false report "Simulation Finished" severity failure;
    end process;
end Behavioral;