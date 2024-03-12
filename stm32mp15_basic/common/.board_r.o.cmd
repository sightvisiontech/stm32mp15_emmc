cmd_common/board_r.o := arm-linux-gnueabi-gcc -Wp,-MD,common/.board_r.o.d -nostdinc -isystem /usr/lib/gcc-cross/arm-linux-gnueabi/11/include -Iinclude  -I../include    -I../arch/arm/include -include ../include/linux/kconfig.h  -I../common -Icommon -D__KERNEL__ -D__UBOOT__ -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -std=gnu11 -fshort-wchar -fno-strict-aliasing -fno-PIE -Os -fno-stack-protector -fno-delete-null-pointer-checks -Wno-pointer-sign -Wno-stringop-truncation -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-maybe-uninitialized -fmacro-prefix-map=../= -gdwarf-4 -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Wno-unused-but-set-variable -Werror=date-time -Wno-packed-not-aligned -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -mgeneral-regs-only -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a  -I../arch/arm/mach-stm32mp/include    -DKBUILD_BASENAME='"board_r"'  -DKBUILD_MODNAME='"board_r"' -c -o common/board_r.o ../common/board_r.c

source_common/board_r.o := ../common/board_r.c

deps_common/board_r.o := \
    $(wildcard include/config/mtd/nor/flash.h) \
    $(wildcard include/config/trace.h) \
    $(wildcard include/config/trace/buffer/size.h) \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/riscv.h) \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/nios2.h) \
    $(wildcard include/config/mpc85xx.h) \
    $(wildcard include/config/mpc86xx.h) \
    $(wildcard include/config/sys/monitor/base.h) \
    $(wildcard include/config/sys/reloc/gd/env/addr.h) \
    $(wildcard include/config/efi/loader.h) \
    $(wildcard include/config/sys/init/ram/lock.h) \
    $(wildcard include/config/e500.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/sys/malloc/f.h) \
    $(wildcard include/config/of/live.h) \
    $(wildcard include/config/dm.h) \
    $(wildcard include/config/timer.h) \
    $(wildcard include/config/timer/early.h) \
    $(wildcard include/config/multiplexer.h) \
    $(wildcard include/config/binman/fdt.h) \
    $(wildcard include/config/sys/flash/checksum.h) \
    $(wildcard include/config/sys/update/flash/size.h) \
    $(wildcard include/config/oxc.h) \
    $(wildcard include/config/rmu.h) \
    $(wildcard include/config/text/base.h) \
    $(wildcard include/config/cmd/nand.h) \
    $(wildcard include/config/cmd/onenand.h) \
    $(wildcard include/config/mmc.h) \
    $(wildcard include/config/pvblock.h) \
    $(wildcard include/config/of/control.h) \
    $(wildcard include/config/delay/environment.h) \
    $(wildcard include/config/save/prev/bl/initramfs/start/addr.h) \
    $(wildcard include/config/save/prev/bl/fdt/addr.h) \
    $(wildcard include/config/sys/malloc/bootparams.h) \
    $(wildcard include/config/sys/bootparams/len.h) \
    $(wildcard include/config/led/status.h) \
    $(wildcard include/config/led/status/boot.h) \
    $(wildcard include/config/led/status/blinking.h) \
    $(wildcard include/config/scsi.h) \
    $(wildcard include/config/dm/scsi.h) \
    $(wildcard include/config/cmd/net.h) \
    $(wildcard include/config/reset/phy/r.h) \
    $(wildcard include/config/post.h) \
    $(wildcard include/config/of/real.h) \
    $(wildcard include/config/of/has/prior/stage.h) \
    $(wildcard include/config/of/tag/migrate.h) \
    $(wildcard include/config/console/record.h) \
    $(wildcard include/config/sys/noncached/memory.h) \
    $(wildcard include/config/addr/map.h) \
    $(wildcard include/config/clocks.h) \
    $(wildcard include/config/fsp/version2.h) \
    $(wildcard include/config/wdt.h) \
    $(wildcard include/config/board/early/init/r.h) \
    $(wildcard include/config/pci/init/r.h) \
    $(wildcard include/config/sys/early/pci/init.h) \
    $(wildcard include/config/arch/early/init/r.h) \
    $(wildcard include/config/m68k.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/id/eeprom.h) \
    $(wildcard include/config/api.h) \
    $(wildcard include/config/display/boardinfo/late.h) \
    $(wildcard include/config/arch/misc/init.h) \
    $(wildcard include/config/misc/init/r.h) \
    $(wildcard include/config/cmd/kgdb.h) \
    $(wildcard include/config/microblaze.h) \
    $(wildcard include/config/board/late/init.h) \
    $(wildcard include/config/bitbangmii.h) \
    $(wildcard include/config/pci/endpoint.h) \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/efi/app.h) \
    $(wildcard include/config/arm64.h) \
  ../include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/option.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/int/option.h) \
  ../include/common.h \
  include/config.h \
  ../include/configs/stm32mp15_st_common.h \
    $(wildcard include/config/sys/load/addr.h) \
  ../include/configs/stm32mp15_common.h \
    $(wildcard include/config/distro/defaults.h) \
    $(wildcard include/config/cmd/mmc.h) \
    $(wildcard include/config/net.h) \
    $(wildcard include/config/cmd/ubifs.h) \
    $(wildcard include/config/cmd/usb.h) \
  ../include/linux/sizes.h \
  ../include/linux/const.h \
  include/asm/arch/stm32.h \
    $(wildcard include/config/stm32mp15x.h) \
    $(wildcard include/config/stm32mp13x.h) \
  ../include/linux/bitops.h \
    $(wildcard include/config/sandbox/bits/per/long.h) \
  ../arch/arm/include/asm/types.h \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  ../include/asm-generic/int-ll64.h \
  ../include/asm-generic/bitsperlong.h \
  ../include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  ../include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/cc/has/asm/inline.h) \
  ../include/linux/compiler_attributes.h \
  ../include/linux/compiler-gcc.h \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  ../include/linux/types.h \
    $(wildcard include/config/uid16.h) \
  ../include/linux/posix_types.h \
  ../include/linux/stddef.h \
  ../arch/arm/include/asm/posix_types.h \
  /usr/lib/gcc-cross/arm-linux-gnueabi/11/include/stdbool.h \
  ../include/linux/kernel.h \
  ../include/linux/printk.h \
    $(wildcard include/config/loglevel.h) \
    $(wildcard include/config/log.h) \
  ../include/log.h \
    $(wildcard include/config/log/max/level.h) \
    $(wildcard include/config/panic/hang.h) \
    $(wildcard include/config/log/error/return.h) \
    $(wildcard include/config/logf/file.h) \
    $(wildcard include/config/logf/line.h) \
    $(wildcard include/config/logf/func.h) \
  ../include/stdio.h \
    $(wildcard include/config/tpl/serial.h) \
    $(wildcard include/config/spl/serial.h) \
    $(wildcard include/config/console/flush/support.h) \
  /usr/lib/gcc-cross/arm-linux-gnueabi/11/include/stdarg.h \
  ../include/linker_lists.h \
    $(wildcard include/config/linker/list/align.h) \
  ../include/dm/uclass-id.h \
  ../include/linux/list.h \
  ../include/linux/poison.h \
  ../arch/arm/include/asm/bitops.h \
    $(wildcard include/config/has/thumb2.h) \
    $(wildcard include/config/sys/thumb/build.h) \
  ../include/asm-generic/bitops/builtin-__fls.h \
  ../include/asm-generic/bitops/builtin-__ffs.h \
  ../include/asm-generic/bitops/builtin-fls.h \
  ../include/asm-generic/bitops/builtin-ffs.h \
  ../include/asm-generic/bitops/fls64.h \
  ../arch/arm/include/asm/proc-armv/system.h \
  ../include/config_distro_bootcmd.h \
    $(wildcard include/config/x86/run/32bit.h) \
    $(wildcard include/config/x86/run/64bit.h) \
    $(wildcard include/config/arch/rv32i.h) \
    $(wildcard include/config/arch/rv64i.h) \
    $(wildcard include/config/cmd/bootefi/bootmgr.h) \
    $(wildcard include/config/sata.h) \
    $(wildcard include/config/nvme.h) \
    $(wildcard include/config/ide.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/cmd/virtio.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/cmd/pxe.h) \
    $(wildcard include/config/cmd/extension.h) \
  ../arch/arm/include/asm/config.h \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  ../include/linux/kconfig.h \
  ../include/config_fallbacks.h \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
  ../include/errno.h \
    $(wildcard include/config/errno/str.h) \
  ../include/linux/errno.h \
  ../include/time.h \
  ../include/linux/typecheck.h \
  ../include/linux/string.h \
  ../arch/arm/include/asm/string.h \
    $(wildcard include/config/use/arch/memcpy.h) \
    $(wildcard include/config/use/arch/memmove.h) \
    $(wildcard include/config/use/arch/memset.h) \
  ../include/linux/linux_string.h \
  ../arch/arm/include/asm/u-boot.h \
  ../include/asm-generic/u-boot.h \
    $(wildcard include/config/mpc8xx.h) \
    $(wildcard include/config/mpc83xx.h) \
    $(wildcard include/config/extra/clock.h) \
    $(wildcard include/config/nr/dram/banks.h) \
  ../arch/arm/include/asm/u-boot-arm.h \
  ../include/vsprintf.h \
  ../include/api.h \
  ../include/bootstage.h \
    $(wildcard include/config/show/boot/progress.h) \
    $(wildcard include/config/bootstage.h) \
    $(wildcard include/config/bootstage/stash.h) \
  ../include/mapmem.h \
    $(wildcard include/config/arch/map/sysmem.h) \
  ../include/cpu_func.h \
  ../include/cyclic.h \
    $(wildcard include/config/cyclic.h) \
  ../include/display_options.h \
  ../include/exports.h \
    $(wildcard include/config/phy/aquantia.h) \
    $(wildcard include/config/sys/malloc/simple.h) \
    $(wildcard include/config/cmd/i2c.h) \
    $(wildcard include/config/dm/i2c.h) \
  ../include/irq_func.h \
  ../arch/arm/include/asm/global_data.h \
    $(wildcard include/config/fsl/esdhc.h) \
    $(wildcard include/config/fsl/esdhc/imx.h) \
    $(wildcard include/config/u/qe.h) \
    $(wildcard include/config/at91family.h) \
    $(wildcard include/config/sys/icache/off.h) \
    $(wildcard include/config/sys/dcache/off.h) \
    $(wildcard include/config/resv/ram.h) \
    $(wildcard include/config/arch/omap2plus.h) \
    $(wildcard include/config/fsl/lsch3.h) \
    $(wildcard include/config/sys/fsl/has/dp/ddr.h) \
    $(wildcard include/config/arch/imx8.h) \
    $(wildcard include/config/imx/ele.h) \
    $(wildcard include/config/arch/imx8ulp.h) \
    $(wildcard include/config/smbios.h) \
  ../include/asm-generic/global_data.h \
    $(wildcard include/config/video.h) \
    $(wildcard include/config/board/types.h) \
    $(wildcard include/config/pre/console/buffer.h) \
    $(wildcard include/config/of/platdata/driver/rt.h) \
    $(wildcard include/config/of/platdata/rt.h) \
    $(wildcard include/config/multi/dtb/fit.h) \
    $(wildcard include/config/sys/i2c/legacy.h) \
    $(wildcard include/config/cmd/bdinfo/extra.h) \
    $(wildcard include/config/pci/bootdelay.h) \
    $(wildcard include/config/bloblist.h) \
    $(wildcard include/config/handoff.h) \
    $(wildcard include/config/translation/offset.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/generate/smbios/table.h) \
    $(wildcard include/config/event.h) \
    $(wildcard include/config/event/dynamic.h) \
    $(wildcard include/config/sys/malloc/f/len.h) \
  ../include/event_internal.h \
  ../include/event.h \
    $(wildcard include/config/event/debug.h) \
  ../include/dm/ofnode_decl.h \
  ../include/fdtdec.h \
    $(wildcard include/config/fdt/64bit.h) \
    $(wildcard include/config/of/embed.h) \
    $(wildcard include/config/of/board.h) \
  ../include/linux/libfdt.h \
  ../include/linux/libfdt_env.h \
  ../arch/arm/include/asm/byteorder.h \
  ../include/linux/byteorder/little_endian.h \
  ../include/linux/byteorder/swab.h \
  ../include/linux/byteorder/generic.h \
  ../include/linux/../../scripts/dtc/libfdt/libfdt.h \
  ../include/linux/../../scripts/dtc/libfdt/libfdt_env.h \
  ../include/linux/../../scripts/dtc/libfdt/fdt.h \
  ../include/pci.h \
    $(wildcard include/config/sys/pci/64bit.h) \
    $(wildcard include/config/dm/pci/compat.h) \
    $(wildcard include/config/pci/sriov.h) \
  ../include/pci_ids.h \
  ../include/dm/pci.h \
  ../include/membuff.h \
  ../include/linux/build_bug.h \
  ../include/asm-offsets.h \
  include/generated/generic-asm-offsets.h \
  ../include/linux/delay.h \
  ../include/_exports.h \
    $(wildcard include/config/cmd/spi.h) \
    $(wildcard include/config/dm/spi.h) \
  ../include/hang.h \
  ../include/image.h \
    $(wildcard include/config/lmb.h) \
    $(wildcard include/config/timestamp.h) \
    $(wildcard include/config/cmd/date.h) \
    $(wildcard include/config/fit/signature.h) \
    $(wildcard include/config/fit/cipher.h) \
  ../include/compiler.h \
  /usr/lib/gcc-cross/arm-linux-gnueabi/11/include/stddef.h \
  ../include/lmb.h \
    $(wildcard include/config/lmb/use/max/regions.h) \
    $(wildcard include/config/lmb/max/regions.h) \
    $(wildcard include/config/lmb/memory/regions.h) \
    $(wildcard include/config/lmb/reserved/regions.h) \
  ../include/command.h \
    $(wildcard include/config/sys/longhelp.h) \
    $(wildcard include/config/auto/complete.h) \
    $(wildcard include/config/cmd/run.h) \
    $(wildcard include/config/cmd/memory.h) \
    $(wildcard include/config/cmd/itest.h) \
    $(wildcard include/config/cmd/pci.h) \
    $(wildcard include/config/cmd/setexpr.h) \
    $(wildcard include/config/cmd/bootd.h) \
    $(wildcard include/config/cmd/bootm.h) \
    $(wildcard include/config/cmd/nvedit/efi.h) \
    $(wildcard include/config/cmdline.h) \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/sys/maxargs.h) \
  ../include/env.h \
    $(wildcard include/config/env/import/fdt.h) \
  ../include/compiler.h \
  ../include/hash.h \
    $(wildcard include/config/sha384.h) \
    $(wildcard include/config/sha512.h) \
  ../include/fdt_support.h \
    $(wildcard include/config/of/libfdt.h) \
    $(wildcard include/config/arch/fixup/fdt/memory.h) \
    $(wildcard include/config/usb/ehci/fsl.h) \
    $(wildcard include/config/usb/xhci/fsl.h) \
    $(wildcard include/config/sys/fsl/sec/compat.h) \
    $(wildcard include/config/sys/fdt/pad.h) \
    $(wildcard include/config/of/board/setup.h) \
    $(wildcard include/config/board/rng/seed.h) \
    $(wildcard include/config/of/system/setup.h) \
    $(wildcard include/config/fdt/fixup/partitions.h) \
    $(wildcard include/config/fman/enet.h) \
    $(wildcard include/config/fsl/mc/enet.h) \
    $(wildcard include/config/cmd/pstore.h) \
  ../include/abuf.h \
  ../include/u-boot/hash-checksum.h \
  ../include/u-boot/sha1.h \
  ../include/u-boot/sha256.h \
  ../include/u-boot/sha512.h \
  ../include/net.h \
    $(wildcard include/config/sys/rx/eth/buffer.h) \
    $(wildcard include/config/dm/eth.h) \
    $(wildcard include/config/dm/dsa.h) \
    $(wildcard include/config/bootp/dns2.h) \
    $(wildcard include/config/bootp/max/root/path/len.h) \
    $(wildcard include/config/cmd/dns.h) \
    $(wildcard include/config/cmd/ping.h) \
    $(wildcard include/config/cmd/cdp.h) \
    $(wildcard include/config/cmd/sntp.h) \
    $(wildcard include/config/netconsole.h) \
  ../arch/arm/include/asm/cache.h \
    $(wildcard include/config/sys/cacheline/size.h) \
  ../arch/arm/include/asm/system.h \
    $(wildcard include/config/armv8/psci.h) \
    $(wildcard include/config/armv7/lpae.h) \
    $(wildcard include/config/cpu/v7a.h) \
    $(wildcard include/config/sys/arm/cache/writethrough.h) \
    $(wildcard include/config/sys/arm/cache/writealloc.h) \
    $(wildcard include/config/sys/arm/cache/writeback.h) \
    $(wildcard include/config/armv7/psci.h) \
  ../arch/arm/include/asm/barriers.h \
  ../include/hexdump.h \
  ../include/linux/ctype.h \
  ../include/linux/if_ether.h \
  ../include/rand.h \
  ../include/u-boot/crc.h \
  ../include/binman.h \
  ../include/dm/ofnode.h \
    $(wildcard include/config/ofnode/multi/tree.h) \
    $(wildcard include/config/dm/inline/ofnode.h) \
  ../include/dm/of.h \
  ../include/dm/of_access.h \
  ../include/phy_interface.h \
    $(wildcard include/config/arch/lx2160a.h) \
    $(wildcard include/config/arch/lx2162a.h) \
    $(wildcard include/config/phy/ncsi.h) \
  ../include/string.h \
  ../include/console.h \
    $(wildcard include/config/console/mux.h) \
  ../include/stdio_dev.h \
  ../include/iomux.h \
  ../include/dm.h \
  ../include/dm/device.h \
    $(wildcard include/config/devres.h) \
    $(wildcard include/config/dm/dma.h) \
    $(wildcard include/config/iommu.h) \
    $(wildcard include/config/acpigen.h) \
  ../include/dm/tag.h \
  ../include/dm/fdtaddr.h \
  ../include/dm/read.h \
    $(wildcard include/config/dm/dev/read/inline.h) \
    $(wildcard include/config/of/platdata.h) \
  ../include/dm/uclass.h \
  ../include/dm/platdata.h \
  ../include/env_internal.h \
    $(wildcard include/config/env/is/in/flash.h) \
    $(wildcard include/config/env/addr/redund.h) \
    $(wildcard include/config/env/addr.h) \
    $(wildcard include/config/env/size.h) \
    $(wildcard include/config/sys/monitor/len.h) \
    $(wildcard include/config/env/is/in/nand.h) \
    $(wildcard include/config/env/offset/oob.h) \
    $(wildcard include/config/env/offset/redund.h) \
    $(wildcard include/config/sys/redundand/environment.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/env/is/in/nvram.h) \
    $(wildcard include/config/default/env/is/rw.h) \
    $(wildcard include/config/cmd/saveenv.h) \
    $(wildcard include/config/saveenv.h) \
    $(wildcard include/config/cmd/eraseenv.h) \
    $(wildcard include/config/env/ext4/interface.h) \
    $(wildcard include/config/env/ext4/device/and/part.h) \
    $(wildcard include/config/env/fat/interface.h) \
    $(wildcard include/config/env/fat/device/and/part.h) \
  ../include/env_attr.h \
  ../include/env_callback.h \
    $(wildcard include/config/silent/console.h) \
    $(wildcard include/config/regex.h) \
    $(wildcard include/config/ipv6.h) \
    $(wildcard include/config/bootstd/full.h) \
  ../include/env_flags.h \
    $(wildcard include/config/env/writeable/list.h) \
    $(wildcard include/config/env/overwrite.h) \
    $(wildcard include/config/overwrite/ethaddr/once.h) \
    $(wildcard include/config/cmd/env/flags.h) \
  ../include/search.h \
  ../include/ide.h \
    $(wildcard include/config/sys/ide/maxdevice.h) \
    $(wildcard include/config/sys/ide/maxbus.h) \
  ../include/blk.h \
    $(wildcard include/config/sys/64bit/lba.h) \
    $(wildcard include/config/blk.h) \
    $(wildcard include/config/spl/legacy/block.h) \
    $(wildcard include/config/block/cache.h) \
    $(wildcard include/config/bounce/buffer.h) \
  ../include/bouncebuf.h \
  ../include/efi.h \
    $(wildcard include/config/efi/stub/64bit.h) \
    $(wildcard include/config/efi/ram/size.h) \
  ../include/linux/linkage.h \
  ../arch/arm/include/asm/linkage.h \
  ../include/init.h \
    $(wildcard include/config/efi.h) \
    $(wildcard include/config/cpu.h) \
    $(wildcard include/config/dtb/reselect.h) \
  ../include/initcall.h \
  ../include/kgdb.h \
  ../arch/arm/include/asm/ptrace.h \
  ../arch/arm/include/asm/proc-armv/ptrace.h \
  ../include/malloc.h \
    $(wildcard include/config/valgrind.h) \
  ../include/miiphy.h \
    $(wildcard include/config/sys/fault/echo/link/down.h) \
    $(wildcard include/config/bitbangmii/multi.h) \
  ../include/linux/mii.h \
  ../include/phy.h \
    $(wildcard include/config/phy/fixed.h) \
  ../include/linux/ethtool.h \
  ../include/linux/mdio.h \
  ../include/mmc.h \
    $(wildcard include/config/mmc/hs200/support.h) \
    $(wildcard include/config/mmc/uhs/support.h) \
    $(wildcard include/config/dm/mmc.h) \
    $(wildcard include/config/mmc/hs400/es/support.h) \
    $(wildcard include/config/mmc/pwrseq.h) \
    $(wildcard include/config/mmc/hs400/support.h) \
    $(wildcard include/config/mmc/write.h) \
    $(wildcard include/config/mmc/hw/partitioning.h) \
    $(wildcard include/config/dm/regulator.h) \
    $(wildcard include/config/mmc/spi.h) \
    $(wildcard include/config/sys/mmc/env/part.h) \
  ../include/linux/dma-direction.h \
  ../include/part.h \
    $(wildcard include/config/partition/uuids.h) \
    $(wildcard include/config/partition/type/guid.h) \
    $(wildcard include/config/dos/partition.h) \
    $(wildcard include/config/partitions.h) \
    $(wildcard include/config/spl/fs/ext4.h) \
    $(wildcard include/config/spl/fs/fat.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/u/boot/partition.h) \
    $(wildcard include/config/efi/partition.h) \
  ../include/uuid.h \
  ../include/part_efi.h \
    $(wildcard include/config/efi/partition/entries/numbers.h) \
  ../include/mux.h \
  ../include/nand.h \
    $(wildcard include/config/sys/nand/self/init.h) \
    $(wildcard include/config/sys/nand/select/device.h) \
  ../include/linux/compat.h \
    $(wildcard include/config/lbdaf.h) \
  ../arch/arm/include/asm/processor.h \
  ../arch/arm/include/asm/atomic.h \
    $(wildcard include/config/smp.h) \
  ../include/asm-generic/atomic.h \
  ../arch/arm/include/asm/proc-armv/processor.h \
  ../arch/arm/include/asm/proc-armv/domain.h \
  ../include/linux/err.h \
    $(wildcard include/config/err/ptr/offset.h) \
  ../include/linux/mtd/mtd.h \
    $(wildcard include/config/sys/nand/max/oobfree.h) \
    $(wildcard include/config/sys/nand/max/eccpos.h) \
    $(wildcard include/config/mtd/partitions.h) \
  ../include/mtd/mtd-abi.h \
  ../include/div64.h \
  ../include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  ../include/of_live.h \
  ../include/onenand_uboot.h \
  ../include/pvblock.h \
  ../include/scsi.h \
    $(wildcard include/config/sys/scsi/max/scsi/id.h) \
    $(wildcard include/config/sys/scsi/max/lun.h) \
  ../include/serial.h \
    $(wildcard include/config/arch/tegra.h) \
    $(wildcard include/config/sys/coreboot.h) \
    $(wildcard include/config/usb/tty.h) \
    $(wildcard include/config/sys/pbsize.h) \
    $(wildcard include/config/dm/serial.h) \
  ../include/post.h \
    $(wildcard include/config/arch/mpc8360.h) \
    $(wildcard include/config/sys/immr.h) \
  ../arch/arm/include/asm/io.h \
  ../arch/arm/include/asm/memory.h \
    $(wildcard include/config/discontigmem.h) \
  ../include/asm-generic/io.h \
  ../include/iotrace.h \
    $(wildcard include/config/io/trace.h) \
  ../include/status_led.h \
    $(wildcard include/config/sys/hz.h) \
    $(wildcard include/config/led/status/freq.h) \
    $(wildcard include/config/led/status1.h) \
    $(wildcard include/config/led/status/freq1.h) \
    $(wildcard include/config/led/status2.h) \
    $(wildcard include/config/led/status/freq2.h) \
    $(wildcard include/config/led/status3.h) \
    $(wildcard include/config/led/status/freq3.h) \
    $(wildcard include/config/led/status4.h) \
    $(wildcard include/config/led/status/freq4.h) \
    $(wildcard include/config/led/status5.h) \
    $(wildcard include/config/led/status/freq5.h) \
    $(wildcard include/config/mvs.h) \
    $(wildcard include/config/led/status/board/specific.h) \
  ../include/timer.h \
  ../include/trace.h \
  ../include/watchdog.h \
    $(wildcard include/config/watchdog.h) \
    $(wildcard include/config/hw/watchdog.h) \
  ../include/xen.h \
  ../arch/arm/include/asm/sections.h \
  ../include/asm-generic/sections.h \
  ../include/dm/root.h \
    $(wildcard include/config/of/platdata/inst.h) \
    $(wildcard include/config/dm/device/remove.h) \
  ../include/efi_loader.h \
    $(wildcard include/config/efi/loader/bounce/buffer.h) \
    $(wildcard include/config/cmd/bootefi/selftest.h) \
  ../include/efi_api.h \
  ../include/charset.h \
  ../include/pe.h \
  ../include/asm-generic/pe.h \
  ../include/linux/oid_registry.h \
  ../include/wdt.h \
  ../include/asm-generic/gpio.h \
  ../include/relocate.h \

common/board_r.o: $(deps_common/board_r.o)

$(deps_common/board_r.o):
