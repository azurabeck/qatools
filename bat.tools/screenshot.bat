set /p Screenshot=SS name: 
adb shell screencap -p  /sdcard/%Screenshot%.png
adb pull /sdcard/%Screenshot%.png
adb pull /sdcard/%Screenshot%.png files\Screenshot\%Screenshot%.png
del %screenshot%.png
exit