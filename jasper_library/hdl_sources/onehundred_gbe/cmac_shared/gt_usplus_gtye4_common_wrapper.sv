`timescale 1ps/1ps
`default_nettype none

/*
  Instances GTYE4_COMMON primitives, when NCOMMON=2 this
  will instance a second COMMON for boards like the ZCU216
*/
module gt_usplus_gtye4_common_wrapper #(
  parameter N_COMMON = 2
) (
  input wire logic refclk,
  input wire logic [N_COMMON-1:0] qpll0reset,
  output logic [N_COMMON-1:0]  qpll0lock,
  output logic [N_COMMON-1:0]  qpll0outclk,
  output logic [N_COMMON-1:0]  qpll0outrefclk,
  input  wire logic [N_COMMON-1:0]  qpll1reset,
  output logic [N_COMMON-1:0]  qpll1lock,
  output logic [N_COMMON-1:0]  qpll1outclk,
  output logic [N_COMMON-1:0]  qpll1outrefclk
);
  logic [N_COMMON-1:0] GTYE4_COMMON_QPLL0LOCK;
  logic [N_COMMON-1:0] GTYE4_COMMON_QPLL0OUTCLK;
  logic [N_COMMON-1:0] GTYE4_COMMON_QPLL0OUTREFCLK;
  logic [N_COMMON-1:0] GTYE4_COMMON_QPLL1LOCK;
  logic [N_COMMON-1:0] GTYE4_COMMON_QPLL1OUTCLK;
  logic [N_COMMON-1:0] GTYE4_COMMON_QPLL1OUTREFCLK;
  logic [N_COMMON-1:0] GTYE4_COMMON_QPLL0RESET;
  logic [N_COMMON-1:0] GTYE4_COMMON_QPLL1RESET;

//generate begin
//  if (N_COMMON == 2) begin
//    logic [1:0] GTYE4_COMMON_QPLL0LOCK;
//    logic [1:0] GTYE4_COMMON_QPLL0OUTCLK;
//    logic [1:0] GTYE4_COMMON_QPLL0OUTREFCLK;
//    logic [1:0] GTYE4_COMMON_QPLL1LOCK;
//    logic [1:0] GTYE4_COMMON_QPLL1OUTCLK;
//    logic [1:0] GTYE4_COMMON_QPLL1OUTREFCLK;
//    logic [1:0] GTYE4_COMMON_QPLL0RESET;
//    logic [1:0] GTYE4_COMMON_QPLL1RESET;
//  end else begin
//    logic [0:0] GTYE4_COMMON_QPLL0LOCK;
//    logic [0:0] GTYE4_COMMON_QPLL0OUTCLK;
//    logic [0:0] GTYE4_COMMON_QPLL0OUTREFCLK;
//    logic [0:0] GTYE4_COMMON_QPLL1LOCK;
//    logic [0:0] GTYE4_COMMON_QPLL1OUTCLK;
//    logic [0:0] GTYE4_COMMON_QPLL1OUTREFCLK;
//    logic [0:0] GTYE4_COMMON_QPLL0RESET;
//    logic [0:0] GTYE4_COMMON_QPLL1RESET;
//  end
//endgenerate

  logic GTYE4_COMMON_GTREFCLK00;

  assign GTYE4_COMMON_QPLL0RESET = qpll0reset;
  assign qpll0lock               = GTYE4_COMMON_QPLL0LOCK;
  assign qpll0outclk             = GTYE4_COMMON_QPLL0OUTCLK;
  assign qpll0outrefclk          = GTYE4_COMMON_QPLL0OUTREFCLK;  
  assign GTYE4_COMMON_QPLL1RESET = qpll1reset;
  assign qpll1lock               = GTYE4_COMMON_QPLL1LOCK;
  assign qpll1outclk             = GTYE4_COMMON_QPLL1OUTCLK;
  assign qpll1outrefclk          = GTYE4_COMMON_QPLL1OUTREFCLK;  
  assign GTYE4_COMMON_GTREFCLK00 = refclk;

