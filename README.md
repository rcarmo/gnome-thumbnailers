# gnome-thumbnailers

This is a small set of custom thumbnailer scripts (mostly for 3D printing formats) that I crafted based on various samples floating about on the Internet, and which work in GNOME 42+.

## Formats

* `.3mf` (Cura, SuperSlicer, etc.)
* `.scad` (OpenSCAD, will blindly render the default object)
* `.stl` (Actually uses OpenSCAD to render as well)

## Installation

* put `.thumbnailer` files in `/usr/share/thumbnailers`
* put the other files in `/usr/local/bin`, marked as executable

## Dependencies

* `3mf.thumbnailer` requires nothing but Python 3 installed
* `stlscad.thumbnailer` requires `Xvfb`, `openscad` and `imagemagick` to be installed

## FAQ

* But isn't `openscad` prevented from accessing X because of `bwrap` sandboxing in modern GNOME?

Yes. But it works _perfectly_ with `xvfb-run` and software rendering, so I'd rather take the performance hit rather than spent hours trying to persuade `bwrap` to do weird stuff like `--bind /tmp/.X11-unix/X0 /tmp/.X11-unix/X0 --setenv DISPLAY :0`. Sometimes brute force is the simplest, more maintainable (and secure) approach.


