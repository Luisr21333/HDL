library ieee;
use ieee.std_logic_1164.all;
  
-- parameterized Ring Counter  
entity Ring_Counter_tb is
end Ring_Counter_tb;
  
architecture behavioral of Ring_Counter_tb is
constant CLOCK_period : time := 20 ns;
constant WIDTH : integer := 4;
signal clk : std_logic := '0';
signal rst : std_logic := '0';
signal Q : std_logic_vector(3 downto 0);  
    component Ring_counter
     generic (
      WIDTH : integer := 4
    );
    port(
         clk : in  std_logic;
         rst : in  std_logic;
         Q : out  std_logic_vector(3 downto 0)
        );
    end component;
    
begin  
   uut: Ring_counter port map (
          clk => clk,
          rst => rst,
          Q => Q
        );
 
   clock_process: process
   begin
        clk <= '0';
        wait for CLOCK_period/2;
        clk <= '1';
        wait for CLOCK_period/2;
   end process;
  
   stim_process: process
   begin       
      wait for 100 ns; 
      rst <= '1';   
      wait for 100 ns; 
      rst <= '0';
      wait for CLOCK_period*15;     
    
      -- end simulation
      assert false report "Simulation Finished" severity failure;
   end process;
end architecture;