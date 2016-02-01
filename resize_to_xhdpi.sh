#!/usr/bin/env bash
#Use this only in folders which dont have any sub folders.
widthInDp=$1;
heightInDp=$2;
dir=$3;
widthInPx=$(($widthInDp * 2));
heightInPx=$(($heightInDp * 2));
for f in `find . -name "*.png"`
do
    convert $f -resize ${widthInPx}x${heightInPx} $dir/drawable-xhdpi/$f
    echo "created icon file {$dir}/drawable-xhdpi/{$f}"
done
