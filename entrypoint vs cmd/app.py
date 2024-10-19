from flask import Flask
import sys
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, Docker!'

if __name__ == "__main__":
    if '--debug' in sys.argv:
        app.run(host="0.0.0.0", port=5000, debug=True)
    else:
        app.run(host="0.0.0.0", port=5000)

