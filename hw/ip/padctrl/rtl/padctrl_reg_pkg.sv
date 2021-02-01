// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Package auto-generated by `reggen` containing data structure

package padctrl_reg_pkg;

  // Param list
  parameter int NDioPads = 4;
  parameter int NMioPads = 16;
  parameter int AttrDw = 10;

  // Address width within the block
  parameter int BlockAw = 6;

  ////////////////////////////
  // Typedefs for registers //
  ////////////////////////////
  typedef struct packed {
    logic [9:0] q;
    logic        qe;
  } padctrl_reg2hw_dio_pads_mreg_t;

  typedef struct packed {
    logic [9:0] q;
    logic        qe;
  } padctrl_reg2hw_mio_pads_mreg_t;


  typedef struct packed {
    logic [9:0] d;
  } padctrl_hw2reg_dio_pads_mreg_t;

  typedef struct packed {
    logic [9:0] d;
  } padctrl_hw2reg_mio_pads_mreg_t;


  ///////////////////////////////////////
  // Register to internal design logic //
  ///////////////////////////////////////
  typedef struct packed {
    padctrl_reg2hw_dio_pads_mreg_t [3:0] dio_pads; // [219:176]
    padctrl_reg2hw_mio_pads_mreg_t [15:0] mio_pads; // [175:0]
  } padctrl_reg2hw_t;

  ///////////////////////////////////////
  // Internal design logic to register //
  ///////////////////////////////////////
  typedef struct packed {
    padctrl_hw2reg_dio_pads_mreg_t [3:0] dio_pads; // [199:160]
    padctrl_hw2reg_mio_pads_mreg_t [15:0] mio_pads; // [159:0]
  } padctrl_hw2reg_t;

  // Register Address
  parameter logic [BlockAw-1:0] PADCTRL_REGEN_OFFSET = 6'h 0;
  parameter logic [BlockAw-1:0] PADCTRL_DIO_PADS_0_OFFSET = 6'h 4;
  parameter logic [BlockAw-1:0] PADCTRL_DIO_PADS_1_OFFSET = 6'h 8;
  parameter logic [BlockAw-1:0] PADCTRL_MIO_PADS_0_OFFSET = 6'h c;
  parameter logic [BlockAw-1:0] PADCTRL_MIO_PADS_1_OFFSET = 6'h 10;
  parameter logic [BlockAw-1:0] PADCTRL_MIO_PADS_2_OFFSET = 6'h 14;
  parameter logic [BlockAw-1:0] PADCTRL_MIO_PADS_3_OFFSET = 6'h 18;
  parameter logic [BlockAw-1:0] PADCTRL_MIO_PADS_4_OFFSET = 6'h 1c;
  parameter logic [BlockAw-1:0] PADCTRL_MIO_PADS_5_OFFSET = 6'h 20;


  // Register Index
  typedef enum int {
    PADCTRL_REGEN,
    PADCTRL_DIO_PADS_0,
    PADCTRL_DIO_PADS_1,
    PADCTRL_MIO_PADS_0,
    PADCTRL_MIO_PADS_1,
    PADCTRL_MIO_PADS_2,
    PADCTRL_MIO_PADS_3,
    PADCTRL_MIO_PADS_4,
    PADCTRL_MIO_PADS_5
  } padctrl_id_e;

  // Register width information to check illegal writes
  parameter logic [3:0] PADCTRL_PERMIT [9] = '{
    4'b 0001, // index[0] PADCTRL_REGEN
    4'b 1111, // index[1] PADCTRL_DIO_PADS_0
    4'b 0011, // index[2] PADCTRL_DIO_PADS_1
    4'b 1111, // index[3] PADCTRL_MIO_PADS_0
    4'b 1111, // index[4] PADCTRL_MIO_PADS_1
    4'b 1111, // index[5] PADCTRL_MIO_PADS_2
    4'b 1111, // index[6] PADCTRL_MIO_PADS_3
    4'b 1111, // index[7] PADCTRL_MIO_PADS_4
    4'b 0011  // index[8] PADCTRL_MIO_PADS_5
  };
endpackage
