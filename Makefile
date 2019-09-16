OPTIONS = -g -O3 -Wall
CC = gcc
WIN_GCC = i686-w64-mingw32-gcc

# -fsanitize=address,pointer-compare,pointer-subtract,leak,undefined
# -fsanitize-address-use-after-scope
# export ASAN_OPTIONS='detect_invalid_pointer_pairs=2'
# export LSAN_OPTIONS=''

all: gpx2kmz gpx2kmz.exe

gpx2kmz: gpx2kmz.c
	${CC} ${OPTIONS} gpx2kmz.c -o gpx2kmz -lm -lexif -lexpat

gpx2kmz.exe: gpx2kmz.c
	${WIN_GCC} ${OPTIONS} -DWIN gpx2kmz.c -o gpx2kmz.exe

clean:
	rm -f gpx2kmz gpx2kmz.exe
