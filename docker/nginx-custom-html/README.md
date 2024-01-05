# Dockerfile for Serving a Simple HTML Page with Nginx

This Dockerfile creates a Docker image based on the official Nginx image (specifically, `nginx:alpine`). It copies an `index.html` file into the Nginx HTML directory and exposes port 80 to serve the HTML page.

## Prerequisites

Before you begin, ensure you have [Docker](https://www.docker.com/) installed on your system.

## Building the Docker Image

You can build the Docker image using the following command:

```bash
docker build -t nginx-custom-html .
```

## Running the Docker Container

To run a Docker container using the image you've built, you can use the following command:

```bash
docker run -d --name nginx-custom-html -p 80:80 nginx-custom-html
```

This command will start a container named `nginx-custom-html` based on the `nginx-custom-html` image, which serves the `index.html` page on port 80.

## Accessing the HTML Page

Once the container is running, you can access the HTML page by opening a web browser and navigating to `http://localhost` or the IP address of your Docker host. You should see the contents of the `index.html` file.

## Stopping and Removing the Container

When you're done with the container, you can stop and remove it using the following commands:

```bash
docker stop nginx-custom-html
docker rm nginx-custom-html
```

## Cleaning Up

To remove the Docker image you built, you can use the following command:

```bash
docker rmi nginx-custom-html
```

## Customizing the HTML Page

You can customize the `index.html` file to display your own content. Simply replace the `index.html` file in the same directory as the Dockerfile with your own HTML content.
