library ieee;
use ieee.std_logic_1164.all;

-- Single Stage Synchronizer
entity Synchronizer is
    port (
        clk : in std_logic;
        async_in : in std_logic;
        sync_out : out std_logic
    );
end entity Synchronizer;

architecture behavioral of Synchronizer is
signal delayed_async : std_logic := '0';
begin

    -- Delay the asynchronous input signal for one clock cycle
    process (clk)
    begin
        if rising_edge(clk) then
            delayed_async <= async_in; -- 1st clock cycle
        end if;
    end process;

    -- Synchronize the delayed asynchronous signal to the clock domain of clk
    -- This ensures that the input signal has enough time to stabilize before it is sampled by the synchronizer process
    process (clk)
    begin
        if rising_edge(clk) then
            sync_out <= delayed_async; -- 2nd clock cycle
        end if;
    end process;
end architecture behavioral;