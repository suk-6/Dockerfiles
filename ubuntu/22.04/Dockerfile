FROM ubuntu:22.04

LABEL maintainer="https://suk.kr"

RUN apt update
RUN apt install -y vim sudo man-db gcc git curl wget zsh python3 python3-pip libffi-dev build-essential libssl-dev libc6-i386 libc6-dbg gcc-multilib make ruby-full netcat tmux
RUN yes | unminimize

RUN adduser --disabled-password --gecos "" ubuntu && echo 'ubuntu:password' | chpasswd && adduser ubuntu sudo echo 'ubuntu ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN usermod -a -G sudo ubuntu
RUN usermod -s /bin/zsh ubuntu

USER ubuntu
WORKDIR /home/ubuntu

COPY ./home/* /home/ubuntu/
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)" -- \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions | echo "password"