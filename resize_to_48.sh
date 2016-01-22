#!/usr/bin/env bash
#Use this only in folders which dont have any sub folders.
for f in `find . -name "*.png"`
do
    convert $f -resize 48x48 ../app/src/main/res/drawable-xhdpi/$f
    echo "created icon file ../app/src/main/res/drawable-xhdpi/{$f}"
done