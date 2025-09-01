#!/bin/bash


mkdir -p package/{usr/bin,etc/systemd/system/}
cp ds3stop package/usr/bin
chmod -w "package/usr/bin/ds3stop"
chmod +x "package/usr/bin/ds3stop"
cp ds3stop.service package/etc/systemd/system
chmod +x "package/etc/systemd/system/ds3stop.service"
cp -r DEBIAN package
chmod +x package/DEBIAN/{postinst,prerm}
dpkg-deb --root-owner-group --build "package"
mv package.deb ds3stop.deb
rm -rf package
