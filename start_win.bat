@echo off
title CodeDiff Pro - 启动器
echo [1/3] 正在检查 Python 环境...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo 错误: 未检测到 Python，请先前往 python.org 安装。
    pause
    exit /b
)

if not exist venv (
    echo [2/3] 正在创建虚拟环境 (venv)...
    python -m venv venv
)

echo [3/3] 正在安装/检查依赖...
call venv\Scripts\activate
pip install -r requirements.txt

echo.
echo ========================================
echo   CodeDiff Pro 已启动！
echo   请在浏览器访问: http://127.0.0.1:5000
echo ========================================
echo.
python app.py
pause