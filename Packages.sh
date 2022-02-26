#!/bin/bash
rm -rf lean lienol kenzok dependency yfdoor

#svn co https://github.com/coolsnowwolf/luci/trunk/applications                          lean
#svn co https://github.com/Lienol/openwrt-package/trunk                                  lienol
#svn co https://github.com/fw876/helloworld/trunk                                        yfdoor/helloworld
#svn co https://github.com/rufengsuixing/luci-app-adguardhome/trunk                      yfdoor/luci-app-adguardhome

svn co https://github.com/kenzok8/openwrt-packages/trunk                                kenzok
svn co https://github.com/kenzok8/small/trunk                                           dependency
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/default-settings         yfdoor/default-settings 

rm -rf ./*/.git*
rm -rf ./*/*/.git*
rm -rf ./*/.svn*
rm -rf ./*/*/.svn*
exit 0
