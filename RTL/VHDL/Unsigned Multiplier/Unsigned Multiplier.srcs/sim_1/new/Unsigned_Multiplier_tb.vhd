library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- parameterized Unsigned Multiplier  
entity Unsigned_Multiplier_tb is
end Unsigned_Multiplier_tb;

architecture behavioral of Unsigned_Multiplier_tb is
    constant WIDTH : integer := 16;
    signal A_sig, B_sig : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal Mult_sig : std_logic_vector(WIDTH*2 - 1 downto 0) := (others => '0');

    component Unsigned_Multiplier is
    generic(
    WIDTH : integer := 16
    );
    port(
    A   : in  std_logic_vector(WIDTH - 1 downto 0);
    B   : in  std_logic_vector(WIDTH - 1 downto 0);
    Mult_out : out std_logic_vector(WIDTH*2 - 1 downto 0)
    );
    end component;
    
begin
    dut : Unsigned_Multiplier
    generic map (WIDTH => WIDTH)
        port map (A => A_sig, B => B_sig, Mult_out => Mult_sig);

    stimulus : process
    begin
        -- exhaustively testing all inputs 
        for i in 0 to 255 loop
            for j in 0 to 255 loop
            A_sig <= std_logic_vector(to_unsigned(i,WIDTH));
            B_sig <= std_logic_vector(to_unsigned(j,WIDTH));
            wait for 25 ns;
            end loop;
        end loop;
        
        -- end simulation
        assert false report "Simulation Finished" severity failure;
    end process;

end architecture;
