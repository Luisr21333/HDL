library ieee;
use ieee.std_logic_1164.all;

-- parameterized Johnson Counter  
entity Johnson_Counter is
    generic (
      WIDTH : integer := 4
    );
    port (
      clk : in std_logic;
      rst : in std_logic;
      Q : out std_logic_vector(WIDTH-1 downto 0)
    );
end Johnson_Counter;
 
architecture behavioral of Johnson_Counter is
signal q_tmp: std_logic_vector(WIDTH-1 downto 0):= "0000";
begin
    Johnson_Counter_Process: process(clk,rst)
    begin
    -- asynchronous active high reset
    if rst = '1' then
        q_tmp <= "1001"; 
        elsif Rising_edge(clk) then
            -- shift left
            q_tmp <= q_tmp(WIDTH-2 downto 0) & not q_tmp(WIDTH-1);  
    end if;
    end process;
Q <= q_tmp;
end behavioral;