cd C:\Downloads
DEL /Q *
set /p versao=Informe a versao do branch:
wget http://android-ci.psafe.com:8080/jenkins/view/stash/job/stash.android.release/lastSuccessfulBuild/artifact/*zip*/archive.zip
7z e artifacts.zip
ren *_googleplay.apk stash.apk
adb install -r stash.apk
del *.zip
del *.apk
del versionCode.txt
exit

