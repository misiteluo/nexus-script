#!/bin/bash

# 定义节点ID数组
node_ids=(6846096 14960797 14963517 15180487 15210326
)

# 循环为每个节点ID打开新终端窗口并执行命令
for id in "${node_ids[@]}"; do
    osascript -e "tell application \"Terminal\" to do script \"nexus-network start --node-id $id\""
    sleep 0.5  # 短暂延迟以确保窗口创建
done