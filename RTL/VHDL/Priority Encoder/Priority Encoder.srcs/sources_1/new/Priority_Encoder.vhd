library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- parameterized Priority Encoder
entity Priority_Encoder is
  generic (
    N: positive := 4;
    M: positive := 2
  );
  port (
    input: in std_logic_vector(N-1 downto 0);
    output: out std_logic_vector(M-1 downto 0)
  );
end entity;

architecture behavioral of Priority_Encoder is
begin
  Priority_Encoding_Process: process (input)
    variable index: integer range 0 to N-1 := -1;
  begin
    index := -1;
    -- for i in N-1 downto 0 loop --priority given from LSB-MSB
    for i in 0 to N-1 loop -- priority given from MSB-LSB
      if input(i) = '1' then
        index := i;
      end if;
    end loop;
    if index >= 0 then
      output <= std_logic_vector(to_unsigned(index, M));
    else
      output <= (others => '0');
    end if;
  end process;
end architecture;
