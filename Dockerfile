# ARM build tools in Ubuntu
# 
# Andrew Hills (a.hills@sheffield.ac.uk)

FROM ubuntu:latest
MAINTAINER: Andrew Hills (a.hills@sheffield.ac.uk)

RUN sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y build-essential && \
    apt-get install -y software-properties-common && \
    apt-get install -y byobu curl git htop man unzip vim wget && \
    apt-get install -y gcc-6-arm-linux-gnueabihf openssh-client git-lfs make && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir -p ~/.ssh && \
    chmod 700 ~/.ssh

CMD ["/bin/bash"]
