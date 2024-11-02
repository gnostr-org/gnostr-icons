sips -z 16 16     gnostr.png --out app/16x16.png
sips -z 24 24     gnostr.png --out app/24x24.png
sips -z 32 32     gnostr.png --out app/32x32.png
sips -z 48 48     gnostr.png --out app/48x48.png
sips -z 64 64     gnostr.png --out app/64x64.png
sips -z 96 96     gnostr.png --out app/96x96.png
sips -z 128 128   gnostr.png --out app/128x128.png
sips -z 256 256   gnostr.png --out app/256x256.png
sips -z 512 512   gnostr.png --out app/512x512.png
#for i in *.png; do sips -s format tiff "${i}" --out "${i%png}tiff"; done
#for i in *.tiff;do sips -i "${i}" --out "${i%tiff}tiff"; done
