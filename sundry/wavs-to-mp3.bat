@echo off
chcp 65001 >nul & :: set UTF-8
setlocal enabledelayedexpansion
set ffmpeg="D:\Global_Portable\ffmpeg.exe"
:: 0-9, default 4, 0 is the highest
set quality=4
for %%f in (*.wav) do (
  set input_file="%%f"
  set output_file="%%~nf.mp3"
  !ffmpeg! -i !input_file! -codec:a libmp3lame -qscale:a %quality% !output_file!
  if errorlevel 1 (
    echo Failed to convert !input_file!
  ) else (
    del /q !input_file!
  )
)