install:
	sudo cp *_thumbnailer /usr/local/bin
	sudo cp *.thumbnailer /usr/share/thumbnailers
	-rm -rf ~/.cache/thumbnails
	-nautilus -q
