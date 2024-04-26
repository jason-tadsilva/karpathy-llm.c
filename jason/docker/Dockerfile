FROM nvidia/cuda:11.1.1-cudnn8-devel-ubuntu20.04

# set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# install system dependencies
RUN apt-get update && \
    apt-get install -y \
        git \
        python3-pip \
        python3-dev \
        python3-opencv \
        libglib2.0-0
# install any python packages you need
COPY requirements.txt requirements.txt

RUN python3 -m pip install -r requirements.txt

# upgrade pip
RUN python3 -m pip install --upgrade pip

# install PyTorch and torchvision
RUN pip3 install torch torchvision torchaudio -f https://download.pytorch.org/whl/cu111/torch_stable.html

# create the working directory
WORKDIR /root
RUN mkdir codespace
WORKDIR /root/codespace

# download 
RUN git clone --depth=2 --recursive  https://github.com/jason-tadsilva/karpathy-llm.c.git

# rename code
RUN mv karpathy-llm.c llm

# set the entrypoint
ENTRYPOINT [ "python3" ]