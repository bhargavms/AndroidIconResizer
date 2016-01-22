#!/usr/bin/env bash
#Use this only in folders which dont have any sub folders.
for f in `find . -name "*.png"`
do
    convert $f -resize 72x72 ../app/src/main/res/drawable-xxhdpi/$f
    echo "created icon file ../app/src/main/res/drawable-xxhdpi/{$f}"
done