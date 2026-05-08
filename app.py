from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

if __name__ == '__main__':
    print("🚀 AI 代码审计工作站已启动！")
    print("👉 请在浏览器打开: http://127.0.0.1:5000")
    # debug=True 可以在你修改 Python 代码时自动重启
    app.run(host='127.0.0.1', port=5000, debug=True)