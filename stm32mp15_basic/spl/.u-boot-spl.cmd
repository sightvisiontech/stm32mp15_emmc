cmd_spl/u-boot-spl := ( cd spl && arm-linux-gnueabi-ld.bfd -z noexecstack -T u-boot-spl.lds --gc-sections -Bstatic --gc-sections  --no-dynamic-linker --build-id=none -Ttext 0x2FFC2500 arch/arm/cpu/armv7/start.o --whole-archive arch/arm/mach-stm32mp/built-in.o arch/arm/cpu/armv7/built-in.o arch/arm/cpu/built-in.o arch/arm/lib/built-in.o board/st/stm32mp1/built-in.o board/st/common/built-in.o common/spl/built-in.o common/init/built-in.o boot/built-in.o common/built-in.o cmd/built-in.o env/built-in.o lib/built-in.o disk/built-in.o drivers/built-in.o dts/built-in.o fs/built-in.o  --no-whole-archive arch/arm/lib/eabi_compat.o arch/arm/lib/lib.a -Map u-boot-spl.map -o u-boot-spl )