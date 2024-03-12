// SPDX-License-Identifier: GPL-2.0+
/*
 * Copyright (C) 2019 Rosy Song <rosysong@rosinson.com>
 *
 * Based on QSDK
 */

#include <asm/global_data.h>
#include <asm/io.h>
#include <asm/addrspace.h>
#include <asm/types.h>
#include <linux/delay.h>
#include <mach/ar71xx_regs.h>
#include <mach/ath79.h>

#define DDR_FSM_WAIT_CTRL_VAL 0xa12
#define DDR_CTL_CONFIG_SRAM_TSEL_LSB 30
#define DDR_CTL_CONFIG_SRAM_TSEL_MASK 0xc0000000
#define DDR_CTL_CONFIG_SRAM_TSEL_SET(x) \
	(((x) << DDR_CTL_CONFIG_SRAM_TSEL_LSB) & DDR_CTL_CONFIG_SRAM_TSEL_MASK)
#define DDR_CTL_CONFIG_GE0_SRAM_SYNC_LSB 20
#define DDR_CTL_CONFIG_GE0_SRAM_SYNC_MASK 0x00100000
#define DDR_CTL_CONFIG_GE0_SRAM_SYNC_SET(x) \
	(((x) << DDR_CTL_CONFIG_GE0_SRAM_SYNC_LSB) & DDR_CTL_CONFIG_GE0_SRAM_SYNC_MASK)
#define DDR_CTL_CONFIG_GE1_SRAM_SYNC_LSB 19
#define DDR_CTL_CONFIG_GE1_SRAM_SYNC_MASK 0x00080000
#define DDR_CTL_CONFIG_GE1_SRAM_SYNC_SET(x) \
	(((x) << DDR_CTL_CONFIG_GE1_SRAM_SYNC_LSB) & DDR_CTL_CONFIG_GE1_SRAM_SYNC_MASK)
#define DDR_CTL_CONFIG_USB_SRAM_SYNC_LSB 18
#define DDR_CTL_CONFIG_USB_SRAM_SYNC_MASK 0x00040000
#define DDR_CTL_CONFIG_USB_SRAM_SYNC_SET(x) \
	(((x) << DDR_CTL_CONFIG_USB_SRAM_SYNC_LSB) & DDR_CTL_CONFIG_USB_SRAM_SYNC_MASK)
#define DDR_CTL_CONFIG_PCIE_SRAM_SYNC_LSB 17
#define DDR_CTL_CONFIG_PCIE_SRAM_SYNC_MASK 0x00020000
#define DDR_CTL_CONFIG_PCIE_SRAM_SYNC_SET(x) \
	(((x) << DDR_CTL_CONFIG_PCIE_SRAM_SYNC_LSB) & DDR_CTL_CONFIG_PCIE_SRAM_SYNC_MASK)
#define DDR_CTL_CONFIG_WMAC_SRAM_SYNC_LSB 16
#define DDR_CTL_CONFIG_WMAC_SRAM_SYNC_MASK 0x00010000
#define DDR_CTL_CONFIG_WMAC_SRAM_SYNC_SET(x) \
	(((x) << DDR_CTL_CONFIG_WMAC_SRAM_SYNC_LSB) & DDR_CTL_CONFIG_WMAC_SRAM_SYNC_MASK)
#define DDR_CTL_CONFIG_MISC_SRC1_SRAM_SYNC_LSB 15
#define DDR_CTL_CONFIG_MISC_SRC1_SRAM_SYNC_MASK 0x00008000
#define DDR_CTL_CONFIG_MISC_SRC1_SRAM_SYNC_SET(x) \
	(((x) << DDR_CTL_CONFIG_MISC_SRC1_SRAM_SYNC_LSB) & DDR_CTL_CONFIG_MISC_SRC1_SRAM_SYNC_MASK)
#define DDR_CTL_CONFIG_MISC_SRC2_SRAM_SYNC_LSB 14
#define DDR_CTL_CONFIG_MISC_SRC2_SRAM_SYNC_MASK 0x00004000
#define DDR_CTL_CONFIG_MISC_SRC2_SRAM_SYNC_SET(x) \
	(((x) << DDR_CTL_CONFIG_MISC_SRC2_SRAM_SYNC_LSB) & DDR_CTL_CONFIG_MISC_SRC2_SRAM_SYNC_MASK)
