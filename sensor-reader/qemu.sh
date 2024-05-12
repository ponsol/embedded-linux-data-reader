 #-display sdl,gl=on,show-cursor=on \
 #-serial stdio \
  qemu-system-aarch64 -M virt -m 2048 -cpu cortex-a53 -smp 1 \
 -device virtio-gpu-pci \
 -netdev user,id=eth0 \
 -device virtio-net-device,netdev=eth0 \
 -kernel Image -append "fbcon=nologo fbcon=nodefer rootwait root=/dev/vda console=ttyAMA0" \
 -drive file=rootfs.ext2,if=none,format=raw,id=hd0 -device virtio-blk-device,drive=hd0 
	
