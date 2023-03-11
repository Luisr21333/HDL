library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- parameterized FIFO, set type to VHDL 2008 in source file properties
entity FIFO is
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
end entity;

architecture behavioral of FIFO is
type mem_type is array (0 to depth-1) of std_logic_vector (width-1 downto 0);
signal mem: mem_type := (others => (others => '0')); -- signals need to be intialized to default value
signal read_ptr: integer range 0 to depth-1 := 0;
signal write_ptr: integer range 0 to depth-1 := 0;
signal count: integer range 0 to depth := 0;
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then -- synchronous active high reset
                read_ptr <= 0;
                write_ptr <= 0;
                count <= 0;
            elsif write_en = '1' and count < depth then -- write has priority over read
                mem(write_ptr) <= din;
                write_ptr <= (write_ptr + 1) mod depth;
                count <= count + 1;
            elsif read_en = '1' and count > 0 then
                dout <= mem(read_ptr);
                read_ptr <= (read_ptr + 1) mod depth;
                count <= count - 1;
            end if;
        end if;
    end process;
full <= '1' when count = depth else '0';
empty <= '1' when count = 0 else '0';
end architecture;