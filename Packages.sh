#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}

#svn co https://github.com/coolsnowwolf/luci/trunk/applications                          lean
#svn co https://github.com/Lienol/openwrt-package/trunk                                  lienol
#svn co https://github.com/fw876/helloworld/trunk                                        yfdoor/helloworld
#svn co https://github.com/rufengsuixing/luci-app-adguardhome/trunk                      yfdoor/luci-app-adguardhome

git clone --depth 1 https://github.com/kenzok8/openwrt-packages                         kenzok
git clone --depth 1 https://github.com/kenzok8/small                                    dependency
git clone --depth 1 https://github.com/fw876/helloworld/trunk                           yfdoor/helloworld

svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/default-settings         yfdoor/default-settings 


rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
exit 0
