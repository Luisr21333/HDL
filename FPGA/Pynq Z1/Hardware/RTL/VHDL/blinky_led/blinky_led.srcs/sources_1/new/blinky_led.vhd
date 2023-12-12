library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity blinky_led is
generic (
        WIDTH : positive := 8 -- RGB LEDs & LEDs
        );
port (
     clk : in std_logic;
     rst : in std_logic;
     led : out std_logic_vector(WIDTH-1 downto 0)    
     );
end blinky_led;

architecture Behavioral of blinky_led is
-- Constants
constant FREQ : integer := 125000000; -- 125 MHz

-- Declararions
signal count : integer range 0 to FREQ := 0;
signal pulse : std_logic := '0';

begin
  Counter_Process : process(clk)
  begin
    if rst = '1' then
    pulse <= '0';
    
    elsif clk'event and clk = '1' then
        if count = FREQ - 1 then
        count <= 0;
        pulse <= not pulse;
        
        else
        count <= count + 1;
        end if;      
    end if;
  end process;

-- Pulse LEDs
led <= (others => pulse);
end Behavioral;