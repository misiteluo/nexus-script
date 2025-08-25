@echo off

title 开启NEXUS节点

REM ===== 分隔栏 =====
start wt -w 0 ^
nt --title "9757246" wsl -d Ubuntu-22.04 -- bash -ic "nexus-network start --node-id 9757246" ^
; nt --title "13244605" wsl -d Ubuntu-22.04 -- bash -ic "nexus-network start --node-id 13244605" ^
; nt --title "13300741" wsl -d Ubuntu-22.04 -- bash -ic "nexus-network start --node-id 13300741" ^
; nt --title "13406171" wsl -d Ubuntu-22.04 -- bash -ic "nexus-network start --node-id 13406171" ^
; nt --title "13626706" wsl -d Ubuntu-22.04 -- bash -ic "nexus-network start --node-id 13626706" 
REM ===== 分隔栏 =====
wt -w new ^
; nt --title "13681828" wsl -d Ubuntu-22.04 -- bash -ic "nexus-network start --node-id 13681828" ^
; nt --title "13656211" wsl -d Ubuntu-22.04 -- bash -ic "nexus-network start --node-id 13656211" ^
; nt --title "13466704" wsl -d Ubuntu-22.04 -- bash -ic "nexus-network start --node-id 13466704" ^
; nt --title "13600031" wsl -d Ubuntu-22.04 -- bash -ic "nexus-network start --node-id 13600031" ^
; nt --title "13437815" wsl -d Ubuntu-22.04 -- bash -ic "nexus-network start --node-id 13437815" 

