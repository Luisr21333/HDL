# Entity: Synchronizer 

- **File**: Synchronizer.vhd
## Diagram

![Diagram](README.svg "Diagram")
## Ports

| Port name | Direction | Type      | Description |
| --------- | --------- | --------- | ----------- |
| clk       | in        | std_logic |             |
| async_in  | in        | std_logic |             |
| sync_out  | out       | std_logic |             |
## Signals

| Name          | Type      | Description |
| ------------- | --------- | ----------- |
| delayed_async | std_logic |             |
## Processes
- Delay_Process: ( clk )
- Synchronize_Process: ( clk )
