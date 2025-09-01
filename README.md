## for distros that dont work with debian packages
put the files in the same folder that the debian package does and run the commands in postinst

you will need systemd installed

## building the debian package
run the mkdpkg.sh script `bash mkdpkg.sh`

## usage
a systemd service is set up by default to turn off the controller when your system shuts down

the service is called "ds3.service"

to turn the controller off on demand run `sudo ds3stop`
