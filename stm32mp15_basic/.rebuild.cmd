cmd_rebuild := unset CROSS_COMPILE; unset CFLAGS; CC="cc" LDSHARED="cc -shared " LDFLAGS="" VERSION="2024.01" CPPFLAGS=" -I/home/andre/bsps/yocto-project/hexabitz/airbox/u-boot/scripts/dtc/libfdt" OBJDIR=scripts/dtc/pylibfdt SOURCES="/home/andre/bsps/yocto-project/hexabitz/airbox/u-boot/scripts/dtc/libfdt/fdt.c /home/andre/bsps/yocto-project/hexabitz/airbox/u-boot/scripts/dtc/libfdt/fdt_ro.c /home/andre/bsps/yocto-project/hexabitz/airbox/u-boot/scripts/dtc/libfdt/fdt_wip.c /home/andre/bsps/yocto-project/hexabitz/airbox/u-boot/scripts/dtc/libfdt/fdt_sw.c /home/andre/bsps/yocto-project/hexabitz/airbox/u-boot/scripts/dtc/libfdt/fdt_rw.c /home/andre/bsps/yocto-project/hexabitz/airbox/u-boot/scripts/dtc/libfdt/fdt_strerror.c /home/andre/bsps/yocto-project/hexabitz/airbox/u-boot/scripts/dtc/libfdt/fdt_empty_tree.c /home/andre/bsps/yocto-project/hexabitz/airbox/u-boot/scripts/dtc/libfdt/fdt_addresses.c /home/andre/bsps/yocto-project/hexabitz/airbox/u-boot/scripts/dtc/libfdt/fdt_overlay.c scripts/dtc/pylibfdt/libfdt.i" SWIG_OPTS="-I/home/andre/bsps/yocto-project/hexabitz/airbox/u-boot/scripts/dtc/libfdt -I/home/andre/bsps/yocto-project/hexabitz/airbox/u-boot/scripts/dtc/libfdt/.." python3 ../scripts/dtc/pylibfdt/setup.py --quiet build_ext --inplace
