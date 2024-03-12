cmd_arch/arm/dts/stm32mp157c-dk2.dtb := mkdir -p arch/arm/dts/ ; (cat ../arch/arm/dts/stm32mp157c-dk2.dts > arch/arm/dts/.stm32mp157c-dk2.dtb.pre.tmp);  echo '$(pound)include "stm32mp157c-dk2-u-boot.dtsi"' >> arch/arm/dts/.stm32mp157c-dk2.dtb.pre.tmp; cc -E -Wp,-MD,arch/arm/dts/.stm32mp157c-dk2.dtb.d.pre.tmp -nostdinc -Iinclude  -I../include    -I../arch/arm/include -include ../include/linux/kconfig.h -I../arch/arm/dts/ -I../arch/arm/dts/include -I../include -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.stm32mp157c-dk2.dtb.dts.tmp arch/arm/dts/.stm32mp157c-dk2.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/stm32mp157c-dk2.dtb -b 0 -i ../arch/arm/dts/ -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-unique_unit_address -Wno-simple_bus_reg -Wno-pci_device_reg -Wno-pci_bridge -Wno-pci_device_bus_num  -@ -a 0x8 -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-unique_unit_address -Wno-simple_bus_reg -Wno-pci_device_reg -Wno-pci_bridge -Wno-pci_device_bus_num  -@ -d arch/arm/dts/.stm32mp157c-dk2.dtb.d.dtc.tmp arch/arm/dts/.stm32mp157c-dk2.dtb.dts.tmp || (echo "Check /home/andre/bsps/yocto-project/hexabitz/airbox/u-boot/stm32mp15_basic/arch/arm/dts/.stm32mp157c-dk2.dtb.pre.tmp for errors" && false) ; sed "s:arch/arm/dts/.stm32mp157c-dk2.dtb.pre.tmp:../arch/arm/dts/stm32mp157c-dk2.dts:" arch/arm/dts/.stm32mp157c-dk2.dtb.d.pre.tmp arch/arm/dts/.stm32mp157c-dk2.dtb.d.dtc.tmp > arch/arm/dts/.stm32mp157c-dk2.dtb.d

source_arch/arm/dts/stm32mp157c-dk2.dtb := ../arch/arm/dts/stm32mp157c-dk2.dts

deps_arch/arm/dts/stm32mp157c-dk2.dtb := \
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
  ../arch/arm/dts/stm32mp157.dtsi \
  ../arch/arm/dts/stm32mp153.dtsi \
  ../arch/arm/dts/stm32mp151.dtsi \
  ../include/dt-bindings/interrupt-controller/arm-gic.h \
  ../include/dt-bindings/interrupt-controller/irq.h \
  ../include/dt-bindings/clock/stm32mp1-clks.h \
  ../include/dt-bindings/reset/stm32mp1-resets.h \
  ../arch/arm/dts/stm32mp15xc.dtsi \
  ../arch/arm/dts/stm32mp15-pinctrl.dtsi \
  ../include/dt-bindings/pinctrl/stm32-pinfunc.h \
  ../arch/arm/dts/stm32mp15xxac-pinctrl.dtsi \
  ../arch/arm/dts/stm32mp15xx-dkx.dtsi \
  ../include/dt-bindings/gpio/gpio.h \
  ../include/dt-bindings/mfd/st,stpmic1.h \
  ../arch/arm/dts/stm32mp157c-dk2-u-boot.dtsi \
  ../arch/arm/dts/stm32mp157a-dk1-u-boot.dtsi \
    $(wildcard include/config/stm32mp15x/stm32image.h) \
    $(wildcard include/config/spl.h) \
  ../include/dt-bindings/clock/stm32mp1-clksrc.h \
  ../arch/arm/dts/stm32mp15-u-boot.dtsi \
  ../arch/arm/dts/stm32mp15-ddr3-1x4Gb-1066-binG.dtsi \
  ../arch/arm/dts/stm32mp15-ddr.dtsi \
  ../include/linux/stringify.h \

arch/arm/dts/stm32mp157c-dk2.dtb: $(deps_arch/arm/dts/stm32mp157c-dk2.dtb)

$(deps_arch/arm/dts/stm32mp157c-dk2.dtb):
