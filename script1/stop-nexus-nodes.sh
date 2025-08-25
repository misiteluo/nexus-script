#!/bin/bash

# 查找运行 nexus-network 的进程并获取其 PID
pids=$(pgrep -f "nexus-network start")

# 检查是否有匹配的进程
if [ -z "$pids" ]; then
    echo "No nexus-network processes found."
    exit 0
fi

# 循环终止每个 nexus-network 进程
for pid in $pids; do
    echo "Terminating process with PID: $pid"
    # 终止进程
    kill -TERM $pid 2>/dev/null
    # 等待进程完全终止
    sleep 0.5
done

# 关闭所有运行了 nexus-network 的 Terminal 窗口
osascript <<EOF
tell application "Terminal"
    set windowList to every window
    repeat with w in windowList
        set windowCommands to history of w
        if windowCommands contains "nexus-network start" then
            close w
        end if
    end repeat
end tell
EOF

# 检查 Terminal 是否还有窗口，如果没有则退出 Terminal
osascript <<EOF
tell application "Terminal"
    if (count of windows) is 0 then
        quit
    end if
end tell
EOF

echo "All nexus-network processes and their Terminal windows closed."