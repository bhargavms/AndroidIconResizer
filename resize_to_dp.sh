#!/usr/bin/env bash
#Use this only in folders which dont have any sub folders.
die () {
    echo >&2 "$@"
    exit 1
}

if [ $# -ne 3 ]; then
	die "3 arguments required, $# provided,\n usage: resize_and_put_in_drawable {width in dp} {height in dp} {destination folder, which is where the drawable folders will be present}"
fi

echo $1 | grep -E -q '^[0-9]+$' || die "Numeric argument required, $1 provided"
echo $2 | grep -E -q '^[0-9]+$' || die "Numeric argument required at position 2, $2 provided"

width = $1;
height = $2;

if [ $width -eq 0]; then
	die "width is 0"
fi

if [ $height -eq 0]; then
	die "height is 0"
fi

destDir = $3;

if [ ! -d "$destDir" ]; then
	die "destination directory does not exist"
fi

bash resize_to_xxxhdpi.sh $width $height $destDir;
bash resize_to_xxhdpi.sh $width $height $destDir;
bash resize_to_xhdpi.sh $width $height $destDir;
bash resize_to_hdpi.sh $width $height $destDir;
bash resize_to_mdpi.sh $width $height $destDir;
bash resize_to_ldpi.sh $width $height $destDir;