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
# Install pathogen
RUN mkdir -p /home/docker/.vim/autoload /home/docker/.vim/bundle 
RUN curl -LSso /home/docker/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# Install syntastic
RUN mkdir -p /home/docker/.vim/autoload /home/docker/.vim/bundle
RUN curl -LSso /home/docker/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# Install nerdtree
RUN cd /home/docker/.vim/bundle
RUN git clone https://github.com/scrooloose/nerdtree.git

CMD /bin/bash
