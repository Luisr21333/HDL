library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- parameterized Unsigned Multiplier  
entity Unsigned_Multiplier is
generic(
WIDTH : integer := 16
);
port(
A   : in  std_logic_vector(WIDTH - 1 downto 0);
B   : in  std_logic_vector(WIDTH - 1 downto 0);
Mult_out : out std_logic_vector(WIDTH*2 - 1 downto 0)
);
end Unsigned_Multiplier;

architecture behavioral of Unsigned_Multiplier is
begin
Mult_out <= A * B;
end behavioral;
