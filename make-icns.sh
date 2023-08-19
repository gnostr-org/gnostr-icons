#!/usr/bin/env bash
mkdir -p icon.iconset
BASE=1024
cp icons/${BASE}x${BASE}.png Icon${BASE}.png
function sips_side(){

if  hash sips 2>/dev/null; then
	sips --debug  -z ${SIDE}   ${SIDE}   Icon${BASE}.png --out icon.iconset/${SIDE}x${SIDE}.png
fi
if hash majick 2>/dev/null; then
	echo "$(whick majick)"
	#TODO resize using imagemajick
	##sips --debug  -z ${SIDE}   ${SIDE}   Icon${BASE}.png --out icon.iconset/${SIDE}x${SIDE}.png
fi

}

SIDE=$(expr $BASE / 1)   #1024
sips_side
SIDE=$(expr $BASE / 2)   #512
sips_side
SIDE=$(expr $BASE / 4)   #256
sips_side
SIDE=$(expr $BASE / 6)   #170
sips_side
SIDE=$(expr $BASE / 8)   #128
sips_side
SIDE=$(expr $BASE / 10)  #102
sips_side
SIDE=$(expr $BASE / 12)  #85
sips_side
SIDE=$(expr $BASE / 14)  #73
sips_side
SIDE=$(expr $BASE / 16)  #64
sips_side
SIDE=$(expr $BASE / 32)  #32
sips_side
SIDE=$(expr $BASE / 42)  #24
sips_side
SIDE=$(expr $BASE / 51)  #20
sips_side
SIDE=$(expr $BASE / 64)  #16
sips_side
SIDE=$(expr $BASE / 128) #8
sips_side
SIDE=$(expr $BASE / 256) #4
sips_side

cp Icon${BASE}.png icon.iconset/icon_$(expr $BASE / 2)x$(expr $BASE / 2)@2x.png

#Usage: iconutil --convert ( icns | iconset) [--output file] file [icon-name]
iconutil -c icns --output icon.icns icon.iconset

mkdir -p square-banner.iconset
sips -z 200 200   Icon1024.png --out square-banner.iconset/icon_200x200.png
sips -z 250 250   Icon1024.png --out square-banner.iconset/icon_250x250.png
sips -z 256 256   Icon1024.png --out square-banner.iconset/icon_256x256.png
iconutil -c icns --output square-banner.icns square-banner.iconset
rm -R icon.iconset
rm -R square-banner.iconset
rm Icon1024.png