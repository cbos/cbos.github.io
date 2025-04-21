# cbos.github.io
Github page for my account hosted at https://ceesbos.nl

# Local check out

```shell
git clone --recurse-submodules --depth 1 git@github.com:cbos/cbos.github.io.git
```


# Image resize with ImageMagick

Documentation about convert: https://imagemagick.org/script/convert.php

```shell

# https://imagemagick.org/script/convert.php
#Resize
magick convert image.png -resize 1200 image_resized.png
magick convert image.png -resize 50% image_resized.png

# Rotate
magick convert unconference2.jpg -distort SRT -90  unconf_rotate.jpg
```