library ieee;
use ieee.std_logic_1164.all;

-- parameterized Ring Counter  
entity Ring_Counter is
    generic (
        WIDTH : integer := 4
    );
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (WIDTH-1 downto 0));
end Ring_Counter;
 
architecture behavioral of Ring_Counter is
signal q_tmp: std_logic_vector(WIDTH-1 downto 0):= "0000";
begin
    process(clk,rst)
    begin
    -- asynchronous active high reset
    if rst = '1' then
        q_tmp <= "1001"; --any value other than '0', otherwise Q will be '0'
        elsif Rising_edge(clk) then
            -- shift left
            q_tmp <= q_tmp(WIDTH-2 downto 0) & q_tmp(WIDTH-1);
            
            -- debugging shift right
            --q_tmp <= q_tmp(WIDTH-1) & q_tmp(WIDTH-2 downto 0);
    end if;
    end process;
Q <= q_tmp;
end behavioral;