cmd_u-boot.img := ./tools/mkimage -A arm -T firmware -C none -O u-boot -a 0xC0100000 -e 0xC0100000 -n "U-Boot 2024.01-dirty for stm32mp1 board" -d u-boot.bin u-boot.img >/dev/null 
