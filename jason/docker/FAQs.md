### Q: ERROR 

docker: Cannot connect to the Docker daemon at unix:///home/jason/.docker/desktop/docker.sock. Is the docker daemon running?

**A:** 

```bash
sudo rm -rf ~/.docker
docker run -it --rm archlinux bash -c "echo hello world"
```


### Q: ERROR 

docker: Error response from daemon: could not select device driver "" with capabilities: [[gpu]].

**A:** 

```bash
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update && sudo apt-get install -y nvidia-container-toolkit
sudo systemctl restart docker
```

### Q: ERROR 

docker: nvcc not found, skipping CUDA builds

**A:** 

To get access to the CUDA development tools, you should use the `devel` images instead.

```bash
# modify Dockerfile
FROM nvidia/cuda:11.0.3-base-ubuntu20.04
# by 
FROM nvidia/cuda:11.1.1-cudnn8-devel-ubuntu20.04

```
