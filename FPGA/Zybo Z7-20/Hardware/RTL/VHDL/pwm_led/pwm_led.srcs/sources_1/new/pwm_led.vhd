library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pwm_led is
generic (
        WIDTH : positive := 4 -- LEDs
        );
port (
     clk : in  std_logic;
     rst : in  std_logic;
     led : out std_logic_vector(WIDTH-1 downto 0);
     probe : out std_logic
     );
end pwm_led;

architecture Behavioral of pwm_led is
-- Constants
constant PWM_PERIOD : integer := 2500000; -- 2,500,000 clock cycles to complete one cycle 

-- Declarations
signal counter : integer range 0 to PWM_PERIOD - 1 := 0;
signal pwm_out : std_logic := '0';
signal current_duty_cycle : integer range 0 to 100 := 0;

begin
    PWM_Counter_Process : process (clk, rst)
    begin
        if rst = '1' then
        counter <= 0;
        pwm_out <= '0';
        current_duty_cycle <= 0;
            
        elsif rising_edge(clk) then
            if counter = PWM_PERIOD - 1 then
            counter <= 0;
            current_duty_cycle <= current_duty_cycle + 1;
                if current_duty_cycle > 100 then
                current_duty_cycle <= 0;
                end if;
                
            else
            counter <= counter + 1;
            end if;
            
            if counter < (PWM_PERIOD * current_duty_cycle) / 100 then
            pwm_out <= '1'; -- Set the PWM output high during the duty cycle
            
            else
            pwm_out <= '0'; -- Set the PWM output low during the remaining period
            end if;
        end if;
    end process;

-- Display PWM on all LEDs
led <= (others => pwm_out);
probe <= pwm_out;
end Behavioral;