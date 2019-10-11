cd %MEMSOURCE_LIB%\qt5

xcopy %MEMSOURCE_LIB%\qt5-patch-set\qtwebkit . /S

cd qtwebkit
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0001-build-without-qt-pdf-support.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0010-disable-useless-features.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < fixes-for-gcc-v7.3.0.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0001-fix-build-without-webkit2.patch
cd ..
