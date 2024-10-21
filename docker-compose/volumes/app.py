from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    with open("/data/message.txt", "a") as file:
        file.write("Hello, Docker Compose with Volumes!\n")
    return "Message written to file.\n"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