#define DDR_CTL_CONFIG_PAD_DDR2_SEL_LSB 6
#define DDR_CTL_CONFIG_PAD_DDR2_SEL_MASK 0x00000040
#define DDR_CTL_CONFIG_PAD_DDR2_SEL_SET(x) \
	(((x) << DDR_CTL_CONFIG_PAD_DDR2_SEL_LSB) & DDR_CTL_CONFIG_PAD_DDR2_SEL_MASK)
#define DDR_CTL_CONFIG_CPU_DDR_SYNC_LSB 2
#define DDR_CTL_CONFIG_CPU_DDR_SYNC_MASK 0x00000004
#define DDR_CTL_CONFIG_CPU_DDR_SYNC_SET(x) \
	(((x) << DDR_CTL_CONFIG_CPU_DDR_SYNC_LSB) & DDR_CTL_CONFIG_CPU_DDR_SYNC_MASK)
#define DDR_CTL_CONFIG_HALF_WIDTH_LSB 1
#define DDR_CTL_CONFIG_HALF_WIDTH_MASK 0x00000002
#define DDR_CTL_CONFIG_HALF_WIDTH_SET(x) \
	(((x) << DDR_CTL_CONFIG_HALF_WIDTH_LSB) & DDR_CTL_CONFIG_HALF_WIDTH_MASK)
#define DDR_CONFIG_CAS_LATENCY_MSB_LSB 31
#define DDR_CONFIG_CAS_LATENCY_MSB_MASK 0x80000000
#define DDR_CONFIG_CAS_LATENCY_MSB_SET(x) \
	(((x) << DDR_CONFIG_CAS_LATENCY_MSB_LSB) & DDR_CONFIG_CAS_LATENCY_MSB_MASK)
#define DDR_CONFIG_OPEN_PAGE_LSB 30
#define DDR_CONFIG_OPEN_PAGE_MASK 0x40000000
#define DDR_CONFIG_OPEN_PAGE_SET(x) \
	(((x) << DDR_CONFIG_OPEN_PAGE_LSB) & DDR_CONFIG_OPEN_PAGE_MASK)
#define DDR_CONFIG_CAS_LATENCY_LSB 27
#define DDR_CONFIG_CAS_LATENCY_MASK 0x38000000
#define DDR_CONFIG_CAS_LATENCY_SET(x) \
	(((x) << DDR_CONFIG_CAS_LATENCY_LSB) & DDR_CONFIG_CAS_LATENCY_MASK)
#define DDR_CONFIG_TMRD_LSB 23
#define DDR_CONFIG_TMRD_MASK 0x07800000
#define DDR_CONFIG_TMRD_SET(x) \
	(((x) << DDR_CONFIG_TMRD_LSB) & DDR_CONFIG_TMRD_MASK)
#define DDR_CONFIG_TRFC_LSB 17
#define DDR_CONFIG_TRFC_MASK 0x007e0000
#define DDR_CONFIG_TRFC_SET(x) \
	(((x) << DDR_CONFIG_TRFC_LSB) & DDR_CONFIG_TRFC_MASK)
#define DDR_CONFIG_TRRD_LSB 13
#define DDR_CONFIG_TRRD_MASK 0x0001e000
#define DDR_CONFIG_TRRD_SET(x) \
	(((x) << DDR_CONFIG_TRRD_LSB) & DDR_CONFIG_TRRD_MASK)
#define DDR_CONFIG_TRP_LSB 9
#define DDR_CONFIG_TRP_MASK 0x00001e00
#define DDR_CONFIG_TRP_SET(x) \
	(((x) << DDR_CONFIG_TRP_LSB) & DDR_CONFIG_TRP_MASK)
#define DDR_CONFIG_TRCD_LSB 5
#define DDR_CONFIG_TRCD_MASK 0x000001e0
#define DDR_CONFIG_TRCD_SET(x) \
	(((x) << DDR_CONFIG_TRCD_LSB) & DDR_CONFIG_TRCD_MASK)
#define DDR_CONFIG_TRAS_LSB 0
#define DDR_CONFIG_TRAS_MASK 0x0000001f
#define DDR_CONFIG_TRAS_SET(x) \
	(((x) << DDR_CONFIG_TRAS_LSB) & DDR_CONFIG_TRAS_MASK)
#define DDR_CONFIG2_HALF_WIDTH_LOW_LSB 31
#define DDR_CONFIG2_HALF_WIDTH_LOW_MASK 0x80000000
#define DDR_CONFIG2_HALF_WIDTH_LOW_SET(x) \
	(((x) << DDR_CONFIG2_HALF_WIDTH_LOW_LSB) & DDR_CONFIG2_HALF_WIDTH_LOW_MASK)
