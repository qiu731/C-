@echo off
REM 设置端口和控制台地址
set PORT=8090
set DASHBOARD_SERVER=localhost:8090
set PROJECT_NAME=sentinel-dashboard

REM 获取当前脚本所在的目录
set CURRENT_DIR=%~dp0

REM 启动 Sentinel 控制台
start javaw -Dserver.port=%PORT% ^
     -Dcsp.sentinel.dashboard.server=%DASHBOARD_SERVER% ^
     -Dproject.name=%PROJECT_NAME% ^
     -jar "%CURRENT_DIR%sentinel-dashboard-1.8.6.jar"

echo Sentinel started.
pause