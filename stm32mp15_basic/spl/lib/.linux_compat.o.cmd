cmd_spl/lib/linux_compat.o := arm-linux-gnueabi-gcc -Wp,-MD,spl/lib/.linux_compat.o.d -nostdinc -isystem /usr/lib/gcc-cross/arm-linux-gnueabi/11/include -Ispl/include -Iinclude  -I../include    -I../arch/arm/include -include ../include/linux/kconfig.h  -I../lib -Ispl/lib -D__KERNEL__ -D__UBOOT__ -DCONFIG_SPL_BUILD -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -std=gnu11 -fshort-wchar -fno-strict-aliasing -fno-PIE -Os -fno-stack-protector -fno-delete-null-pointer-checks -Wno-pointer-sign -Wno-stringop-truncation -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-maybe-uninitialized -fmacro-prefix-map=../= -gdwarf-4 -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Wno-unused-but-set-variable -Werror=date-time -Wno-packed-not-aligned -ffunction-sections -fdata-sections -fno-stack-protector -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -mgeneral-regs-only -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a  -I../arch/arm/mach-stm32mp/include    -DKBUILD_BASENAME='"linux_compat"'  -DKBUILD_MODNAME='"linux_compat"' -c -o spl/lib/linux_compat.o ../lib/linux_compat.c

source_spl/lib/linux_compat.o := ../lib/linux_compat.c

deps_spl/lib/linux_compat.o := \
  ../include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/spl/option.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/spl/int/option.h) \
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
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/sandbox/bits/per/long.h) \
  ../arch/arm/include/asm/types.h \
    $(wildcard include/config/arm64.h) \
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
    $(wildcard include/config/spl/optimize/inlining.h) \
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
    $(wildcard include/config/spl/log.h) \
    $(wildcard include/config/spl/log/max/level.h) \
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
    $(wildcard include/config/spl/sys/thumb/build.h) \
  ../include/asm-generic/bitops/builtin-__fls.h \
  ../include/asm-generic/bitops/builtin-__ffs.h \
  ../include/asm-generic/bitops/builtin-fls.h \
  ../include/asm-generic/bitops/builtin-ffs.h \
  ../include/asm-generic/bitops/fls64.h \
  ../arch/arm/include/asm/proc-armv/system.h \
  ../arch/arm/include/asm/config.h \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  ../include/linux/kconfig.h \
  ../include/config_fallbacks.h \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
  ../include/errno.h \
    $(wildcard include/config/errno/str.h) \
    $(wildcard include/config/spl/errno/str.h) \
  ../include/linux/errno.h \
  ../include/time.h \
  ../include/linux/typecheck.h \
  ../include/linux/string.h \
  ../arch/arm/include/asm/string.h \
    $(wildcard include/config/spl/use/arch/memcpy.h) \
    $(wildcard include/config/spl/use/arch/memmove.h) \
    $(wildcard include/config/spl/use/arch/memset.h) \
  ../include/linux/linux_string.h \
  ../arch/arm/include/asm/u-boot.h \
  ../include/asm-generic/u-boot.h \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/mpc8xx.h) \
    $(wildcard include/config/e500.h) \
    $(wildcard include/config/mpc86xx.h) \
    $(wildcard include/config/m68k.h) \
    $(wildcard include/config/mpc83xx.h) \
    $(wildcard include/config/extra/clock.h) \
    $(wildcard include/config/nr/dram/banks.h) \
  ../arch/arm/include/asm/u-boot-arm.h \
  ../include/vsprintf.h \
  ../include/malloc.h \
    $(wildcard include/config/spl/sys/malloc/simple.h) \
    $(wildcard include/config/valgrind.h) \
  ../include/memalign.h \
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
    $(wildcard include/config/sys/noncached/memory.h) \
  ../arch/arm/include/asm/barriers.h \
  ../include/linux/compat.h \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/lbdaf.h) \
  ../include/console.h \
    $(wildcard include/config/console/record.h) \
    $(wildcard include/config/console/mux.h) \
  ../include/stdio_dev.h \
  ../include/iomux.h \
  ../include/cyclic.h \
    $(wildcard include/config/cyclic.h) \
  ../arch/arm/include/asm/processor.h \
  ../arch/arm/include/asm/atomic.h \
    $(wildcard include/config/smp.h) \
  ../include/asm-generic/atomic.h \
  ../arch/arm/include/asm/ptrace.h \
  ../arch/arm/include/asm/proc-armv/ptrace.h \
  ../arch/arm/include/asm/proc-armv/processor.h \
  ../arch/arm/include/asm/proc-armv/domain.h \
  ../include/linux/err.h \
    $(wildcard include/config/err/ptr/offset.h) \

spl/lib/linux_compat.o: $(deps_spl/lib/linux_compat.o)

$(deps_spl/lib/linux_compat.o):
