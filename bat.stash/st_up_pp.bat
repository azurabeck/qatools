cd C:\Downloads
wget http://192.168.100.122:8080/job/stash-master/lastSuccessfulBuild/artifact/*zip*/archive.zip
7z e artifacts.zip
ren *-debug.apk stash.apk
adb install -r stash.apk
del *.zip
del *.apk
del versionCode.txt
exit