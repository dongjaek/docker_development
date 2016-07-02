FROM ubuntu:latest
MAINTAINER david (david.kim9325@gmail.com)

# Install essential packages
RUN apt-get update && apt-get install -y \
	sudo \
	build-essential \
	vim \
	git \
	python \
	gcc \
	make \
 	libtool \ 
	pkg-config \ 
	build-essential \ 
	autoconf \
	automake \
	curl
RUN apt-get autoremove

# Setup user
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
USER docker
ENV HOME /home/docker
WORKDIR /home/docker

# Setup vim environment
ADD .vimrc /home/docker/.vimrc
ADD installvimdeps.sh /home/docker/installvimdeps.sh
RUN /home/docker/installvimdeps.sh

CMD /bin/bash
