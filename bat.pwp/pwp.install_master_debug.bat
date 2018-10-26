adb uninstall com.psafe.powerpro
adb uninstall com.psafe.powerpro.debug
adb shell rm -r /sdcard/psafe
DEL /Q *
wget http://android-ci.psafe.com:8080/jenkins/view/powerpro/job/powerpro.android.master/lastSuccessfulBuild/artifact/*zip*/archive.zip
7z e archive.zip
ren *-debug.apk pwp.apk
adb install pwp.apk
del *.zip
del *.apk
del versionCode.txt
exit