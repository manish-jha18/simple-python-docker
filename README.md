# simple-python-docker

This repository contains a minimal Flask application (app.py) and Docker configuration to run it locally.

Build the Docker image:

  docker build -t simple-python-docker .

Run the container:

  docker run --rm -p 5000:5000 simple-python-docker

Using docker-compose:

  docker-compose up --build

Test:

  Open http://localhost:5000/ in your browser or run:

    curl http://localhost:5000/

Notes:
- The Flask app listens on 0.0.0.0:5000 so it will be reachable from the host when the container runs.
- If you want to run with Gunicorn for production, I can update the Dockerfile and requirements accordingly.
