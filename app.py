from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello from Dockerized Flask app!"

if __name__ == '__main__':
    # Listen on all interfaces so the container is reachable from the host
    app.run(host='0.0.0.0', port=5000)
