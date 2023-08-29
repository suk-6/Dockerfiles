FROM ubuntu:22.04

LABEL maintainer="https://suk.kr"

RUN apt-get update
RUN apt-get install -y vim sudo man-db gcc git curl wget zsh python3 python3-pip libffi-dev build-essential libssl-dev libc6-i386 libc6-dbg gcc-multilib make ruby-full netcat
RUN yes | unminimiz

RUN useradd -ms /bin/zsh ubuntu
RUN echo 'ubuntu:password' | chpasswd
RUN usermod -a -G sudo ubuntu

USER ubuntu
WORKDIR /home/ubuntu