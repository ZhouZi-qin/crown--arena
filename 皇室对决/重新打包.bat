@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo 正在重新打包 皇室对决 桌面版...
echo 产物将生成在 dist 目录
echo.
set ELECTRON_RUN_AS_NODE=
set NODE_OPTIONS=
set ELECTRON_MIRROR=https://npmmirror.com/mirrors/electron/
set ELECTRON_BUILDER_BINARIES_MIRROR=https://npmmirror.com/mirrors/electron-builder-binaries/
call npm run dist
echo.
echo 打包结束。请查看 dist 目录。
pause
