library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity counting_led is
generic (
        WIDTH : positive := 4 -- LEDs
        );
port (
     clk     : in  std_logic;
     rst     : in  std_logic;
     led     : out std_logic_vector(WIDTH-1 downto 0)
     );
end counting_led;

architecture Behavioral of counting_led is  
-- Constants
constant MAX : integer := 15;
constant FREQ : integer := 125000000;

-- Declarations
signal loop_cnt : integer range 0 to MAX := 0;
signal counter : integer range 0 to FREQ := 0;

begin
    Counter_Process : process (clk, rst)
    begin
        if rst = '1' then
        counter <= 0;
        loop_cnt <= 0;
            
        elsif rising_edge(clk) then
            if counter = FREQ - 1 then
            counter <= 0;
            loop_cnt <= loop_cnt + 1;
                if loop_cnt = MAX then
                loop_cnt <= 0;
                end if;
                
            else
            counter <= counter + 1;
            end if;
        end if;
    end process;

-- Display counting LEDs
led <= std_logic_vector(to_unsigned(loop_cnt, led'length));
end Behavioral;