cmd_spl/arch/arm/cpu/armv7/lowlevel_init.o := arm-linux-gnueabi-gcc -Wp,-MD,spl/arch/arm/cpu/armv7/.lowlevel_init.o.d -nostdinc -isystem /usr/lib/gcc-cross/arm-linux-gnueabi/11/include -Ispl/include -Iinclude  -I../include    -I../arch/arm/include -include ../include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -DCONFIG_SPL_BUILD -D__ASSEMBLY__ -fno-PIE -gdwarf-4 -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -mgeneral-regs-only -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a  -I../arch/arm/mach-stm32mp/include   -c -o spl/arch/arm/cpu/armv7/lowlevel_init.o ../arch/arm/cpu/armv7/lowlevel_init.S

source_spl/arch/arm/cpu/armv7/lowlevel_init.o := ../arch/arm/cpu/armv7/lowlevel_init.S

deps_spl/arch/arm/cpu/armv7/lowlevel_init.o := \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/stack.h) \
    $(wildcard include/config/spl/dm.h) \
  ../include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
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
  ../include/asm-offsets.h \
  spl/include/generated/generic-asm-offsets.h \
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
  ../include/system-constants.h \
    $(wildcard include/config/has/custom/sys/init/sp/addr.h) \
    $(wildcard include/config/custom/sys/init/sp/addr.h) \
    $(wildcard include/config/mips.h) \
    $(wildcard include/config/spl/has/custom/malloc/start.h) \
    $(wildcard include/config/spl/custom/sys/malloc/addr.h) \
    $(wildcard include/config/spl/bss/start/addr.h) \
    $(wildcard include/config/spl/bss/max/size.h) \
    $(wildcard include/config/spl/sys/malloc.h) \
    $(wildcard include/config/spl/sys/malloc/size.h) \
    $(wildcard include/config/spl/os/boot.h) \
    $(wildcard include/config/spl/payload/args/addr.h) \

spl/arch/arm/cpu/armv7/lowlevel_init.o: $(deps_spl/arch/arm/cpu/armv7/lowlevel_init.o)

$(deps_spl/arch/arm/cpu/armv7/lowlevel_init.o):
