# Dockerfile for Running Debian with Curl

This Dockerfile creates a Docker image based on the latest Debian Linux distribution and installs the `curl` package. It then runs a simple command to keep the container running indefinitely.

## Prerequisites

Before you begin, ensure you have [Docker](https://www.docker.com/) installed on your system.

## Building the Docker Image

You can build the Docker image using the following command:

```bash
docker build -t debian-infinite-sleep .
```

## Running the Docker Container

To run a Docker container using the image you've built, you can use the following command:

```bash
docker run -d --name debian-sleep debian-infinite-sleep
```

This command will start a container named `debian-sleep` based on the `debian-infinite-sleep` image, and it will run the `sleep infinity` command, effectively keeping the container running indefinitely.

## Using Curl in the Container

You can use `curl` within the running container to make HTTP requests. Here's an example of how to use `curl` to fetch a webpage from `microsoft.com`:

```bash
docker exec debian-sleep curl microsoft.com -v
```

## Accessing the Container's Shell

If you need to access the shell inside the running container for troubleshooting or interaction, you can use the following command:

```bash
docker exec -it debian-sleep bash
```

## Stopping and Removing the Container

When you're done with the container, you can stop and remove it using the following commands:

```bash
docker stop debian-sleep
docker rm debian-sleep
```

## Cleaning Up

To remove the Docker image you built, you can use the following command:

```bash
docker rmi debian-infinite-sleep
```
