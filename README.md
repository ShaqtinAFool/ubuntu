# Tip command
```bash
# Build image and run container
docker build -t localhost/ubuntu:22.04 .
docker run -it --name ubuntu localhost/ubuntu:22.04
docker exec -it ubuntu bash

# Push image to ACR
docker tag localhost/ubuntu auoazdba.azurecr.io/ubuntu:22.04
docker push auoazdba.azurecr.io/ubuntu:22.04

# Diag
docker logs ubuntu

# Delete container
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)

# Delete images
docker rmi -f $(docker images -a -q)
docker rmi -f $(docker images -f "dangling=true" -q)
```