set /p versao=Informe a versao do branch:
wget http://android-ci.psafe.com:8080/jenkins/view/stash/job/stash.android.branch.v%versao%/lastSuccessfulBuild/artifact/artifacts/assets.zip
exit