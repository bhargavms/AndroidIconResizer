#!/usr/bin/env bash
#Use this only in folders which dont have any sub folders.
width = $1;
height = $2;
dir = $3;
widthInPx = $widthInDp * 1;
heightInPx = $heightInDp * 1;
for f in `find . -name "*.png"`
do
    convert $f -resize $widthInPx$heightInPx $dir/drawable-mdpi/$f
    echo "created icon file {$dir}/drawable-mdpi/{$f}"
done