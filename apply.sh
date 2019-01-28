#!/bin/sh

cd "$MEMSOURCE_LIB/qt5"

cp -a --force -v $MEMSOURCE_LIB/qt5-patch-set/* .

cd qtbase
patch -p1 < 0090-disable-printer-in-cocoa.patch
patch -p1 < 0091-disable-printsupport-qtbase.patch
patch -p1 < 0092-disable-print-support.patch

patch -p1 < 0100-default-debug-compilation-flags-for-msvc-Od-Ob0.patch
patch -p1 < 0101-10289-support-CJK-overwrite.patch
patch -p1 < 0102-disable-generating-documentContentChanged-with-rehig.patch
patch -p1 < 0103-enable-construct-QSyntaxHighlighter-without-parent.patch
patch -p1 < 0104-fix-xToCursor-to-better-handle-RTL.patch
patch -p1 < 0105-more-wordSeparators.patch
patch -p1 < 0106-fix-for-QTBUG-69288.patch

patch -p1 < 0109-missing-trailingSpaces-in-QTextLineItemIterator.patch

patch -p1 < 0200-draw-text-misspelling-our-way.patch
patch -p1 < 0201-filter-more-date-for-completer-properly-handle-parti.patch
patch -p1 < 0202-QSyntaxHighlighter-merge-char-formats.patch
patch -p1 < 0203-word-like-lay-outing-and-proper-line-break.patch
patch -p1 < 0204-show-LTR-and-RTL-bidi-operators.patch
patch -p1 < 0205-move-QTextCursor-to-Start-when-there-isn-t-any-previ.patch
patch -p1 < 0206-preallocate-formatChanges-also-for-whole-block-lengt.patch
patch -p1 < 0207-always-show-tooltip-for-QTabBar-TP-21494.patch
cd ..

cd qtwebkit
patch -p1 < 0001-build-without-qt-pdf-support.patch
patch -p1 < 0002-support-qt-5.12-libjpeg.patch
patch -p1 < 0003-compile-with-qt5.12-libjpeg.patch
patch -p1 < 0010-disable-useless-features.patch
cd ..
