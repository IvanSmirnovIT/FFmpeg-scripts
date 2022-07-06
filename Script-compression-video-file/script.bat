@echo off
mkdir out
for %%i in (*.mp4) do (
ffmpeg -i "%%i" -vcodec h264 -q:v 10 -r:v 24 "out/%%~ni.mp4"
)
