FROM ubuntu:22.04

LABEL maintainer="https://suk.kr"

RUN apt update
RUN apt install -y vim sudo man-db gcc git curl wget zsh python3 python3-pip libffi-dev build-essential libssl-dev libc6-i386 libc6-dbg gcc-multilib make ruby-full netcat tmux
RUN yes | unminimize

RUN useradd -ms /bin/zsh ubuntu
RUN echo 'ubuntu:password' | chpasswd
RUN usermod -a -G sudo ubuntu
RUN echo 'ubuntu ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN touch /home/ubuntu/.sudo_as_admin_successful

USER ubuntu
WORKDIR /home/ubuntu

RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)" -- \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions \
    -p https://github.com/zsh-users/zsh-syntax-highlighting

RUN curl -sLf https://spacevim.org/install.sh | bash

RUN echo "alias python=python3" >> ~/.zshrc


# docker build -t woosuknam/sandbox:22.04-zsh --platform=linux/amd64 --push .