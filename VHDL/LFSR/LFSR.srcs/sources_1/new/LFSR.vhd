library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- parameterized Linear Feedback Shift Register (LFSR)
entity LFSR is
  generic (
    WIDTH : integer := 8;
    POLY : std_logic_vector(8 downto 0) := "100000111"
  );
  port (
    clk : in std_logic;
    reset : in std_logic;
    lfsr_out : out unsigned(WIDTH-1 downto 0)
  );
end entity;

architecture behavioral of LFSR is
signal lfsr_reg : unsigned(WIDTH-1 downto 0);
begin

  process(clk)
  begin
    if rising_edge(clk) then
      --synchronous active high reset
      if reset = '1' then
        lfsr_reg <= (others => '0');
      else
        lfsr_reg(WIDTH-1 downto 1) <= lfsr_reg(WIDTH-2 downto 0);
        lfsr_reg(0) <= lfsr_reg(WIDTH-1) xor POLY(WIDTH);
      end if;
      lfsr_out <= lfsr_reg;
    end if;
  end process;
end architecture;
