# Build the image
docker build -t prasadhonrao/nginx-custom-html .

# Check image status
docker image history prasadhonrao/nginx-custom-html

# Create a container
docker run --name nginx-custom-html --rm -p 80:80 prasadhonrao/nginx-custom-html

# Exec into the container and check th HTML file
docker exec -it nginx-custom-html sh

# Stop the container
docker stop nginx-custom-html

# Check the container status
docker ps

# Check all containers
docker ps -a
