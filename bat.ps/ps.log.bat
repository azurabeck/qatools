set /p LogName=Enter log name: %=%
adb logcat -d com.psafe.msuite > files\Logs\%LogName%.txt 
