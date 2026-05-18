# simple-python-docker

This repository contains a minimal Flask application (app.py) and Docker configuration to run it locally.

This is a simple Flask application running inside Docker.

## Build Docker Image

docker build -t simple-python-app .

Run the container:

docker run -d -p 5000:5000 --name python-app simple-python-app


Test:

  Open http://localhost:5000/ in your browser or run:

    curl http://localhost:5000/

Notes:
- The Flask app listens on 0.0.0.0:5000 so it will be reachable from the host when the container runs.

