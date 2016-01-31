#!/usr/bin/env bash
#Use this only in folders which dont have any sub folders.
width = $1;
height = $2;
dir = $3;
widthInPx = $widthInDp * 2;
heightInPx = $heightInDp * 2;
for f in `find . -name "*.png"`
do
    convert $f -resize $widthInPx$heightInPx $dir/drawable-xhdpi/$f
    echo "created icon file {$dir}}/drawable-xhdpi/{$f}"
done