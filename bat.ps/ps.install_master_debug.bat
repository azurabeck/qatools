adb uninstall com.psafe.msuite
adb shell rm -r /sdcard/psafe
cd C:\Downloads
DEL /Q *
wget http://android-ci.psafe.com:8080/jenkins/view/psafe/job/psafe.android.master/lastSuccessfulBuild/artifact/artifacts/*zip*/artifacts.zip
7z e artifacts.zip
ren *-debug.apk psafetotal.apk
adb install psafetotal.apk
del *.zip
del *.apk
del versionCode.txt
exit