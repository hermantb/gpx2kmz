gpx to kmz
==========

Convert gpx to kmz file. Also jpg files (.jpg) and movies (.mp4, .mov, .mts) will be included if present. The movies will be converted to animated gifs. The resulting kmz file can be used in google-earth.

## Usage

<pre>
on linux: (linux has long command lines so you can specify all files. Directories work also): <br>
./gpxexif --offset=7200 --output=test --height=450 --use-video test/gps/*gpx test/jpg/*.jpg test/video/*.mp4

on windows: (Windows has small command line so probably specify directories. You can also use files): <br>
.\gpxexif --offset=7200 --output=test --height=450 --use-video --use-cache test/gps test/jpg test/video <br>
On windows you probably want to use a cache. Reading jpeg/movie headers is slow because we have to execute jhead/exiftool on every file. On linux this is very fast because we use libexif.so.

If you just want to convert gpx files to kmz file you can do: <br>
./gpxexif --show-points=5 --output=test test/gps/*gpx <br>
--show-points=5 will show label every 5 gpx points.

Usage: ./gpx2kmz [options] <gpx files> <jpg files> <movie files>

Options:
  --offset=x       gpx offset in seconds
  --output=x       output directory name (default 'output')
  --show-points=x  put gpx points in kmz file
  --width=x        resized image width (default 0)
  --height=x       resized image height (default 450)
  --video-width=x  resized video width (default 320)
  --video-height=x resized video height (default 0)
  --kml-width=x    resized kml video width (default 640)
  --kml-height=x   resized kml video height (default 0)
  --framerate      framerate animated gif in Hz. (default 3)
  --use-video      use video files (animated gif)
  --use-jhead      use jhead instead of exiftool
  --use-exiftool   use exiftool instead of jhead
  --use-cache      use cache
  --recursive      read dirs recursive
  --fix-mp4=x      fix mp4 time problem in seconds

</pre>

## Linux dependencies

The following libs are needed:

 * libexif.so
 * libexpat.so.1

The following tools are needed:

 * jhead
 * exiftool
 * ffmpeg
 * 7z
 * i686-w64-mingw32-gcc (compiling windows exe on linux)

The above libs/tools can probably be downloaded from your distribution.

## Windows dependencies

The following tools are needed:

 * https://www.softpedia.com/get/Multimedia/Graphic/Digital-Photo-Tools/ExifTool.shtml
   (exiftool-11.60.zip)

 * https://www.imagemagick.org/script/download.php#windows
   (ImageMagick-7.0.8-58-portable-Q16-x64.zip)

 * https://www.7-zip.org/
   (7z1900-x64.exe)

 * https://www.filehorse.com/download-ffmpeg-64/
   (ffmpeg-4.2-win64-static.zip)

The gpx2kmz.exe file is included in the repository.

## License
  
Licensed under either of
      
 * Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
 * MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)
    
at your option.
    
### Contribution
      
Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in gxp2kmz by you, as defined in the Apache-2.0 license, shall be
dual licensed as above, without any additional terms or conditions.
