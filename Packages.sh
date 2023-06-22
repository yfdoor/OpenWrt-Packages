#!/bin/bash
rm -rf kenzok dependency yfdoor lean

git clone --depth 1 https://github.com/kenzok8/openwrt-packages                         kenzok
git clone --depth 1 https://github.com/kenzok8/small                                    dependency

svn co https://github.com/coolsnowwolf/lede/trunk/package/lean                          lean
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/default-settings         yfdoor/default-settings 

rm -rf ./*/.git & rm -rf ./*/*/.git & rm -rf ./*/*/*/.git
rm -rf ./*/.gitignore & rm -rf ./*/*/.gitignore & rm -rf ./*/*/*/.gitignore
rm -rf ./*/.svn & rm -rf ./*/*/.svn & rm -rf ./*/*/*/.svn
rm -rf ./lean/default-settings

exit 0
