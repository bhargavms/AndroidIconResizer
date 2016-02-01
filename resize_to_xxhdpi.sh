#!/usr/bin/env bash
#Use this only in folders which dont have any sub folders.
widthInDp=$1;
heightInDp=$2;
dir=$3;
widthInPx=$(($widthInDp * 3));
heightInPx=$(($heightInDp * 3));
for f in `find . -name "*.png"`
do
    convert $f -resize ${widthInPx}x${heightInPx} $dir/drawable-xxhdpi/$f
    echo "created icon file {$dir}/drawable-xxhdpi/{$f}"
done