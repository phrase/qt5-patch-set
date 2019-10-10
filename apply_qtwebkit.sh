#!/bin/sh

cd "$MEMSOURCE_LIB/qt5"

cd qtwebkit
patch -p1 < 0001-build-without-qt-pdf-support.patch
patch -p1 < 0010-disable-useless-features.patch
patch -p1 < fixes-for-gcc-v7.3.0.patch
patch -p1 < 0001-fix-build-without-webkit2.patch
cd ..
