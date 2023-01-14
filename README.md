# pop-spinner-theme
Pop!_OS inspired spinner theme for plymouth.

The spinner icon was taken from `/usr/share/icons/Pop/scalable/status/process-working-symbolic.svg` and the color changed to white.

The original icon can be found [here](https://github.com/pop-os/gtk-theme/blob/master/gnome-shell/src/process-working.svg).

# Installation

Run the following to install the theme:

```
git clone https://github.com/TermoZour/pop-spinner-theme.git
sudo cp -r ./pop-spinner-theme/pop-spinner /usr/share/plymouth/themes
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/pop-spinner/pop-spinner.plymouth 100
sudo update-alternatives --set default.plymouth /usr/share/plymouth/themes/pop-spinner/pop-spinner.plymouth
sudo update-initramfs -u -k all
```

# Generating the animation frames

I also added a script which uses Inkscape in order to generate the animation frames from the SVG directly.

```
./make-frames.sh <output_file_name>
```

The script will automatically look for `root.svg` and use that as the base.

I made it so the script will create a full rotation animation in 60 frames.
