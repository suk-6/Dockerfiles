FROM ubuntu:22.04

LABEL maintainer="https://suk.kr"

RUN apt update
RUN apt install -y vim sudo man-db gcc git curl wget zsh python3 python3-pip libffi-dev build-essential libssl-dev libc6-i386 libc6-dbg gcc-multilib make ruby-full netcat tmux
RUN yes | unminimize

COPY ./home/* /home/ubuntu/
RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/ubuntu/.oh-my-zsh/custom/themes/powerlevel10k
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)" -- \
    -t powerlevel10k/powerlevel10k

RUN useradd -ms /bin/zsh ubuntu
RUN echo 'ubuntu:password' | chpasswd
RUN usermod -a -G sudo ubuntu

USER ubuntu
WORKDIR /home/ubuntu
