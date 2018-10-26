set /p video=SS name:
adb shell screenrecord --time-limit 60 /sdcard/%video%.mp4
adb pull /sdcard/%video%.mp4
adb pull /sdcard/%video%.mp4 files\Video\%video%.mp4
adb shell rm /sdcard/%video%.mp4 
del %video%.mp4
exit