FROM ubuntu:latest

ENV TELNET_USER=admin
ENV TELNET_PASS=password1234

RUN apt-get update && apt-get install -y telnetd systemctl

RUN useradd -rm -d /home/sshuser -s /bin/bash -g root -G sudo -u 1000 ${TELNET_USER}
RUN echo "${TELNET_USER}:${TELNET_PASS}" | chpasswd

EXPOSE 23
CMD ["systemctl", "start", "inetd"]
