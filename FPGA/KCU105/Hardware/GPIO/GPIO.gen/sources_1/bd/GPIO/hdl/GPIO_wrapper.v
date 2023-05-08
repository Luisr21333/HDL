//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon Apr 24 09:37:24 2023
//Host        : MT-108780 running 64-bit major release  (build 9200)
//Command     : generate_target GPIO_wrapper.bd
//Design      : GPIO_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module GPIO_wrapper
   (ddr4_sdram_DR_act_n,
    ddr4_sdram_DR_adr,
    ddr4_sdram_DR_ba,
    ddr4_sdram_DR_bg,
    ddr4_sdram_DR_ck_c,
    ddr4_sdram_DR_ck_t,
    ddr4_sdram_DR_cke,
    ddr4_sdram_DR_cs_n,
    ddr4_sdram_DR_dm_n,
    ddr4_sdram_DR_dq,
    ddr4_sdram_DR_dqs_c,
    ddr4_sdram_DR_dqs_t,
    ddr4_sdram_DR_odt,
    ddr4_sdram_DR_reset_n,
    default_sysclk_300_clk_n,
    default_sysclk_300_clk_p,
    led_8bits_tri_o,
    push_buttons_5bits_tri_i,
    reset,
    rs232_uart_rxd,
    rs232_uart_txd);
  output ddr4_sdram_DR_act_n;
  output [16:0]ddr4_sdram_DR_adr;
  output [1:0]ddr4_sdram_DR_ba;
  output ddr4_sdram_DR_bg;
  output ddr4_sdram_DR_ck_c;
  output ddr4_sdram_DR_ck_t;
  output ddr4_sdram_DR_cke;
  output ddr4_sdram_DR_cs_n;
  inout [7:0]ddr4_sdram_DR_dm_n;
  inout [63:0]ddr4_sdram_DR_dq;
  inout [7:0]ddr4_sdram_DR_dqs_c;
  inout [7:0]ddr4_sdram_DR_dqs_t;
  output ddr4_sdram_DR_odt;
  output ddr4_sdram_DR_reset_n;
  input default_sysclk_300_clk_n;
  input default_sysclk_300_clk_p;
  output [7:0]led_8bits_tri_o;
  input [4:0]push_buttons_5bits_tri_i;
  input reset;
  input rs232_uart_rxd;
  output rs232_uart_txd;

  wire ddr4_sdram_DR_act_n;
  wire [16:0]ddr4_sdram_DR_adr;
  wire [1:0]ddr4_sdram_DR_ba;
  wire ddr4_sdram_DR_bg;
  wire ddr4_sdram_DR_ck_c;
  wire ddr4_sdram_DR_ck_t;
  wire ddr4_sdram_DR_cke;
  wire ddr4_sdram_DR_cs_n;
  wire [7:0]ddr4_sdram_DR_dm_n;
  wire [63:0]ddr4_sdram_DR_dq;
  wire [7:0]ddr4_sdram_DR_dqs_c;
  wire [7:0]ddr4_sdram_DR_dqs_t;
  wire ddr4_sdram_DR_odt;
  wire ddr4_sdram_DR_reset_n;
  wire default_sysclk_300_clk_n;
  wire default_sysclk_300_clk_p;
  wire [7:0]led_8bits_tri_o;
  wire [4:0]push_buttons_5bits_tri_i;
  wire reset;
  wire rs232_uart_rxd;
  wire rs232_uart_txd;

  GPIO GPIO_i
       (.ddr4_sdram_DR_act_n(ddr4_sdram_DR_act_n),
        .ddr4_sdram_DR_adr(ddr4_sdram_DR_adr),
        .ddr4_sdram_DR_ba(ddr4_sdram_DR_ba),
        .ddr4_sdram_DR_bg(ddr4_sdram_DR_bg),
        .ddr4_sdram_DR_ck_c(ddr4_sdram_DR_ck_c),
        .ddr4_sdram_DR_ck_t(ddr4_sdram_DR_ck_t),
        .ddr4_sdram_DR_cke(ddr4_sdram_DR_cke),
        .ddr4_sdram_DR_cs_n(ddr4_sdram_DR_cs_n),
        .ddr4_sdram_DR_dm_n(ddr4_sdram_DR_dm_n),
        .ddr4_sdram_DR_dq(ddr4_sdram_DR_dq),
        .ddr4_sdram_DR_dqs_c(ddr4_sdram_DR_dqs_c),
        .ddr4_sdram_DR_dqs_t(ddr4_sdram_DR_dqs_t),
        .ddr4_sdram_DR_odt(ddr4_sdram_DR_odt),
        .ddr4_sdram_DR_reset_n(ddr4_sdram_DR_reset_n),
        .default_sysclk_300_clk_n(default_sysclk_300_clk_n),
        .default_sysclk_300_clk_p(default_sysclk_300_clk_p),
        .led_8bits_tri_o(led_8bits_tri_o),
        .push_buttons_5bits_tri_i(push_buttons_5bits_tri_i),
        .reset(reset),
        .rs232_uart_rxd(rs232_uart_rxd),
        .rs232_uart_txd(rs232_uart_txd));
endmodule
