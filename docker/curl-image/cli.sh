docker build -t prasadhonrao/curl-image .

docker push prasadhonrao/curl-image

docker run -d --name curl-container prasadhonrao/curl-image

docker exec -it curl-container sh

curl -v microsoft.com

exit

docker stop curl-container

docker rm curl-container

