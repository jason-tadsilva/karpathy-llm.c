# create "pytorch-gpu" image from the Dockerfile  
sudo docker build -t pytorch-gpu . -f Dockerfile

# create and run a container from the above image  
sudo docker run --name pytorch-container --gpus all -it pytorch-gpu 

# exec the docker
docker exec -it container_id bash