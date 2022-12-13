.SILENT: install

install:
	echo "Copying files with sudo:"
	sudo cp *_thumbnailer /usr/local/bin
	sudo cp *.thumbnailer /usr/share/thumbnailers
	echo "Cleaning cache..."
	-rm -rf ~/.cache/thumbnails
	echo "Killing Nautilus..."
	-nautilus -q
	echo "Done."
