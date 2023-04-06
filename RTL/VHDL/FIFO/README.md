# Entity: FIFO 

- **File**: FIFO.vhd
## Diagram
![image](https://user-images.githubusercontent.com/91759964/230260760-3a00c7a9-21b5-49e6-af37-74a2107b2861.png)

## Generics

| Generic name | Type     | Value | Description |
| ------------ | -------- | ----- | ----------- |
| width        | positive | 8     |             |
| depth        | positive | 16    |             |
## Ports

| Port name | Direction | Type                                | Description |
| --------- | --------- | ----------------------------------- | ----------- |
| clk       | in        | std_logic                           |             |
| rst       | in        | std_logic                           |             |
| din       | in        | std_logic_vector (width-1 downto 0) |             |
| write_en  | in        | std_logic                           |             |
| dout      | out       | std_logic_vector (width-1 downto 0) |             |
| read_en   | in        | std_logic                           |             |
| full      | out       | std_logic                           |             |
| empty     | out       | std_logic                           |             |
## Signals

| Name      | Type                       | Description |
| --------- | -------------------------- | ----------- |
| mem       | mem_type                   |             |
| read_ptr  | integer range 0 to depth-1 |             |
| write_ptr | integer range 0 to depth-1 |             |
| count     | integer range 0 to depth   |             |
## Types

| Name     | Type | Description |
| -------- | ---- | ----------- |
| mem_type |      |             |
## Processes
- unnamed: ( clk )
