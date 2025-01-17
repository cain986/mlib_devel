# IO constraints
# ------------------------------------------------------------------------------

# Satellite UART
set_property PACKAGE_PIN BB26                    [get_ports satellite_uart_0_rxd]
set_property -dict {IOSTANDARD LVCMOS18}         [get_ports satellite_uart_0_rxd]
set_property PACKAGE_PIN BB25                    [get_ports satellite_uart_0_txd]
set_property -dict {IOSTANDARD LVCMOS18 DRIVE 4} [get_ports satellite_uart_0_txd]

# MSP GPIO (Sateliite GPIO)
set_property PACKAGE_PIN C16                     [get_ports satellite_gpio_0[0]]
set_property -dict {IOSTANDARD LVCMOS18}         [get_ports satellite_gpio_0[0]]
set_property PACKAGE_PIN C17                     [get_ports satellite_gpio_0[1]]
set_property -dict {IOSTANDARD LVCMOS18}         [get_ports satellite_gpio_0[1]]

# Critical Warning generated by upgrade to 2020.1: Required to be a free-running clock AR# 64764
#connect_debug_port dbg_hub/clk [get_pins -hier [list clk_wiz_0_hbm_ctrl/clk_out1]]

# HBM CATTRIP
set_property PACKAGE_PIN J18                     [get_ports hbm_cattrip_tri_o]
set_property -dict {IOSTANDARD LVCMOS18 DRIVE 4} [get_ports hbm_cattrip_tri_o]

# PCIE_PERSTN
set_property PACKAGE_PIN AW27                    [get_ports pcie_perstn]
set_property -dict {IOSTANDARD LVCMOS18        } [get_ports pcie_perstn]

# PCIE_REFCLK
set_property PACKAGE_PIN AF9                     [get_ports pcie_refclk_clk_p]
#set_property -dict {IOSTANDARD LVDS            } [get_ports pcie_refclk_clk_p]
set_property PACKAGE_PIN AF8                     [get_ports pcie_refclk_clk_n]
#set_property -dict {IOSTANDARD LVDS            } [get_ports pcie_refclk_clk_n]

# HBM_CLK
#set_property PACKAGE_PIN BB18                    [get_ports hbm_clk_clk_p]
#set_property -dict {IOSTANDARD LVDS            } [get_ports hbm_clk_clk_p]
#set_property PACKAGE_PIN BC18                    [get_ports hbm_clk_clk_n]
#set_property -dict {IOSTANDARD LVDS            } [get_ports hbm_clk_clk_n]

# QSFP_REFCLK0
#set_property PACKAGE_PIN N36                     [get_ports qsfp_refclk0_clk_p]
#set_property -dict {IOSTANDARD LVDS            } [get_ports qsfp_refclk0_clk_p]
#set_property PACKAGE_PIN N37                     [get_ports qsfp_refclk0_clk_n]
#set_property -dict {IOSTANDARD LVDS            } [get_ports qsfp_refclk0_clk_n]

#set_property PACKAGE_PIN H18                     [get_ports gpio_si5394_tri_i[0]]
#set_property -dict {IOSTANDARD LVCMOS18        } [get_ports gpio_si5394_tri_i[0]]
#set_property PACKAGE_PIN G19                     [get_ports gpio_si5394_tri_i[1]]
#set_property -dict {IOSTANDARD LVCMOS18        } [get_ports gpio_si5394_tri_i[1]]
#set_property PACKAGE_PIN H19                     [get_ports gpio_si5394_tri_i[2]]
#set_property -dict {IOSTANDARD LVCMOS18        } [get_ports gpio_si5394_tri_i[2]]

#set_property PACKAGE_PIN E18                     [get_ports qsfp28_leds_tri_o[0]]
#set_property -dict {IOSTANDARD LVCMOS18 DRIVE 8} [get_ports qsfp28_leds_tri_o[0]]
#set_property PACKAGE_PIN E16                     [get_ports qsfp28_leds_tri_o[1]]
#set_property -dict {IOSTANDARD LVCMOS18 DRIVE 8} [get_ports qsfp28_leds_tri_o[1]]
#set_property PACKAGE_PIN F17                     [get_ports qsfp28_leds_tri_o[2]]
#set_property -dict {IOSTANDARD LVCMOS18 DRIVE 8} [get_ports qsfp28_leds_tri_o[2]]
#set_property PACKAGE_PIN E15                     [get_ports qsfp28_leds_tri_o[3]]
#set_property -dict {IOSTANDARD LVCMOS18 DRIVE 8} [get_ports qsfp28_leds_tri_o[3]]
#set_property PACKAGE_PIN F15                     [get_ports qsfp28_leds_tri_o[4]]
#set_property -dict {IOSTANDARD LVCMOS18 DRIVE 8} [get_ports qsfp28_leds_tri_o[4]]
#set_property PACKAGE_PIN E17                     [get_ports qsfp28_leds_tri_o[5]]
#set_property -dict {IOSTANDARD LVCMOS18 DRIVE 8} [get_ports qsfp28_leds_tri_o[5]]