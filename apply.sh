#!/bin/sh

cd ${MEMSOURCE_LIB}/qt5

cp -rv ${MEMSOURCE_LIB}/qt5-patch-set/qtbase .
cp -rv ${MEMSOURCE_LIB}/qt5-patch-set/qtquickcontrols .
cp -rv ${MEMSOURCE_LIB}/qt5-patch-set/qtwebengine .

cd qtbase
patch -p1 < 0100-default-debug-compilation-flags-for-msvc-Od-Ob0.patch
patch -p1 < 0101-support-CJK-overwrite-TP-10280.patch
patch -p1 < 0102-disable-generating-documentContentChanged-with-rehig.patch
patch -p1 < 0105-more-wordSeparators.patch
patch -p1 < 0106-fix-for-QTBUG-69288.patch

patch -p1 < 0109-missing-trailingSpaces-in-QTextLineItemIterator.patch
patch -p1 < 0110-fix-Ctrl-Tab-on-osx.patch
patch -p1 < 0112-process-carriage-return-similar-to-new-line.patch
patch -p1 < 0114-revert-changes-from-QTBUG-83135-TP-46633.patch
patch -p1 < 0115-always-escape-whitespace-characters-to-keep-newlines.patch

patch -p1 < 0200-draw-text-misspelling-our-way.patch
patch -p1 < 0201-filter-more-date-for-completer-properly-handle-parti.patch
patch -p1 < 0202-QSyntaxHighlighter-merge-char-formats.patch
patch -p1 < 0203-word-like-lay-outing-and-proper-line-break.patch
patch -p1 < 0204-show-LTR-and-RTL-bidi-operators.patch
patch -p1 < 0206-preallocate-formatChanges-also-for-whole-block-lengt.patch
patch -p1 < 0207-always-show-tooltip-for-QTabBar-TP-21494.patch
patch -p1 < 0208-add-white-space-color.patch
patch -p1 < 0209_preferences.patch
patch -p1 < 0210_disable_autodetect_menurole.patch
cd ..

cd qtquickcontrols
patch -p1 < 0002-qt-6.3.0.patch
cd ..

cd qtwebengine
patch -p1 < 0001-Require-minimum-msvc-version-14-29.patch
patch -p1 < 0002-Fix-Windows-build-with-enable-plugins-false.patch
cd ..


