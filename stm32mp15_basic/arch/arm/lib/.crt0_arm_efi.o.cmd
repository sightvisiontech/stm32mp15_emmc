cmd_arch/arm/lib/crt0_arm_efi.o := arm-linux-gnueabi-gcc -Wp,-MD,arch/arm/lib/.crt0_arm_efi.o.d -nostdinc -isystem /usr/lib/gcc-cross/arm-linux-gnueabi/11/include -Iinclude  -I../include    -I../arch/arm/include -include ../include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -D__ASSEMBLY__ -fno-PIE -gdwarf-4 -DCONFIG_THUMB2_KERNEL -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -mgeneral-regs-only -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a  -I../arch/arm/mach-stm32mp/include   -c -o arch/arm/lib/crt0_arm_efi.o ../arch/arm/lib/crt0_arm_efi.S

source_arch/arm/lib/crt0_arm_efi.o := ../arch/arm/lib/crt0_arm_efi.S

deps_arch/arm/lib/crt0_arm_efi.o := \
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
  ../include/asm-generic/pe.h \

arch/arm/lib/crt0_arm_efi.o: $(deps_arch/arm/lib/crt0_arm_efi.o)

$(deps_arch/arm/lib/crt0_arm_efi.o):
