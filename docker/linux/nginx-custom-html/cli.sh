# Build the image
docker build -t nginx-custom-html .

# Check image status
docker image history nginx-custom-html

# Create a container
docker run --name nginx-custom-html --rm nginx-custom-html

# Exec into the container and check th HTML file
docker exec -it nginx-custom-html sh

# Stop the container
docker stop nginx-custom-html

# Check the container status
docker ps

# Check all containers
docker ps -a

# Publish image to the registry
docker tag nginx-custom-html:latest <your-registry>/nginx-custom-html:latest
docker push <your-registry>/nginx-custom-html:latest

# Publish image to prasadhonrao namespace in Docker Hub
docker tag nginx-custom-html:latest prasadhonrao/nginx-custom-html:latest
docker push prasadhonrao/nginx-custom-html:latest
