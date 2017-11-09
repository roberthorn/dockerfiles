# QGIS Desktop

Simple container for running QGIS desktop GUI over X11.

## Limitations

- uses `xhost +` which isn't secure since it allows remote hosts to display windows on your X display.
- currently scripts are for MacOS

## Prereqs

- [XQuartz](https://www.xquartz.org/) (for MacOS)

## Build

```
$ ./build.sh
$ ./start.sh
```

## Resources

[Docker for Mac and GUI applications](https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/)
