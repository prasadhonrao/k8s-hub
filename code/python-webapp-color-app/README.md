# webapp-color
Python flask based web application to demonstrate building a Docker image and passing runtime arguments to the container.

### Setup Docker Image
docker build -t webapp-color .

### Run instruction
docker run -d -p 8090:8080 webapp-color

docker run -d -p 8090:8080 webapp-color --color=red

### Docker Hub Repository
https://hub.docker.com/repository/docker/prasadhonrao/webapp-color