cmac_usplus_0_gt_gtye4_common_wrapper quad0_inst (
  .GTYE4_COMMON_BGBYPASSB(1'b1),
  .GTYE4_COMMON_BGMONITORENB(1'b1),
  .GTYE4_COMMON_BGPDB(1'b1),
  .GTYE4_COMMON_BGRCALOVRD(5'b11111),
  .GTYE4_COMMON_BGRCALOVRDENB(1'b1),
  .GTYE4_COMMON_DRPADDR(16'd0),
  .GTYE4_COMMON_DRPCLK(1'b0),
  .GTYE4_COMMON_DRPDI(16'd0),
  .GTYE4_COMMON_DRPDO(),
  .GTYE4_COMMON_DRPEN(1'b0),
  .GTYE4_COMMON_DRPRDY(),
  .GTYE4_COMMON_DRPWE(1'b0),
  .GTYE4_COMMON_GTGREFCLK0(1'b0),
  .GTYE4_COMMON_GTGREFCLK1(1'b0),
  .GTYE4_COMMON_GTNORTHREFCLK00(1'b0),
  .GTYE4_COMMON_GTNORTHREFCLK01(1'b0),
  .GTYE4_COMMON_GTNORTHREFCLK10(1'b0),
  .GTYE4_COMMON_GTNORTHREFCLK11(1'b0),
  .GTYE4_COMMON_GTREFCLK00(GTYE4_COMMON_GTREFCLK00),
  .GTYE4_COMMON_GTREFCLK01(1'b0),
  .GTYE4_COMMON_GTREFCLK10(1'b0),
  .GTYE4_COMMON_GTREFCLK11(1'b0),
  .GTYE4_COMMON_GTSOUTHREFCLK00(1'b0),
  .GTYE4_COMMON_GTSOUTHREFCLK01(1'b0),
  .GTYE4_COMMON_GTSOUTHREFCLK10(1'b0),
  .GTYE4_COMMON_GTSOUTHREFCLK11(1'b0),
  .GTYE4_COMMON_PCIERATEQPLL0(3'b000),
  .GTYE4_COMMON_PCIERATEQPLL1(3'b000),
  .GTYE4_COMMON_PMARSVD0(8'b00000000),
  .GTYE4_COMMON_PMARSVD1(8'b00000000),
  .GTYE4_COMMON_PMARSVDOUT0(),
  .GTYE4_COMMON_PMARSVDOUT1(),
  .GTYE4_COMMON_QPLL0CLKRSVD0(1'b0),
  .GTYE4_COMMON_QPLL0CLKRSVD1(1'b0),
  .GTYE4_COMMON_QPLL0FBDIV(8'b00000000),
  .GTYE4_COMMON_QPLL0FBCLKLOST(),
  .GTYE4_COMMON_QPLL0LOCK(GTYE4_COMMON_QPLL0LOCK[0]),
  .GTYE4_COMMON_QPLL0LOCKDETCLK(1'b0),
  .GTYE4_COMMON_QPLL0LOCKEN(1'b1),
  .GTYE4_COMMON_QPLL0OUTCLK(GTYE4_COMMON_QPLL0OUTCLK[0]),
  .GTYE4_COMMON_QPLL0OUTREFCLK(GTYE4_COMMON_QPLL0OUTREFCLK[0]),
  .GTYE4_COMMON_QPLL0PD(1'b0),
  .GTYE4_COMMON_QPLL0REFCLKLOST(),
  .GTYE4_COMMON_QPLL0REFCLKSEL(3'b001),
  .GTYE4_COMMON_QPLL0RESET(GTYE4_COMMON_QPLL0RESET[0]),
  .GTYE4_COMMON_QPLL1CLKRSVD0(1'b0),
  .GTYE4_COMMON_QPLL1CLKRSVD1(1'b0),
  .GTYE4_COMMON_QPLL1FBDIV(8'b00000000),
  .GTYE4_COMMON_QPLL1FBCLKLOST(),
  .GTYE4_COMMON_QPLL1LOCK(GTYE4_COMMON_QPLL1LOCK[0]),
  .GTYE4_COMMON_QPLL1LOCKDETCLK(1'b0),
  .GTYE4_COMMON_QPLL1LOCKEN(1'b0),
  .GTYE4_COMMON_QPLL1OUTCLK(GTYE4_COMMON_QPLL1OUTCLK[0]),
  .GTYE4_COMMON_QPLL1OUTREFCLK(GTYE4_COMMON_QPLL1OUTREFCLK[0]),
  .GTYE4_COMMON_QPLL1PD(1'b1),
  .GTYE4_COMMON_QPLL1REFCLKLOST(),
  .GTYE4_COMMON_QPLL1REFCLKSEL(3'b001),
  .GTYE4_COMMON_QPLL1RESET(GTYE4_COMMON_QPLL1RESET[0]),
  .GTYE4_COMMON_QPLLDMONITOR0(),
  .GTYE4_COMMON_QPLLDMONITOR1(),
  .GTYE4_COMMON_QPLLRSVD1(8'b00000000),
  .GTYE4_COMMON_QPLLRSVD2(5'b00000),
  .GTYE4_COMMON_QPLLRSVD3(5'b00000),
  .GTYE4_COMMON_QPLLRSVD4(8'b00000000),
  .GTYE4_COMMON_RCALENB(1'b1),
  .GTYE4_COMMON_REFCLKOUTMONITOR0(),
  .GTYE4_COMMON_REFCLKOUTMONITOR1(),
  .GTYE4_COMMON_RXRECCLK0SEL(),
  .GTYE4_COMMON_RXRECCLK1SEL(),
  .GTYE4_COMMON_SDM0DATA(25'H0800000),
  .GTYE4_COMMON_SDM0FINALOUT(),
  .GTYE4_COMMON_SDM0RESET(1'b0),
  .GTYE4_COMMON_SDM0TOGGLE(1'b0),
  .GTYE4_COMMON_SDM0TESTDATA(),
  .GTYE4_COMMON_SDM0WIDTH(2'b00),
  .GTYE4_COMMON_SDM1DATA(25'H0000000),
  .GTYE4_COMMON_SDM1FINALOUT(),
  .GTYE4_COMMON_SDM1RESET(1'b0),
  .GTYE4_COMMON_SDM1TOGGLE(1'b0),
  .GTYE4_COMMON_SDM1TESTDATA(),
  .GTYE4_COMMON_SDM1WIDTH(2'b00),
  .GTYE4_COMMON_UBCFGSTREAMEN(1'b0),
  .GTYE4_COMMON_UBDO(16'b0000000000000000),
  .GTYE4_COMMON_UBDRDY(1'b0),
  .GTYE4_COMMON_UBENABLE(1'b0),
  .GTYE4_COMMON_UBGPI(2'b00),
  .GTYE4_COMMON_UBINTR(2'b00),
  .GTYE4_COMMON_UBIOLMBRST(1'b0),
  .GTYE4_COMMON_UBMBRST(1'b0),
  .GTYE4_COMMON_UBMDMCAPTURE(1'b0),
  .GTYE4_COMMON_UBMDMDBGRST(1'b0),
  .GTYE4_COMMON_UBMDMDBGUPDATE(1'b0),
  .GTYE4_COMMON_UBMDMREGEN(4'b0000),
  .GTYE4_COMMON_UBMDMSHIFT(1'b0),
  .GTYE4_COMMON_UBMDMSYSRST(1'b0),
  .GTYE4_COMMON_UBMDMTCK(1'b0),
  .GTYE4_COMMON_UBMDMTDI(1'b0),
  .GTYE4_COMMON_UBDADDR(),
  .GTYE4_COMMON_UBDEN(),
  .GTYE4_COMMON_UBDI(),
  .GTYE4_COMMON_UBDWE(),
  .GTYE4_COMMON_UBMDMTDO(),
  .GTYE4_COMMON_UBRSVDOUT(),
  .GTYE4_COMMON_UBTXUART()
);

generate 
  if (N_COMMON == 2) begin
    cmac_usplus_0_gt_gtye4_common_wrapper quad1_inst (
      .GTYE4_COMMON_BGBYPASSB(1'b1),
      .GTYE4_COMMON_BGMONITORENB(1'b1),
      .GTYE4_COMMON_BGPDB(1'b1),
      .GTYE4_COMMON_BGRCALOVRD(5'b11111),
      .GTYE4_COMMON_BGRCALOVRDENB(1'b1),
      .GTYE4_COMMON_DRPADDR(16'd0),
      .GTYE4_COMMON_DRPCLK(1'b0),
      .GTYE4_COMMON_DRPDI(16'd0),
      .GTYE4_COMMON_DRPDO(),
      .GTYE4_COMMON_DRPEN(1'b0),
      .GTYE4_COMMON_DRPRDY(),
      .GTYE4_COMMON_DRPWE(1'b0),
      .GTYE4_COMMON_GTGREFCLK0(1'b0),
      .GTYE4_COMMON_GTGREFCLK1(1'b0),
      .GTYE4_COMMON_GTNORTHREFCLK00(1'b0),
      .GTYE4_COMMON_GTNORTHREFCLK01(1'b0),
      .GTYE4_COMMON_GTNORTHREFCLK10(1'b0),
      .GTYE4_COMMON_GTNORTHREFCLK11(1'b0),
      .GTYE4_COMMON_GTREFCLK00(GTYE4_COMMON_GTREFCLK00),
      .GTYE4_COMMON_GTREFCLK01(1'b0),
      .GTYE4_COMMON_GTREFCLK10(1'b0),
      .GTYE4_COMMON_GTREFCLK11(1'b0),
      .GTYE4_COMMON_GTSOUTHREFCLK00(1'b0),
      .GTYE4_COMMON_GTSOUTHREFCLK01(1'b0),
      .GTYE4_COMMON_GTSOUTHREFCLK10(1'b0),
      .GTYE4_COMMON_GTSOUTHREFCLK11(1'b0),
      .GTYE4_COMMON_PCIERATEQPLL0(3'b000),
      .GTYE4_COMMON_PCIERATEQPLL1(3'b000),
      .GTYE4_COMMON_PMARSVD0(8'b00000000),
      .GTYE4_COMMON_PMARSVD1(8'b00000000),
      .GTYE4_COMMON_PMARSVDOUT0(),
      .GTYE4_COMMON_PMARSVDOUT1(),
      .GTYE4_COMMON_QPLL0CLKRSVD0(1'b0),
      .GTYE4_COMMON_QPLL0CLKRSVD1(1'b0),
      .GTYE4_COMMON_QPLL0FBDIV(8'b00000000),
      .GTYE4_COMMON_QPLL0FBCLKLOST(),
      .GTYE4_COMMON_QPLL0LOCK(GTYE4_COMMON_QPLL0LOCK[1]),
      .GTYE4_COMMON_QPLL0LOCKDETCLK(1'b0),
      .GTYE4_COMMON_QPLL0LOCKEN(1'b1),
      .GTYE4_COMMON_QPLL0OUTCLK(GTYE4_COMMON_QPLL0OUTCLK[1]),
      .GTYE4_COMMON_QPLL0OUTREFCLK(GTYE4_COMMON_QPLL0OUTREFCLK[1]),
      .GTYE4_COMMON_QPLL0PD(1'b0),
      .GTYE4_COMMON_QPLL0REFCLKLOST(),
      .GTYE4_COMMON_QPLL0REFCLKSEL(3'b001),
      .GTYE4_COMMON_QPLL0RESET(GTYE4_COMMON_QPLL0RESET[1]),
      .GTYE4_COMMON_QPLL1CLKRSVD0(1'b0),
      .GTYE4_COMMON_QPLL1CLKRSVD1(1'b0),
      .GTYE4_COMMON_QPLL1FBDIV(8'b00000000),
      .GTYE4_COMMON_QPLL1FBCLKLOST(),
      .GTYE4_COMMON_QPLL1LOCK(GTYE4_COMMON_QPLL1LOCK[1]),
      .GTYE4_COMMON_QPLL1LOCKDETCLK(1'b0),
      .GTYE4_COMMON_QPLL1LOCKEN(1'b0),
      .GTYE4_COMMON_QPLL1OUTCLK(GTYE4_COMMON_QPLL1OUTCLK[1]),
      .GTYE4_COMMON_QPLL1OUTREFCLK(GTYE4_COMMON_QPLL1OUTREFCLK[1]),
      .GTYE4_COMMON_QPLL1PD(1'b1),
      .GTYE4_COMMON_QPLL1REFCLKLOST(),
      .GTYE4_COMMON_QPLL1REFCLKSEL(3'b001),
      .GTYE4_COMMON_QPLL1RESET(GTYE4_COMMON_QPLL1RESET[1]),
      .GTYE4_COMMON_QPLLDMONITOR0(),
      .GTYE4_COMMON_QPLLDMONITOR1(),
      .GTYE4_COMMON_QPLLRSVD1(8'b00000000),
      .GTYE4_COMMON_QPLLRSVD2(5'b00000),
      .GTYE4_COMMON_QPLLRSVD3(5'b00000),
      .GTYE4_COMMON_QPLLRSVD4(8'b00000000),
      .GTYE4_COMMON_RCALENB(1'b1),
      .GTYE4_COMMON_REFCLKOUTMONITOR0(),
      .GTYE4_COMMON_REFCLKOUTMONITOR1(),
      .GTYE4_COMMON_RXRECCLK0SEL(),
      .GTYE4_COMMON_RXRECCLK1SEL(),
      .GTYE4_COMMON_SDM0DATA(25'H0800000),
      .GTYE4_COMMON_SDM0FINALOUT(),
      .GTYE4_COMMON_SDM0RESET(1'b0),
      .GTYE4_COMMON_SDM0TOGGLE(1'b0),
      .GTYE4_COMMON_SDM0TESTDATA(),
      .GTYE4_COMMON_SDM0WIDTH(2'b00),
      .GTYE4_COMMON_SDM1DATA(25'H0000000),
      .GTYE4_COMMON_SDM1FINALOUT(),
      .GTYE4_COMMON_SDM1RESET(1'b0),
      .GTYE4_COMMON_SDM1TOGGLE(1'b0),
      .GTYE4_COMMON_SDM1TESTDATA(),
      .GTYE4_COMMON_SDM1WIDTH(2'b00),
      .GTYE4_COMMON_UBCFGSTREAMEN(1'b0),
      .GTYE4_COMMON_UBDO(16'b0000000000000000),
      .GTYE4_COMMON_UBDRDY(1'b0),
      .GTYE4_COMMON_UBENABLE(1'b0),
      .GTYE4_COMMON_UBGPI(2'b00),
      .GTYE4_COMMON_UBINTR(2'b00),
      .GTYE4_COMMON_UBIOLMBRST(1'b0),
      .GTYE4_COMMON_UBMBRST(1'b0),
      .GTYE4_COMMON_UBMDMCAPTURE(1'b0),
      .GTYE4_COMMON_UBMDMDBGRST(1'b0),
      .GTYE4_COMMON_UBMDMDBGUPDATE(1'b0),
      .GTYE4_COMMON_UBMDMREGEN(4'b0000),
      .GTYE4_COMMON_UBMDMSHIFT(1'b0),
      .GTYE4_COMMON_UBMDMSYSRST(1'b0),
      .GTYE4_COMMON_UBMDMTCK(1'b0),
      .GTYE4_COMMON_UBMDMTDI(1'b0),
      .GTYE4_COMMON_UBDADDR(),
      .GTYE4_COMMON_UBDEN(),
      .GTYE4_COMMON_UBDI(),
      .GTYE4_COMMON_UBDWE(),
      .GTYE4_COMMON_UBMDMTDO(),
      .GTYE4_COMMON_UBRSVDOUT(),
      .GTYE4_COMMON_UBTXUART()
    );
  end
endgenerate

endmodule : gt_usplus_gtye4_common_wrapper
