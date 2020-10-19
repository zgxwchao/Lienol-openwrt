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
git clone -b master https://github.com/vernesong/OpenClash.git package / diy / luci-app-openclash   ＃ openclash出国软件
git clone https://github.com/frainzy1477/luci-app-clash.git包/ diy / luci-app-clash   ＃ clash出国软件
git clone https://github.com/tty228/luci-app-serverchan.git package / diy / luci-app-serverchan   ＃微信推送
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package / diy / luci-app-smartdns   ＃ smartdns DNS加速
git clone https://github.com/garypang13/luci-app-eqos.git package / diy / luci-app-eqos   ＃内网IP限速工具
git clone https://github.com/jerrykuku/node-request.git package / diy / node-request   ＃京东签到依赖
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package / diy / luci-app-jd-dailybonus   ＃京东签到
git clone https://github.com/jerrykuku/lua-maxminddb.git包/ lean / lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git包/ lean / luci-pp-vssr

＃增加LEDE的ShadowSocksR Plus +出国软件（原始码自带passwall出国软件）
sed的-i ' $一个SRC-混帐的HelloWorld https://github.com/fw876/helloworld ' feeds.conf.default
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/shadowsocksr-libev package / diy / shadowsocksr-libev
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/pdnsd-alt包/ diy / pdnsd-alt
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks package / diy / microsocks
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/dns2socks package / diy / dns2socks
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/simple-obfs package / diy / simple-obfs
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/v2ray-plugin包/ diy / v2ray-plugin
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/v2ray包/ diy / v2ray
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/trojan包/ diy / trojan
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ipt2socks package / diy / ipt2socks
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2 package / diy / redsocks2

# rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package / diy / luci-theme-argon   ＃新的氩主题
＃全新的[argon-主题]此主题玩法很多，这里看说明【https://github.com/jerrykuku/luci-theme-argon/blob/18.06/README_ZH.md】
＃用WinSCP连接openwrt，在/ www / luci-static / argon里面创建背景文件夹（如果本身就有背景就不需要创建）来放置jpg png gif格式图片可以自定义登陆界面，gif图片为动态登陆界面

