library ieee;
use ieee.std_logic_1164.all;

entity Decoder_tb is
end entity;

architecture behavioral of Decoder_tb is
  component Decoder is
    generic (
      N: positive := 4;
      M: positive := 16
    );
    port (
      input: in std_logic_vector(N-1 downto 0);
      output: out std_logic_vector(M-1 downto 0)
    );
  end component;

  signal input_signal: std_logic_vector(3 downto 0);
  signal output_signal: std_logic_vector(15 downto 0);

begin
  dut: Decoder generic map(N => 4, M => 16)
       port map(input => input_signal, output => output_signal);

  stim_proc: process
  begin
    input_signal <= "0000";
    wait for 10 ns;
    assert output_signal = "0000000000000001" report "Error for input 0" severity error;

    input_signal <= "0001";
    wait for 10 ns;
    assert output_signal = "0000000000000010" report "Error for input 1" severity error;

    input_signal <= "0010";
    wait for 10 ns;
    assert output_signal = "0000000000000100" report "Error for input 2" severity error;

    input_signal <= "0011";
    wait for 10 ns;
    assert output_signal = "0000000000001000" report "Error for input 3" severity error;

    input_signal <= "0100";
    wait for 10 ns;
    assert output_signal = "0000000000000001" report "Error for input 4" severity error;

    input_signal <= "0101";
    wait for 10 ns;
    assert output_signal = "0000000000000010" report "Error for input 5" severity error;

    input_signal <= "0110";
    wait for 10 ns;
    assert output_signal = "0000000000000100" report "Error for input 6" severity error;

    input_signal <= "0111";
    wait for 10 ns;
    assert output_signal = "0000000000001000" report "Error for input 7" severity error;

    input_signal <= "1000";
    wait for 10 ns;
    assert output_signal = "0000000000000001" report "Error for input 8" severity error;

    input_signal <= "1001";
    wait for 10 ns;
    assert output_signal = "0000000000000010" report "Error for input 9" severity error;

    input_signal <= "1010";
    wait for 10 ns;
    assert output_signal = "0000000000000100" report "Error for input 10" severity error;

    input_signal <= "1011";
    wait for 10 ns;
    assert output_signal = "0000000000001000" report "Error for input 11" severity error;

    input_signal <= "1100";
    wait for 10 ns;
    assert output_signal = "0000000000000001" report "Error for input 12" severity error;

    input_signal <= "1101";
    wait for 10 ns;
    assert output_signal = "0000000000000010" report "Error for input 13" severity error;

    input_signal <= "1110";
    wait for 10 ns;
    assert output_signal = "0000000000000100" report "Error for input 14" severity error;
    
    --end simulation
    assert false report "Simulation Finished" severity failure;
    end process;
end Behavioral;

   
