# Python Flask Web App

This is a sample web app built using the Python Flask framework.

## Getting Started

### Prerequisites

Make sure you have Docker installed on your machine.

### Build Docker Image

```bash
# Navigate to the root directory of the app
cd /path/to/your/app

# Build the Docker image
docker build -t flask-web-app .
```

### Run Docker Container

```bash
# Run the Docker container, mapping host port 8080 to container port 80
docker run -d --rm -p 8080:80 flask-web-app
```

### Access the Web App

Open your web browser and go to [http://localhost:8080](http://localhost:8080) to access the Flask web app.

## Notes

- The app is configured to run on port 80 inside the container, and it's mapped to port 8080 on the host machine. You can customize the port mapping in the `docker run` command.
- This is a development setup. For production, consider using a production-ready WSGI server instead of Flask's built-in server.
