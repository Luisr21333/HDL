library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity switch_led is
generic (
        WIDTH : positive := 12 -- RGB LEDs
        );
port (
     clk : in std_logic;
     rst : in std_logic;
     switch : in std_logic_vector(WIDTH-9 downto 0);   
     led : out std_logic_vector(WIDTH-1 downto 0)    
     );
end switch_led;

architecture Behavioral of switch_led is
-- Constants
constant FREQ : integer := 125000000; -- 125 MHz

-- Declararions
signal count : integer range 0 to FREQ := 0;
signal pulse : std_logic := '0';

begin
  Switch_LED_Process : process(clk)
  begin
    if rst = '1' then
    led <= (others => '0');
    
    elsif clk'event and clk = '1' then
    -- Turn on Leds according to their switches
    led(3 downto 0) <= switch;
--        case(switch) is
--            when "0000" =>
--            led <= (others => '0');
            
--            when "0001" =>
--            led(0 downto 0) <= (others => '1');
            
--            when "0010" =>
--            led(1 downto 1) <= (others => '1');
            
--            when "0100" =>
--            led(2 downto 2) <= (others => '1');
            
--            when "1000" =>
--            led(3 downto 3) <= (others => '1');
            
--            when others => 
--            led <= (others => '0');
--        end case;
    end if; 
  end process;
end Behavioral;