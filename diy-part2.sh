#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
＃修改openwrt登陆地址，把下面的192.168.2.2修改成你想要的就可以了
SED -i ' S / 192.168.1.1 / 192.168.100.1 /克'包/基层-文件/文件/ bin中/ config_generate

＃修改主机名字，把OpenWrt-123修改你喜欢的就行（不能使用中文）
sed -i ' / uci提交系统/ i \ uci设置系统。@ system [0] .hostname = ' OpenWrt-x86 ' '包/默认设置/文件/ zzz-默认设置

＃内核显示增加自己的个性名称（281677160 build $（TZ = UTC-8 date“ +％Y.％m。％d”）@这些为后期增加）
sed -i “ s / OpenWrt / zgxwchao build $（ TZ = UTC-8 date ” +％Y.％m。％d “） @ OpenWrt / g ”包/默认设置/文件/ zzz-默认设置

＃修改argon为替代主题，可根据你喜欢的修改成其他的（不选择那些会自动改变为替代主题的主题才有效果）
SED -i ' S / luci的主题的自举/ luci的主题：氩/克'进料/ luci的/集合/ luci的/生成文件

＃修改内核版本
＃ SED -i的/ KERNEL_PATCHVER：= 4.14 / KERNEL_PATCHVER：= 4.19 / G'靶/ LINUX / 86 /生成文件

＃修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
SED -i ' S / “BaiduPCS网络”/ “百度网盘”/ G '包/贫/ luci的应用内-baidupcs幅/ luasrc /控制器/ baidupcs-web.lua
SED -i ' S / CBI（ “qbittorrent”），_（ “qBittorrent”）/ CBI（ “qbittorrent”），_（ “BT下载”）/克'包/贫/ luci的应用内-qbittorrent / luasrc /控制器/qbittorrent.lua
SED -i ' S / “的aMule设置”/ “电驴下载”/ G '包/贫/ luci的应用内-的amule / PO / ZH-CN / amule.po
SED -i ' S / “网络存储”/ “存储”/ G '包/贫/ luci的应用内-的amule / PO / ZH-CN / amule.po
SED -i ' S / “网络存储”/ “存储”/ G '包/贫/ luci的应用内-VSFTPD / PO / ZH-CN / vsftpd.po
SED -i ' S / “涡轮ACC网络加速”/ “网络加速”/ G '包/贫/ luci的应用内-flowoffload / PO / ZH-CN / flowoffload.po
SED -i ' S / “涡轮ACC网络加速”/ “网络加速”/ G '包/贫/ luci的应用内-SFE / PO / ZH-CN / sfe.po
＃ SED -i的/ “实时流量监测”/ “流量”/ G'包/贫/ luci的应用内-wrtbwmon / PO / ZH-CN / wrtbwmon.po
＃ SED -i的/ “KMS服务器”/ “KMS激活”/ G'包/贫/ luci的应用内-vlmcsd / PO / ZH-CN / vlmcsd.zh-cn.po
SED -i ' S / “USB打印服务器”/ “打印服务”/ G '包/贫/ luci的应用内-USB-打印机/ PO / ZH-CN / USB-printer.po
＃ SED -i的/ “网络存储”/ “存储”/ G'包/贫/ luci的应用内-USB-打印机/ PO / ZH-CN / USB-printer.po
SED -i ' S /的ttyd终端/命令窗/克'进料/ luci的/移植/ luci的应用内-的ttyd / PO / ZH-CN / terminal.po
SED -i ' S / “网络管理”/ “的Web管理”/ G '包/贫/ luci的应用内-webadmin的/ PO / ZH-CN / webadmin.po
＃ SED -i的/ “管理权”/ “改密码”/ G'的饲料/ luci的/模块/ luci的基/ PO / ZH-CN / base.po
＃ SED -i的/ “带宽监控”/ “监视”/ G'的饲料/ luci的/应用/ luci的应用内-nlbwmon / PO / ZH-CN / nlbwmon.po
