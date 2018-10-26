cd C:\Downloads
DEL /Q *
set /p versao=Informe a versao do branch:
wget http://android-ci.psafe.com:8080/jenkins/view/powerpro/job/powerpro.android.release_v3.2/lastSuccessfulBuild/artifact/*zip*/archive.zip
7z e archive.zip
set /p tipo= Digite -debug, para debug ou só enter para gp?
ren *%tipo%.apk pwp.apk
adb install -r pwp.apk
del *.zip
del *.apk
del versionCode.txt
exit

