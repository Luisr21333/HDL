# Entity: Johnson_Counter 

- **File**: Johnson_Counter.vhd
## Diagram

![image](Johnson_Counter.png)
## Generics

| Generic name | Type    | Value | Description |
| ------------ | ------- | ----- | ----------- |
| WIDTH        | integer | 4     |             |
## Ports

| Port name | Direction | Type                               | Description |
| --------- | --------- | ---------------------------------- | ----------- |
| clk       | in        | std_logic                          |             |
| rst       | in        | std_logic                          |             |
| Q         | out       | std_logic_vector(WIDTH-1 downto 0) |             |
## Signals

| Name  | Type                               | Description |
| ----- | ---------------------------------- | ----------- |
| q_tmp | std_logic_vector(WIDTH-1 downto 0) |             |
## Processes
- Johnson_Counter_Process: ( clk,rst )
