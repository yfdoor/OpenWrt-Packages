#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}

git clone --depth 1 https://github.com/kenzok8/openwrt-packages                         kenzok
git clone --depth 1 https://github.com/kenzok8/small                                    dependency
#git clone --depth 1 https://github.com/fw876/helloworld                                 yfdoor/helloworld

svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/default-settings         yfdoor/default-settings 

rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
exit 0
