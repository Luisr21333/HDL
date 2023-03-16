library ieee;
use ieee.std_logic_1164.all;

-- parameterized Priority Encoder
entity Priority_Encoder_tb is
end entity;

architecture behavioral of Priority_Encoder_tb is
constant N: positive := 4;
constant M: positive := 2;
signal input_signal: std_logic_vector(3 downto 0);
signal output_signal: std_logic_vector(1 downto 0);
  component Priority_Encoder is
    generic (
      N: positive := 4;
      M: positive := 2
    );
    port (
      input: in std_logic_vector(N-1 downto 0);
      output: out std_logic_vector(M-1 downto 0)
    );
  end component;

begin
  dut: Priority_Encoder generic map(N => N, M => M)
       port map(input => input_signal, output => output_signal);

  stim_proc: process
  begin
    input_signal <= "0000";
    wait for 10 ns;
    assert output_signal = "00" report "Error for input 0" severity error;

    input_signal <= "0001";
    wait for 10 ns;
    assert output_signal = "00" report "Error for input 1" severity error;

    input_signal <= "0010";
    wait for 10 ns;
    assert output_signal = "01" report "Error for input 2" severity error;

    input_signal <= "0011";
    wait for 10 ns;
    assert output_signal = "01" report "Error for input 3" severity error;

    input_signal <= "0100";
    wait for 10 ns;
    assert output_signal = "10" report "Error for input 4" severity error;

    input_signal <= "0101";
    wait for 10 ns;
    assert output_signal = "10" report "Error for input 5" severity error;

    input_signal <= "0110";
    wait for 10 ns;
    assert output_signal = "10" report "Error for input 6" severity error;

    input_signal <= "0111";
    wait for 10 ns;
    assert output_signal = "10" report "Error for input 7" severity error;

    input_signal <= "1000";
    wait for 10 ns;
    assert output_signal = "11" report "Error for input 8" severity error;

    input_signal <= "1001";
    wait for 10 ns;
    assert output_signal = "11" report "Error for input 9" severity error;

    input_signal <= "1010";
    wait for 10 ns;
    assert output_signal = "11" report "Error for input 10" severity error;

    input_signal <= "1011";
    wait for 10 ns;
    assert output_signal = "11" report "Error for input 11" severity error;

    input_signal <= "1100";
    wait for 10 ns;
    assert output_signal = "11" report "Error for input 12" severity error;

    input_signal <= "1101";
    wait for 10 ns;
    assert output_signal = "11" report "Error for input 13" severity error;

    input_signal <= "1110";
    wait for 10 ns;
    assert output_signal = "11" report "Error for input 14" severity error;

    input_signal <= "1111";
    wait for 10 ns;
    assert output_signal = "11" report "Error for input 15" severity error;
    
    -- end simulation
    assert false report "Simulation Finished" severity failure;
  end process;
end architecture;
