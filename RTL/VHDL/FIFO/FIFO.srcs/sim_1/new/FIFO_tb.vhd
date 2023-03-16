library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- parameterized FIFO, set type to VHDL 2008 in source file properties
entity FIFO_tb is
end entity;

architecture behavior of FIFO_tb is
constant width: positive := 8;
constant depth: positive := 16;
constant expected_dout_1: std_logic_vector (7 downto 0) := "00000001";
constant expected_dout_2: std_logic_vector (7 downto 0) := "00000010";
constant expected_dout_3: std_logic_vector (7 downto 0) := "00000011";
signal clk: std_logic := '0';
signal rst: std_logic := '0';
signal din: std_logic_vector (7 downto 0);
signal write_en: std_logic := '0';
signal dout: std_logic_vector (7 downto 0);
signal read_en: std_logic := '0';
signal full: std_logic;
signal empty: std_logic;
    component FIFO is
        generic (
            width: positive := 8;
            depth: positive := 16
        );
        port (
            clk: in std_logic;
            rst: in std_logic;
            din: in std_logic_vector (width-1 downto 0);
            write_en: in std_logic;
            dout: out std_logic_vector (width-1 downto 0);
            read_en: in std_logic;
            full: out std_logic;
            empty: out std_logic
        );
    end component;

begin
    dut: FIFO
        port map (
            clk => clk,
            rst => rst,
            din => din,
            write_en => write_en,
            dout => dout,
            read_en => read_en,
            full => full,
            empty => empty
        );

    clk_gen: process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

    reset_gen: process
    begin
        rst <= '1';
        wait for 20 ns;
        rst <= '0';
        wait;
    end process;

    write_gen: process
    begin
        write_en <= '0';
        wait for 10 ns;
        din <= "00000001";
        write_en <= '1';
        wait for 10 ns;
        din <= "00000010";
        wait for 10 ns;
        din <= "00000011";
        wait for 10 ns;
        write_en <= '0';
        wait for 100 ns;
    end process;

    read_gen: process
    begin
        read_en <= '0';
        wait for 30 ns;
        read_en <= '1';
        wait for 10 ns;
        if dout /= expected_dout_1 then
            report "Unexpected value in dout: " & to_hstring(dout);
        end if;
        read_en <= '0';
        wait for 10 ns;
        read_en <= '1';
        wait for 10 ns;
        if dout /= expected_dout_2 then
            report "Unexpected value in dout: " & to_hstring(dout);
        end if;
        read_en <= '0';
        wait for 10 ns;
        read_en <= '1';
        wait for 10 ns;
        if dout /= expected_dout_3 then
            report "Unexpected value in dout: " & to_hstring(dout);
        end if;
        end process;
end architecture;
