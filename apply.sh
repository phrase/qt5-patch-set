#!/bin/sh

cd ${MEMSOURCE_LIB}/qt5

cp -rv ${MEMSOURCE_LIB}/qt5-patch-set/qtbase .
cp -rv ${MEMSOURCE_LIB}/qt5-patch-set/qtwebengine .

cd qtbase
patch -p1 < 0100-default-debug-compilation-flags-for-msvc-Od-Ob0.patch
patch -p1 < 0101-10289-support-CJK-overwrite.patch
patch -p1 < 0102-disable-generating-documentContentChanged-with-rehig.patch
patch -p1 < 0104-fix-xToCursor-to-better-handle-RTL.patch
patch -p1 < 0105-more-wordSeparators.patch
patch -p1 < 0106-fix-for-QTBUG-69288.patch
patch -p1 < 0107-fix-for-QTBUG-85902.patch

patch -p1 < 0109-missing-trailingSpaces-in-QTextLineItemIterator.patch
patch -p1 < 0110-fix-Ctrl-Tab-on-osx.patch

patch -p1 < 0200-draw-text-misspelling-our-way.patch
patch -p1 < 0201-filter-more-date-for-completer-properly-handle-parti.patch
patch -p1 < 0202-QSyntaxHighlighter-merge-char-formats.patch
patch -p1 < 0203-word-like-lay-outing-and-proper-line-break.patch
patch -p1 < 0204-show-LTR-and-RTL-bidi-operators.patch
patch -p1 < 0206-preallocate-formatChanges-also-for-whole-block-lengt.patch
patch -p1 < 0207-always-show-tooltip-for-QTabBar-TP-21494.patch
patch -p1 < 0208-add-white-space-color.patch
cd ..

cd qtwebengine
patch -p1 < 0001-enable-ninjaflags-as-env-variable.patch
patch -p1 < 0002-disable-useless-check.patch
cd ..
