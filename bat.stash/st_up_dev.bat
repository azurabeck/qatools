cd C:\Downloads
wget http://192.168.100.122:8080/job/stash-ci/lastSuccessfulBuild/artifact/*zip*/archive.zip
7z e archive.zip
ren *-debug.apk psafetotal.apk
adb install -r psafetotal.apk
del *.apk
del *.zip
del *.txt
exit