cmd_tools/fit_info := cc   -o tools/fit_info tools/aisimage.o tools/atmelimage.o tools/fit_common.o tools/fit_image.o tools/image-host.o tools/generated/boot/image-fit.o tools/image-sig-host.o tools/generated/boot/image-fit-sig.o tools/generated/boot/image-cipher.o tools/generated/boot/fdt_region.o tools/generated/boot/bootm.o tools/generated/lib/crc32.o tools/default_image.o tools/generated/lib/fdtdec_common.o tools/generated/lib/fdtdec.o tools/generated/boot/image.o tools/generated/boot/image-host.o tools/imagetool.o tools/imximage.o tools/imx8image.o tools/imx8mimage.o tools/kwbimage.o tools/generated/lib/md5.o tools/lpc32xximage.o tools/mxsimage.o tools/omapimage.o tools/os_support.o tools/pblimage.o tools/pbl_crc32.o tools/renesas_spkgimage.o tools/sfspl.o tools/vybridimage.o tools/stm32image.o tools/generated/lib/rc4.o tools/rkcommon.o tools/rkimage.o tools/rksd.o tools/rkspi.o tools/socfpgaimage.o tools/sunxi_egon.o tools/generated/lib/crc16-ccitt.o tools/generated/lib/hash-checksum.o tools/generated/lib/sha1.o tools/generated/lib/sha256.o tools/generated/lib/sha512.o tools/generated/common/hash.o tools/ublimage.o tools/zynqimage.o tools/zynqmpimage.o tools/zynqmpbif.o tools/generated/lib/fdt-libcrypto.o tools/sunxi_toc0.o tools/libfdt/fdt.o tools/libfdt/fdt_ro.o tools/libfdt/fdt_wip.o tools/libfdt/fdt_sw.o tools/libfdt/fdt_rw.o tools/libfdt/fdt_strerror.o tools/libfdt/fdt_empty_tree.o tools/libfdt/fdt_addresses.o tools/libfdt/fdt_overlay.o tools/gpimage.o tools/gpimage-common.o tools/mtk_image.o tools/mtk_nand_headers.o tools/generated/lib/ecdsa/ecdsa-libcrypto.o tools/generated/lib/rsa/rsa-sign.o tools/generated/lib/rsa/rsa-verify.o tools/generated/lib/rsa/rsa-mod-exp.o tools/generated/lib/aes/aes-encrypt.o tools/generated/lib/aes/aes-decrypt.o tools/fit_info.o   -lssl -lcrypto
