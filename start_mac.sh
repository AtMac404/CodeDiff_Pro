#!/bin/bash

echo "[1/3] 正在检查 Python3 环境..."
if ! command -v python3 &> /dev/null
then
    echo "错误: 未检测到 Python3，请先安装 Python。"
    exit
fi

if [ ! -d "venv" ]; then
    echo "[2/3] 正在创建虚拟环境 (venv)..."
    python3 -m venv venv
fi

echo "[3/3] 正在安装/检查依赖..."
source venv/bin/activate
pip3 install -r requirements.txt

echo ""
echo "========================================"
echo "  CodeDiff Pro 已启动！"
echo "  请在浏览器访问: http://127.0.0.1:5000"
echo "========================================"
echo ""
python3 app.py