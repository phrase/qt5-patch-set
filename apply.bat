cd %MEMSOURCE_LIB%\qt5

xcopy %MEMSOURCE_LIB%\qt5-patch-set\qtbase qtbase /S/Y
xcopy %MEMSOURCE_LIB%\qt5-patch-set\qtquickcontrols qtquickcontrols /S/Y


cd qtbase
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0100-default-debug-compilation-flags-for-msvc-Od-Ob0.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0101-support-CJK-overwrite-TP-10280.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0102-disable-generating-documentContentChanged-with-rehig.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0105-more-wordSeparators.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0106-fix-for-QTBUG-69288.patch

"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0109-missing-trailingSpaces-in-QTextLineItemIterator.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0110-fix-Ctrl-Tab-on-osx.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0111-ignore-font-8514oem-QTBUG-69634.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0112-process-carriage-return-similar-to-new-line.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0115-always-escape-whitespace-characters-to-keep-newlines.patch

"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0200-draw-text-misspelling-our-way.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0201-filter-more-date-for-completer-properly-handle-parti.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0202-QSyntaxHighlighter-merge-char-formats.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0203-word-like-lay-outing-and-proper-line-break.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0204-show-LTR-and-RTL-bidi-operators.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0206-preallocate-formatChanges-also-for-whole-block-lengt.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0207-always-show-tooltip-for-QTabBar-TP-21494.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0208-add-white-space-color.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0209_preferences.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0210_disable_autodetect_menurole.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0211-revert-changes-QTBUG-114225-TE-61.patch
cd ..

cd qtquickcontrols
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0001-9859-TabViewStyle-changes.patch
"C:\Program Files\Git\usr\bin\patch.exe" -p1 < 0002-qt-6.3.0.patch
cd ..