#define DDR_CONFIG2_SWAP_A26_A27_LSB 30
#define DDR_CONFIG2_SWAP_A26_A27_MASK 0x40000000
#define DDR_CONFIG2_SWAP_A26_A27_SET(x) \
	(((x) << DDR_CONFIG2_SWAP_A26_A27_LSB) & DDR_CONFIG2_SWAP_A26_A27_MASK)
#define DDR_CONFIG2_GATE_OPEN_LATENCY_LSB 26
#define DDR_CONFIG2_GATE_OPEN_LATENCY_MASK 0x3c000000
#define DDR_CONFIG2_GATE_OPEN_LATENCY_SET(x) \
	(((x) << DDR_CONFIG2_GATE_OPEN_LATENCY_LSB) & DDR_CONFIG2_GATE_OPEN_LATENCY_MASK)
#define DDR_CONFIG2_TWTR_LSB 21
#define DDR_CONFIG2_TWTR_MASK 0x03e00000
#define DDR_CONFIG2_TWTR_SET(x) \
	(((x) << DDR_CONFIG2_TWTR_LSB) & DDR_CONFIG2_TWTR_MASK)
#define DDR_CONFIG2_TRTP_LSB 17
#define DDR_CONFIG2_TRTP_MASK 0x001e0000
#define DDR_CONFIG2_TRTP_SET(x) \
	(((x) << DDR_CONFIG2_TRTP_LSB) & DDR_CONFIG2_TRTP_MASK)
#define DDR_CONFIG2_TRTW_LSB 12
#define DDR_CONFIG2_TRTW_MASK 0x0001f000
#define DDR_CONFIG2_TRTW_SET(x) \
	(((x) << DDR_CONFIG2_TRTW_LSB) & DDR_CONFIG2_TRTW_MASK)
#define DDR_CONFIG2_TWR_LSB 8
#define DDR_CONFIG2_TWR_MASK 0x00000f00
#define DDR_CONFIG2_TWR_SET(x) \
	(((x) << DDR_CONFIG2_TWR_LSB) & DDR_CONFIG2_TWR_MASK)
#define DDR_CONFIG2_CKE_LSB 7
#define DDR_CONFIG2_CKE_MASK 0x00000080
#define DDR_CONFIG2_CKE_SET(x) \
	(((x) << DDR_CONFIG2_CKE_LSB) & DDR_CONFIG2_CKE_MASK)
#define DDR_CONFIG2_CNTL_OE_EN_LSB 5
#define DDR_CONFIG2_CNTL_OE_EN_MASK 0x00000020
#define DDR_CONFIG2_CNTL_OE_EN_SET(x) \
	(((x) << DDR_CONFIG2_CNTL_OE_EN_LSB) & DDR_CONFIG2_CNTL_OE_EN_MASK)
#define DDR_CONFIG2_BURST_LENGTH_LSB 0
#define DDR_CONFIG2_BURST_LENGTH_MASK 0x0000000f
#define DDR_CONFIG2_BURST_LENGTH_SET(x) \
	(((x) << DDR_CONFIG2_BURST_LENGTH_LSB) & DDR_CONFIG2_BURST_LENGTH_MASK)
#define RST_BOOTSTRAP_ADDRESS		0x180600b0
#define PMU2_SWREGMSB_LSB 22
#define PMU2_SWREGMSB_MASK 0xffc00000
#define PMU2_SWREGMSB_SET(x) \
	(((x) << PMU2_SWREGMSB_LSB) & PMU2_SWREGMSB_MASK)
#define PMU2_PGM_LSB 21
#define PMU2_PGM_MASK 0x00200000
#define PMU2_PGM_SET(x) \
	(((x) << PMU2_PGM_LSB) & PMU2_PGM_MASK)

#define CPU_DDR_SYNC_MODE DDR_CTL_CONFIG_CPU_DDR_SYNC_SET(0)

/*
* DDR2                      DDR1
* 0x40c3   25MHz            0x4186   25Mhz
* 0x4138   40MHz            0x4270   40Mhz
*/
#define CFG_DDR2_REFRESH_VAL 0x40c3
#define CFG_DDR2_CONFIG_VAL DDR_CONFIG_CAS_LATENCY_MSB_SET(0x1) | \
	DDR_CONFIG_OPEN_PAGE_SET(0x1) | DDR_CONFIG_CAS_LATENCY_SET(0x4) | \
	DDR_CONFIG_TMRD_SET(0x6) | DDR_CONFIG_TRFC_SET(0x16) | \
	DDR_CONFIG_TRRD_SET(0x7) | DDR_CONFIG_TRP_SET(0xb) | \
	DDR_CONFIG_TRCD_SET(0xb) | DDR_CONFIG_TRAS_SET(0)
