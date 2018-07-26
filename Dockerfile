# ARM build tools in Ubuntu
# 
# Andrew Hills (a.hills@sheffield.ac.uk)

FROM ubuntu:latest

RUN ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime
RUN sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y build-essential && \
    apt-get install -y software-properties-common && \
    apt-get install -y byobu curl git htop man unzip vim wget && \
    apt-get install -y gcc-6-arm-linux-gnueabihf openssh-client git-lfs make && \
    apt-get install -y doxygen doxygen-latex graphviz gsfonts libgd-tools latexmk psutils && \
    apt-get install -y python-breathe python-sphinx && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir -p ~/.ssh && \
    chmod 700 ~/.ssh
RUN echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config

CMD ["/bin/bash"]
