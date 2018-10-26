cd C:\Downloads
DEL /Q *
set /p tipo=Informe a versao -debug ou _googleplay:
set /p versao=Informe a versao do branch:
wget http://android-ci.psafe.com:8080/jenkins/view/stash/job/stash.android.branch.v%versao%/lastSuccessfulBuild/artifact/*zip*/archive.zip
7z e archive.zip
ren *%tipo%.apk stash.apk
adb install -r stash.apk
del *.zip
del *.apk
del versionCode.txt
exit
