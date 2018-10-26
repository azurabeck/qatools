adb uninstall com.psafe.stash.debug
adb uninstall com.psafe.stash
adb shell rm -r /sdcard/stash
DEL /Q *
wget http://android-ci.psafe.com:8080/jenkins/view/stash/job/stash.android.master/lastSuccessfulBuild/artifact/*zip*/archive.zip
7z e archive.zip
ren *-debug.apk stash.apk
adb install stash.apk
del *.zip
del *.apk
del versionCode.txt
exit
