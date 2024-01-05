# Node.js Environment Variable Viewer

This Node.js application creates a simple web server that returns all the environment variables defined in the container. It's a useful tool for inspecting environment variable values.

## Prerequisites

Before you begin, ensure you have [Docker](https://www.docker.com/) installed on your system.

## Building the Docker Image

You can build the Docker image using the following command:

```bash
docker build -t node-env-viewer .
```

## Running the Docker Container

To run a Docker container using the image you've built, you can use the following command:

```bash
docker run -d --name node-env-viewer -p 3000:3000 node-env-viewer
```

This command will start a container named `node-env-viewer` based on the `node-env-viewer` image, which runs the Node.js application and listens on port 3000.

## Accessing the Environment Variables

Once the container is running, you can access the environment variables by opening a web browser and navigating to `http://localhost:3000` or the IP address of your Docker host. The page will display the names and values of all the environment variables in the container.

## Stopping and Removing the Container

When you're done with the container, you can stop and remove it using the following commands:

```bash
docker stop node-env-viewer
docker rm node-env-viewer
```

## Cleaning Up

To remove the Docker image you built, you can use the following command:

```bash
docker rmi node-env-viewer
```

## Customizing the Application

You can customize the behavior of the application by modifying the `server.js` file in the same directory as the Dockerfile. For example, you can change the response format or add additional functionality.
