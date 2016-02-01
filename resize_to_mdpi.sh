#!/usr/bin/env bash
#Use this only in folders which dont have any sub folders.
widthInDp=$1;
heightInDp=$2;
dir=$3;
widthInPx=$(bc<<<"$widthInDp * 1");
heightInPx=$(bc<<<"$heightInDp * 1");
for f in `find . -name "*.png"`
do
    convert $f -resize ${widthInPx}x${heightInPx} $dir/drawable-mdpi/$f
    echo "created icon file {$dir}/drawable-mdpi/{$f}"
done