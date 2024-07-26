FROM ubuntu:latest

LABEL maintainer="postmodern.mod3@gmail.com"

RUN apt-get update && apt-get install -y openssh-server sudo

ENV SSH_USER=admin
ENV SSH_PASS=password1234

RUN useradd -rm -d /home/sshuser -s /bin/bash -g root -G sudo -u 1000 ${SSH_USER}
RUN echo "${SSH_USER}:${SSH_PASS}" | chpasswd

RUN mkdir /var/run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
