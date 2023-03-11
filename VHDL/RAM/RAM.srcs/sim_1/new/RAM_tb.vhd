library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- parameterized RAM
entity RAM_tb is
end entity;

architecture behavioral of RAM_tb is
constant ADDR_WIDTH : positive := 8;
constant DATA_WIDTH : positive := 8;
signal clk : std_logic := '0';
signal rst : std_logic := '0';
signal rd_en : std_logic := '0';
signal wr_en : std_logic := '0';
signal addr : unsigned(ADDR_WIDTH - 1 downto 0);
signal wr_data : unsigned(DATA_WIDTH - 1 downto 0);
signal rd_data : unsigned(DATA_WIDTH - 1 downto 0);
    component RAM is
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
end component;

type test_vector is record
    address : unsigned(ADDR_WIDTH - 1 downto 0);
    write_data : unsigned(DATA_WIDTH - 1 downto 0);
    read_data : unsigned(DATA_WIDTH - 1 downto 0);
end record;

type test_vectors is array (natural range <>) of test_vector;

constant vectors : test_vectors := (
    (x"00", x"55", x"50"),
    (x"01", x"AA", x"A0"),
    (x"02", x"F0", x"10"),
    (x"03", x"0F", x"01"),
    (x"04", x"FF", x"00")
);

begin
    uut: RAM
        port map (
            clk => clk,
            rst => rst,
            rd_en => rd_en,
            wr_en => wr_en,
            addr => addr,
            wr_data => wr_data,
            rd_data => rd_data
        );

    -- Clock generation process
    clk_process : process is
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

    -- Test scenario
    test_scenario : process is
    variable i : integer;
    begin
        -- Initialize memory with test data
        for i in vectors'range loop
            wr_en <= '1';
            rd_en <= '0';
            addr <= vectors(i).address;
            wr_data <= vectors(i).write_data;
            wait for 10 ns;
            wr_en <= '0';
        end loop;

        -- work on including another test vector of data to read
        -- Read memory data
        for i in vectors'range loop
            rd_en <= '1';
            addr <= vectors(i).address;
            wait for 10 ns;
            -- assert rd_data = vectors(i).read_data report "Read data does not match expected value for test vector " & integer'image(i) & "
            end loop;
        end process;
end behavioral;