#define CFG_DDR2_CONFIG2_VAL DDR_CONFIG2_HALF_WIDTH_LOW_SET(0x1) | \
	DDR_CONFIG2_SWAP_A26_A27_SET(0x0) | DDR_CONFIG2_GATE_OPEN_LATENCY_SET(0xa) | \
	DDR_CONFIG2_TWTR_SET(0x16) | DDR_CONFIG2_TRTP_SET(0xa) | \
	DDR_CONFIG2_TRTW_SET(0xe) | DDR_CONFIG2_TWR_SET(0x2) | \
	DDR_CONFIG2_CKE_SET(0x1) | DDR_CONFIG2_CNTL_OE_EN_SET(0x1) | \
	DDR_CONFIG2_BURST_LENGTH_SET(0x8)

#define CFG_DDR2_CONFIG3_VAL 0x0000000e
#define CFG_DDR2_EXT_MODE_VAL1 0x782
#define CFG_DDR2_EXT_MODE_VAL2 0x402
#define CFG_DDR2_MODE_VAL_INIT 0xb53
#define CFG_DDR2_MODE_VAL 0xa53
#define CFG_DDR2_TAP_VAL 0x10
#define CFG_DDR2_EN_TWL_VAL 0x00001e91
#define CFG_DDR2_RD_DATA_THIS_CYCLE_VAL_16 0xffff

#define CFG_DDR_CTL_CONFIG DDR_CTL_CONFIG_SRAM_TSEL_SET(0x1) | \
	DDR_CTL_CONFIG_GE0_SRAM_SYNC_SET(0x1) | \
	DDR_CTL_CONFIG_GE1_SRAM_SYNC_SET(0x1) | \
	DDR_CTL_CONFIG_USB_SRAM_SYNC_SET(0x1) | \
	DDR_CTL_CONFIG_PCIE_SRAM_SYNC_SET(0x1) | \
	DDR_CTL_CONFIG_WMAC_SRAM_SYNC_SET(0x1) | \
	DDR_CTL_CONFIG_MISC_SRC1_SRAM_SYNC_SET(0x1) | \
	DDR_CTL_CONFIG_MISC_SRC2_SRAM_SYNC_SET(0x1)

DECLARE_GLOBAL_DATA_PTR;

