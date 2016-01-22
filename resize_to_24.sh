#!/usr/bin/env bash
#Use this only in folders which dont have any sub folders.
for f in `find . -name "*.png"`
do
    convert $f -resize 24x24 ../app/src/main/res/drawable-mdpi/$f
    echo "created icon file ../app/src/main/res/drawable-mdpi/{$f}"
done