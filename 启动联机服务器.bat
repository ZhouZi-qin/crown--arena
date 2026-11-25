@echo off
chcp 65001 >nul
echo Starting Royal Clash LAN server...
cd /d "%~dp0"
node net-server.js
pause
