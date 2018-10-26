set /p video=O video esta na raiz do celular. Entre com nome:
adb shell screenrecord /sdcard/%video%.mp4
adb pull /sdcard/%video%.mp4
adb shell rm /sdcard/%video%.mp4
