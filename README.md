# gnome-thumbnailers

This is a small set of custom thumbnailer scripts (mostly for 3D printing formats) that I crafted based on various samples floating about on the Internet, and which work in GNOME 42+.

In short, these will render pretty little file previews in your file manager (not just Nautilus, but I tested with it).

## Supported Formats

* `.3mf` (Cura, PrusaSlicer, SuperSlicer, etc.)
* `.scad` (OpenSCAD, will blindly render the default object)
* `.stl` (Actually uses OpenSCAD to render as well)

## Installation

* put `.thumbnailer` files in `/usr/share/thumbnailers`
* put the other files in `/usr/local/bin`, marked as executable

## Dependencies

* `3mf.thumbnailer` requires nothing but Python 3 installed, because it cheats and steals the thumbnail the slicer inserts into the file.
* `stlscad.thumbnailer` requires `Xvfb`, `openscad` and `imagemagick` to be installed to render and convert files.

## FAQ

> But isn't `openscad` prevented from accessing X because of `bwrap` thumbnail generation sandboxing in modern GNOME?

Yes. But it works _perfectly_ with `xvfb-run` and software rendering, so I'd rather take the performance hit rather than spend hours trying to persuade `bwrap` to do weird stuff like `--bind /tmp/.X11-unix/X0 /tmp/.X11-unix/X0 --setenv DISPLAY :0`. 

Sometimes brute force is the simplest, more maintainable (and more secure) approach.


