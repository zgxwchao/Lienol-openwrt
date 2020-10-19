#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
＃添加自定义插件链接（自己想要什么就github里面搜索然后添加）
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge.git package / diy / luci-theme-edge   ＃主题边缘
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git package / diy / luci-theme-infinityfreedom   ＃透明主题
git clone https://github.com/frainzy1477/luci-app-clash.git包/ diy / luci-app-clash   ＃ clash出国软件
git clone https://github.com/tty228/luci-app-serverchan.git package / diy / luci-app-serverchan   ＃微信推送
git clone https://github.com/jerrykuku/lua-maxminddb.git包/ lean / lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git包/ lean / luci-pp-vssr



