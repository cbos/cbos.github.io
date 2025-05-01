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


# Create posts

```shell
just create-post "New Title"
```

# Alerts which can be used
See https://gohugo.io/render-hooks/blockquotes/#alerts

> [!TIP]
> Helpful advice for doing things better or more easily.

> [!NOTE]
> Useful information that users should know, even when skimming content.

> [!IMPORTANT]
> Key information users need to know to achieve their goal.

> [!WARNING]
> Urgent info that needs immediate user attention to avoid problems.

> [!CAUTION]
> Advises about risks or negative outcomes of certain actions.

> [!QUESTION]
> Advises about risks or negative outcomes of certain actions.