void qca956x_ddr_init(void)
{
	u32 ddr_config, ddr_config2, ddr_config3, mod_val, \
		mod_val_init, cycle_val, tap_val, ctl_config;
	void __iomem *ddr_regs = map_physmem(AR71XX_DDR_CTRL_BASE, AR71XX_DDR_CTRL_SIZE,
			       MAP_NOCACHE);
	void __iomem *srif_regs = map_physmem(QCA956X_SRIF_BASE, QCA956X_SRIF_SIZE,
			       MAP_NOCACHE);

	ddr_config = CFG_DDR2_CONFIG_VAL;
	ddr_config2 = CFG_DDR2_CONFIG2_VAL;
	ddr_config3 = CFG_DDR2_CONFIG3_VAL;
	mod_val_init = CFG_DDR2_MODE_VAL_INIT;
	mod_val = CFG_DDR2_MODE_VAL;
	tap_val = CFG_DDR2_TAP_VAL;
	cycle_val = CFG_DDR2_RD_DATA_THIS_CYCLE_VAL_16;
	ctl_config = CFG_DDR_CTL_CONFIG | DDR_CTL_CONFIG_PAD_DDR2_SEL_SET(0x1) |
			 DDR_CTL_CONFIG_HALF_WIDTH_SET(0x1) | CPU_DDR_SYNC_MODE;

	writel(0x10, ddr_regs + AR71XX_DDR_REG_CONTROL);
	udelay(10);

	writel(0x20, ddr_regs + AR71XX_DDR_REG_CONTROL);
	udelay(10);

	writel(ctl_config, ddr_regs + QCA956X_DDR_REG_CTL_CONF);
	udelay(10);

	writel(cycle_val, ddr_regs + AR71XX_DDR_REG_RD_CYCLE);
	udelay(100);

	writel(0x74444444, ddr_regs + QCA956X_DDR_REG_BURST);
	udelay(100);

	writel(0x44444444, ddr_regs + QCA956X_DDR_REG_BURST2);
	udelay(100);

	writel(DDR_FSM_WAIT_CTRL_VAL, ddr_regs + QCA956X_DDR_REG_FSM_WAIT_CTRL);
	udelay(100);

	writel(0xfffff, ddr_regs + QCA956X_DDR_REG_TIMEOUT_MAX);
	udelay(100);

	writel(ddr_config, ddr_regs + AR71XX_DDR_REG_CONFIG);
	udelay(100);

	writel(ddr_config2, ddr_regs + AR71XX_DDR_REG_CONFIG2);
	udelay(100);

	writel(ddr_config3, ddr_regs + QCA956X_DDR_REG_DDR3_CONFIG);
	udelay(100);

	writel(CFG_DDR2_EN_TWL_VAL, ddr_regs + QCA956X_DDR_REG_DDR2_CONFIG);
	udelay(100);

	writel(ddr_config2 | 0x80, ddr_regs + AR71XX_DDR_REG_CONFIG2);	/* CKE Enable */
	udelay(100);

	writel(0x8, ddr_regs + AR71XX_DDR_REG_CONTROL);	/* Precharge */
	udelay(10);

	writel(0, ddr_regs + QCA956X_DDR_REG_DDR2_EMR2);
	writel(0x10, ddr_regs + AR71XX_DDR_REG_CONTROL);	/* EMR2 */
	udelay(10);

	writel(0, ddr_regs + QCA956X_DDR_REG_DDR2_EMR3);
	writel(0x20, ddr_regs + AR71XX_DDR_REG_CONTROL);	/* EMR3 */
	udelay(10);

	/* EMR DLL enable, Reduced Driver Impedance control, Differential DQS disabled */
	writel(CFG_DDR2_EXT_MODE_VAL2, ddr_regs + AR71XX_DDR_REG_EMR);
	udelay(100);

	writel(0x2, ddr_regs + AR71XX_DDR_REG_CONTROL); /* EMR write */
	udelay(10);

	writel(mod_val_init, ddr_regs + AR71XX_DDR_REG_MODE);
	udelay(1000);

	writel(0x1, ddr_regs + AR71XX_DDR_REG_CONTROL);	/* MR Write */
	udelay(10);

	writel(0x8, ddr_regs + AR71XX_DDR_REG_CONTROL);	/* Precharge */
	udelay(10);

	writel(0x4, ddr_regs + AR71XX_DDR_REG_CONTROL);	/* Auto Refresh */
	udelay(10);

	writel(0x4, ddr_regs + AR71XX_DDR_REG_CONTROL);	/* Auto Refresh */
	udelay(10);

	/* Issue MRS to remove DLL out-of-reset */
	writel(mod_val, ddr_regs + AR71XX_DDR_REG_MODE);
	udelay(100);

	writel(0x1, ddr_regs + AR71XX_DDR_REG_CONTROL); /* MR write */
	udelay(100);

	writel(CFG_DDR2_EXT_MODE_VAL1, ddr_regs + AR71XX_DDR_REG_EMR);
	udelay(100);

	writel(0x2, ddr_regs + AR71XX_DDR_REG_CONTROL); /* EMR write */
	udelay(100);

	writel(CFG_DDR2_EXT_MODE_VAL2, ddr_regs + AR71XX_DDR_REG_EMR);
	udelay(100);

	writel(0x2, ddr_regs + AR71XX_DDR_REG_CONTROL); /* EMR write */
	udelay(100);

	writel(CFG_DDR2_REFRESH_VAL, ddr_regs + AR71XX_DDR_REG_REFRESH);
	udelay(100);

	writel(tap_val, ddr_regs + AR71XX_DDR_REG_TAP_CTRL0);
	writel(tap_val, ddr_regs + AR71XX_DDR_REG_TAP_CTRL1);
	writel(tap_val, ddr_regs + QCA956X_DDR_REG_TAP_CTRL2);
	writel(tap_val, ddr_regs + QCA956X_DDR_REG_TAP_CTRL3);

	writel(0x633c8176, srif_regs + QCA956X_SRIF_PMU1_REG);
	/* Set DDR2 Voltage to 1.8 volts */
	writel(PMU2_SWREGMSB_SET(0x40) | PMU2_PGM_SET(0x1),
	       srif_regs + QCA956X_SRIF_PMU2_REG);
}
