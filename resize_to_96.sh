#!/usr/bin/env bash
#Use this only in folders which dont have any sub folders.
for f in `find . -name "*.png"`
do
    convert $f -resize 96x96 ../app/src/main/res/drawable-xxxhdpi/$f
    echo "created icon file ../app/src/main/res/drawable-xxxhdpi/{$f}"
done