# pop-spinner-theme
Pop!_OS inspired spinner theme.

The spinner icon was taken from `/usr/share/icons/Pop/scalable/status/process-working-symbolic.svg` and the color changed to white.

The original icon can be found [here](https://github.com/pop-os/gtk-theme/blob/master/gnome-shell/src/process-working.svg).


# Generating the animation frames

I also added a script which uses Inkscape in order to generate the animation frames from the SVG directly.

```
./make-frames.sh <output_file_name>
```

The script will automatically look for `root.svg` and use that as the base.

I made it so the script will create a full rotation animation in 60 frames.
