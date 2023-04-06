# Entity: Priority_Encoder 

- **File**: Priority_Encoder.vhd
## Diagram

![image](Priority_Encoder.png)
## Generics

| Generic name | Type     | Value | Description |
| ------------ | -------- | ----- | ----------- |
| N            | positive | 4     |             |
| M            | positive | 2     |             |
## Ports

| Port name | Direction | Type                           | Description |
| --------- | --------- | ------------------------------ | ----------- |
| input     | in        | std_logic_vector(N-1 downto 0) |             |
| output    | out       | std_logic_vector(M-1 downto 0) |             |
## Processes
- Priority_Encoding_Process: ( input )