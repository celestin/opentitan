// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// xbar_peri_bind module generated by `tlgen.py` tool for assertions
module xbar_peri_bind;

  // Host interfaces
  bind xbar_peri tlul_assert #(.EndpointType("Device")) tlul_assert_host_main (
    .clk_i  (clk_peri_i),
    .rst_ni (rst_peri_ni),
    .h2d    (tl_main_i),
    .d2h    (tl_main_o)
  );

  // Device interfaces
  bind xbar_peri tlul_assert #(.EndpointType("Host")) tlul_assert_device_uart (
    .clk_i  (clk_peri_i),
    .rst_ni (rst_peri_ni),
    .h2d    (tl_uart_o),
    .d2h    (tl_uart_i)
  );
  bind xbar_peri tlul_assert #(.EndpointType("Host")) tlul_assert_device_gpio (
    .clk_i  (clk_peri_i),
    .rst_ni (rst_peri_ni),
    .h2d    (tl_gpio_o),
    .d2h    (tl_gpio_i)
  );
  bind xbar_peri tlul_assert #(.EndpointType("Host")) tlul_assert_device_spi_device (
    .clk_i  (clk_peri_i),
    .rst_ni (rst_peri_ni),
    .h2d    (tl_spi_device_o),
    .d2h    (tl_spi_device_i)
  );
  bind xbar_peri tlul_assert #(.EndpointType("Host")) tlul_assert_device_rv_timer (
    .clk_i  (clk_peri_i),
    .rst_ni (rst_peri_ni),
    .h2d    (tl_rv_timer_o),
    .d2h    (tl_rv_timer_i)
  );

endmodule