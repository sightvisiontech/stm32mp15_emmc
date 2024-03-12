cmd_spl/arch/arm/cpu/armv7/nonsec_virt.o := arm-linux-gnueabi-gcc -Wp,-MD,spl/arch/arm/cpu/armv7/.nonsec_virt.o.d -nostdinc -isystem /usr/lib/gcc-cross/arm-linux-gnueabi/11/include -Ispl/include -Iinclude  -I../include    -I../arch/arm/include -include ../include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SPL_BUILD -D__ASSEMBLY__ -fno-PIE -gdwarf-4 -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -mgeneral-regs-only -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a  -I../arch/arm/mach-stm32mp/include   -c -o spl/arch/arm/cpu/armv7/nonsec_virt.o ../arch/arm/cpu/armv7/nonsec_virt.S

source_spl/arch/arm/cpu/armv7/nonsec_virt.o := ../arch/arm/cpu/armv7/nonsec_virt.S

deps_spl/arch/arm/cpu/armv7/nonsec_virt.o := \
    $(wildcard include/config/armv7/psci.h) \
    $(wildcard include/config/arm/errata/773022.h) \
    $(wildcard include/config/arm/errata/774769.h) \
    $(wildcard include/config/armv7/virt.h) \
    $(wildcard include/config/arm/gic/base/address.h) \
    $(wildcard include/config/counter/frequency.h) \
    $(wildcard include/config/pen/addr/big/endian.h) \
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
  ../arch/arm/include/asm/config.h \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  ../include/linux/kconfig.h \
  ../include/config_fallbacks.h \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
  ../include/linux/linkage.h \
  ../arch/arm/include/asm/linkage.h \
  ../arch/arm/include/asm/gic.h \
  ../arch/arm/include/asm/armv7.h \
    $(wildcard include/config/armv7/nonsec.h) \
  ../arch/arm/include/asm/proc-armv/ptrace.h \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/spl/sys/thumb/build.h) \

spl/arch/arm/cpu/armv7/nonsec_virt.o: $(deps_spl/arch/arm/cpu/armv7/nonsec_virt.o)

$(deps_spl/arch/arm/cpu/armv7/nonsec_virt.o):
