cd C:\Downloads
DEL /Q *
set /p versao=Informe a versao do branch:
wget http://android-ci.psafe.com:8080/jenkins/view/stash/job/stash.android.master/lastSuccessfulBuild/artifact/*zip*/archive.zip
7z e artifacts.zip
set /p tipo=Qual versao quer instalar: _googleplay ou -debug?
ren *%tipo%.apk stash.apk
adb install -r stash.apk
del *.zip
del *.apk
del versionCode.txt
exit

