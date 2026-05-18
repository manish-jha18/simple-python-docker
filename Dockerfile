# Use a small official Python image
FROM python:3.11-slim

# Prevent Python from writing .pyc files and buffer stdout/stderr
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Install build deps, install requirements, then remove build deps to keep image small
COPY requirements.txt .
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends build-essential gcc && \
    pip install --no-cache-dir -r requirements.txt && \
    apt-get remove -y build-essential gcc && apt-get autoremove -y && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy app code
COPY . .

# Expose the port the app uses
EXPOSE 5000

# Default command to run the app
CMD ["python", "app.py"]
