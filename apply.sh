#!/bin/sh

set -e

cd ${MEMSOURCE_LIB}/qt5

cp -rv ${MEMSOURCE_LIB}/qt5-patch-set/qtbase .
cp -rv ${MEMSOURCE_LIB}/qt5-patch-set/qttools .
cp -rv ${MEMSOURCE_LIB}/qt5-patch-set/qtquickcontrols .

apply_patch() {
  echo "\nApplying $1"
  patch -p1 -F0 --verbose < $1
}

cd qtbase
apply_patch 0100-default-debug-compilation-flags-for-msvc-Od-Ob0.patch
apply_patch 0101-support-CJK-overwrite-TP-10280.patch
apply_patch 0102-disable-generating-documentContentChanged-with-rehig.patch
apply_patch 0105-more-wordSeparators.patch
apply_patch 0106-fix-for-QTBUG-69288.patch

apply_patch 0109-missing-trailingSpaces-in-QTextLineItemIterator.patch
apply_patch 0110-fix-Ctrl-Tab-on-osx.patch
apply_patch 0112-process-carriage-return-similar-to-new-line.patch
apply_patch 0115-always-escape-whitespace-characters-to-keep-newlines.patch

apply_patch 0200-draw-text-misspelling-our-way.patch
apply_patch 0201-filter-more-date-for-completer-properly-handle-parti.patch
apply_patch 0202-QSyntaxHighlighter-merge-char-formats.patch
apply_patch 0203-word-like-lay-outing-and-proper-line-break.patch
apply_patch 0204-show-LTR-and-RTL-bidi-operators.patch
apply_patch 0206-preallocate-formatChanges-also-for-whole-block-lengt.patch
apply_patch 0207-always-show-tooltip-for-QTabBar-TP-21494.patch
apply_patch 0208-add-white-space-color.patch
apply_patch 0209_preferences.patch
apply_patch 0210_disable_autodetect_menurole.patch

apply_patch 0300-revert-QTBUG-110134.patch
cd ..

cd qttools
apply_patch 0001-disable-linguist-tool.patch
cd ..

cd qtquickcontrols
apply_patch 0002-qt-6.3.0.patch
apply_patch 0003-innovate-code.patch
apply_patch 0004-set-ListView-width-to-1-after-change-in-QTBUG-110625.patch
apply_patch 0005-dont-allow-less-then-0-max-min-value.patch
cd ..
