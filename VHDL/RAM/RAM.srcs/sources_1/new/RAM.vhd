library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- parameterized RAM
entity RAM is
    generic (
        ADDR_WIDTH : positive := 8; -- width of address
        DATA_WIDTH : positive := 8  -- width of data
    );
    port (
        clk : in std_logic;
        rst : in std_logic;
        rd_en : in std_logic;
        wr_en : in std_logic;
        addr : in unsigned(ADDR_WIDTH - 1 downto 0);
        wr_data : in unsigned(DATA_WIDTH - 1 downto 0);
        rd_data : out unsigned(DATA_WIDTH - 1 downto 0)
    );
end entity;

architecture behavioral of RAM is
type mem_array is array (0 to 2**ADDR_WIDTH - 1) of unsigned(DATA_WIDTH - 1 downto 0);
signal memory : mem_array := (others => (others => '0'));
begin
    process (clk, rst) is
    begin
        -- asynchronous active high reset
        if (rst = '1') then
            memory <= (others => (others => '0'));
        elsif (clk'event and clk = '1') then
            if (wr_en = '1') then
                memory(to_integer(unsigned(addr))) <= wr_data;
            end if;
        end if;
    end process;
rd_data <= memory(to_integer(unsigned(addr))) when rd_en = '1' else (others => '0');
end architecture;
