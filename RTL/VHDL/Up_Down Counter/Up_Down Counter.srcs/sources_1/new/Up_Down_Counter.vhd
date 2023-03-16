library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- parameterized Up/Down Counter  
entity Up_Down_Counter is
  generic (
    WIDTH : integer := 8
  );
  port (
    clk : in std_logic;
    reset : in std_logic;
    dir : in std_logic;
    count : out unsigned(WIDTH-1 downto 0)
  );
end entity;

architecture behavioral of Up_Down_Counter is
signal counter : unsigned(WIDTH-1 downto 0);
begin
  process (clk, reset)
  begin
  -- asynchronous active high reset
    if reset = '1' then
      counter <= (others => '0');
    elsif rising_edge(clk) then
      if dir = '1' then
        counter <= counter + 1;
      else -- dir = 0, count down
        counter <= counter - 1;
      end if;
    end if;
  end process;
  count <= counter;
end architecture;