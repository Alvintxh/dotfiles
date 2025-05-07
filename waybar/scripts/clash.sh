#!/bin/bash

# 获取服务状态
STATUS=$(systemctl is-active clash.service)

# 输出状态图标
if [[ $STATUS == "active" ]]; then
    	sudo systemctl stop clash.service
	notify-send "Clash 代理" "已关闭⛔" -t 1000
else
	sudo systemctl start clash.service
	notify-send "Clash 代理" "已启用✅" -t 1000
fi
