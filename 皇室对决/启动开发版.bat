@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo 正在启动 皇室对决 桌面版（开发模式）...
echo 修改 game.js / style.css / index.html 后，在窗口内按 Ctrl+R 刷新即可生效
echo.
set ELECTRON_RUN_AS_NODE=
set NODE_OPTIONS=
"%~dp0node_modules\electron\dist\electron.exe" .
if errorlevel 1 (
  echo.
  echo 启动失败。请确认已执行 npm install 安装依赖。
  pause
)
