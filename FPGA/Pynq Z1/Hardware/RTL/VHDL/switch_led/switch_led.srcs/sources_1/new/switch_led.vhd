library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity switch_led is
generic (
        WIDTH : positive := 10 -- RGB LEDs, LEDs and Switches
        );
port (
     clk    : in std_logic;
     rst    : in std_logic;
     switch : in std_logic_vector(WIDTH-6 downto 0);   
     led    : out std_logic_vector(WIDTH-1 downto 0)    
     );
end switch_led;

architecture Behavioral of switch_led is
-- Constants
constant FREQ : integer := 125000000; -- 125 MHz   

-- Declararions
signal count  : integer range 0 to FREQ := 0;
signal pulse  : std_logic := '0';

begin
Switch_LED_Process : process(clk) begin

    if (rst = '1') then
        led <= (others => '0');

    elsif (clk'event and clk = '1') then
        led(WIDTH-9 downto 0) <= switch(WIDTH-9 downto 0); -- LEDs controlled by slide switches
        led(WIDTH-4 downto 4) <= switch(WIDTH-6 downto 2); -- RGB LEDs controlled by push buttons 
    end if; 
end process;
end Behavioral;