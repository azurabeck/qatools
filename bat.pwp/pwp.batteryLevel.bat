set /p x=Battery Level:
adb shell dumpsys battery set level %x%
exit