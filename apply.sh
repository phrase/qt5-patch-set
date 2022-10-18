#!/bin/sh

cd ${MEMSOURCE_LIB}/qt5

cp -rv ${MEMSOURCE_LIB}/qt5-patch-set/qtbase .
cp -rv ${MEMSOURCE_LIB}/qt5-patch-set/qtdeclarative .
cp -rv ${MEMSOURCE_LIB}/qt5-patch-set/qtwebengine .

cd qtbase
patch -p1 < 0100-default-debug-compilation-flags-for-msvc-Od-Ob0.patch
patch -p1 < 0101-10289-support-CJK-overwrite.patch
patch -p1 < 0102-disable-generating-documentContentChanged-with-rehig.patch
patch -p1 < 0104-fix-xToCursor-to-better-handle-RTL.patch
patch -p1 < 0105-more-wordSeparators.patch
patch -p1 < 0106-fix-for-QTBUG-69288.patch

patch -p1 < 0109-missing-trailingSpaces-in-QTextLineItemIterator.patch
patch -p1 < 0110-fix-Ctrl-Tab-on-osx.patch
patch -p1 < 0112-process-carriage-return-similar-to-new-line.patch
patch -p1 < 0113-fix-long-press-to-show-popover-on-osx-QTBUG-71394.patch
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

patch -p1 --forward < 1000-cast_types_for_egl_x11_test.diff
cd ..

cd qtdeclarative
patch -p1 < 1000_gcc_11.patch
patch -p1 < 1001_disable_qmltest.patch
cd ..

cd qtwebengine
patch -p1 < 0001-enable-ninjaflags-as-env-variable.patch
cd ..
