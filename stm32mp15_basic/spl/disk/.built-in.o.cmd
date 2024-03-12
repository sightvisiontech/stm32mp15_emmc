cmd_spl/disk/built-in.o :=  rm -f spl/disk/built-in.o; arm-linux-gnueabi-ar cDPrsT spl/disk/built-in.o spl/disk/part.o spl/disk/disk-uclass.o spl/disk/part_efi.o
