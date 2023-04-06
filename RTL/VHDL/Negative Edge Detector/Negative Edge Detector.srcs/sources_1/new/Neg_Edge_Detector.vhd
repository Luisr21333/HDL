library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Negative Edge Detector
entity Neg_Edge_Detector is
  port (
    clk : in std_logic;
    reset : in std_logic;
    falling_edge_detected : out std_logic
  );
end entity Neg_Edge_Detector;

architecture behavioral of Neg_Edge_Detector is
  signal prev_clk : std_logic := '0';
begin
  Falling_Edge_Detection_Process: process (clk, reset)
  begin
    -- asynchronous active high reset
    if reset = '1' then
      falling_edge_detected <= '0';
      prev_clk <= '0';
        elsif rising_edge(clk) then
          prev_clk <= clk;
          falling_edge_detected <= '0'; -- allows to check multiple falling edges, otherwise latches onto 1st falling edge
            elsif falling_edge(clk) and prev_clk = '1' then
              falling_edge_detected <= '1';
              prev_clk <= '0';
    end if;
  end process;
end architecture behavioral;