# save this as app.py
from flask import Flask, request
from markupsafe import escape
import os

version = os.environ['VERSION']
app = Flask(__name__)

@app.route('/')
def hello():
    name = request.args.get("name", "World")
    return f'<h1>Hello {escape(name)}!</h1>\nVersion: {version}'

if __name__ == '__main__':
    app.debug = True
    app.run(host="0.0.0.0")