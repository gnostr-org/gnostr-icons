#!/usr/bin/env bash
BASE=1024
function sips_side(){

if  hash sips 2>/dev/null; then
        sips --debug -z ${SIDE}   ${SIDE}   ${BASE}x${BASE}.png --out ${SIDE}x${SIDE}.png
fi
if hash majick 2>/dev/null; then
       echo "$(whick majick)"
       #TODO resize using imagemajick
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

#rect-banner
sips -z 106 320   1280x424.png --out 106x320.png
sips -z 212 640   1280x424.png --out 212x640.png