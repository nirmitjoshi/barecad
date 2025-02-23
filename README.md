# barecad

this is just a bash script and 2 packages.

## what it uses

- [build123d](https://github.com/gumyr/build123d): python cad lib
- [f3d](https://github.com/f3d-app/f3d): fast 3d viewer
- [prusa-slicer](https://github.com/prusa3d/PrusaSlicer): gcode generator

## install

1. install the packages

```sh
pip install build123d
```

```sh
yay -S f3d prusa-slicer
```
2. clone the repo

```sh
git clone https://github.com/nirmitjoshi/barecad.git
cd barecad
```

## usage

- start hot_reload.sh in the background
- edit model.py
- view live changes in f3d

once done, use prusa-slicer to generate gcode for 3d printing.
