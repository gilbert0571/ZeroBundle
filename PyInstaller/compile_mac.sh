rm -rf build
rm -rf dist
env/bin/pyinstaller zeronet_mac.spec -y
cp -r core dist/ZeroNet.app/Contents/Resources/
mv dist/ZeroNet.app/Contents/MacOS/ZeroNet.pkg dist/ZeroNet.app/Contents/Resources/ZeroNet.pkg
ln -s ../Resources/ZeroNet.pkg dist/ZeroNet.app/Contents/MacOS/ZeroNet.pkg
rm dist/ZeroNet.app/Contents/MacOS/include
rm dist/ZeroNet.app/Contents/MacOS/lib
rm -rf dist/ZeroNet.app/Contents/Frameworks
rm -rf dist/ZeroNet.app/Contents/Resources/include
rm -rf dist/ZeroNet.app/Contents/Resources/lib
rm -rf dist/ZeroNet.app/Contents/Resources/lib/core/src/Test/testdata
rm dist/ZeroNet.app/Contents/Resources/core/src/lib/opensslVerify/libeay32.dll
rm dist/ZeroNet.app/Contents/Resources/core/src/lib/opensslVerify/ssleay32.dll
rm dist/ZeroNet.app/Contents/Resources/core/src/lib/opensslVerify/openssl.exe
echo "Signing..."
# codesign --verbose=3 --force --deep --sign "Developer ID Application: Tamas Kocsis (4977YF9Q3Z)" dist/ZeroNet.app/
