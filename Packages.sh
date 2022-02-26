#!/bin/bash
rm -rf lean lienol yfdoor

svn co https://github.com/coolsnowwolf/luci/trunk/applications                          lean
svn co https://github.com/Lienol/openwrt-package/trunk                                  lienol
svn co https://github.com/fw876/helloworld/trunk                                        yfdoor
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean                          yfdoor
svn co https://github.com/rufengsuixing/luci-app-adguardhome/trunk                      yfdoor/luci-app-adguardhome

rm -rf ./lean/default-settings
rm -rf ./*/.git*
rm -rf ./*/*/.git*
rm -rf ./*/.svn*
rm -rf ./*/*/.svn*
exit 0
