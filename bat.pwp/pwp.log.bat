set /p LogName=Enter log name: %=%
adb logcat -d com.psafe.powerpro > files\Logs\%LogName%.txt
exit