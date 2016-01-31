#!/usr/bin/env bash
#Use this only in folders which dont have any sub folders.
width = $1;
height = $2;
dir = $3;
widthInPx = $widthInDp * 3;
heightInPx = $heightInDp * 3;
for f in `find . -name "*.png"`
do
    convert $f -resize $widthInPx$heightInPx $dir/drawable-xxhdpi/$f
    echo "created icon file {$dir}/drawable-xxhdpi/{$f}"
done