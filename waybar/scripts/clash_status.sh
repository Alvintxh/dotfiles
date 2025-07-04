#!/bin/bash

# 获取服务状态
STATUS=$(systemctl is-active clash.service)

# 输出状态图标
if [[ $STATUS == "active" ]]; then
	notify-send "Clash 代理" "active✅" -t 1000
else
	notify-send "Clash 代理" "inactive⛔" -t 1000
fi
