library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- parameterized  Decoder
entity Decoder is
  generic (
    N: positive := 4; -- Number of inputs
    M: positive := 16 -- Number of outputs
  );
  port (
    input: in std_logic_vector(N-1 downto 0);
    output: out std_logic_vector(M-1 downto 0)
  );
end entity;

architecture behavioral of Decoder is
begin
  process (input)
  begin
    --using case statement to decode each input 
    case to_integer(unsigned(input)) is
      when 0 =>
        output <= x"0001";
      when 1 =>
        output <= x"0010";
      when 2 =>
        output <= x"0100";
      when 3 =>
        output <= x"1000";
      when 4 =>
        output <= x"0001";
      when 5 =>
        output <= x"0010";
      when 6 =>
        output <= x"0100";
      when 7 =>
        output <= x"1000";
      when 8 =>
        output <= x"0001";
      when 9 =>
        output <= x"0010";
      when 10 =>
        output <= x"0100";
      when 11 =>
        output <= x"1000";
      when 12 =>
        output <= x"0001";
      when 13 =>
        output <= x"0010";
      when 14 =>
        output <= x"0100";
      when 15 =>
        output <= x"1000";
      when others =>
        output <= (others => '0');
    end case;
  end process;
end architecture;
