# Multi MiSTer
If you're using more than one MiSTer on the same network there are multiple files that need to be changed. This quick script and support files set a MiSTer as `MiSTer-P1` or `MiSTer-P2` - as in Player 1 or 2.

## Details
The scripts `linux_p1.sh` and `linux_p2.sh` do the work. 3 files are copied from the `/media/fat/linux` directory to the rootfs file system.
`u-boot.txt` - sets the MAC address
`hostname` - sets the hostname
`hosts` - sets DNS for localhost

## Other Considerations
To avoid collision with stock MiSTers, I change both the P1 and P2 devices MAC address. If you have statically assigned an IP via your router's DHCP server you'll need to update that.

ssh will complain the first time you connect about this being a new device.

Some utility scripts provided with the MiSTer use a `uname` check to ensure the hostname is `MiSTer`. That's terrible practice and widely understood to be a bad idea. I just edit these scripts and delete that line.

## Troubleshooting
These should just work. It's not complicated.

## License
Freely redistribute. Credit appreciated.
