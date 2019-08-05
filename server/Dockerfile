FROM ubuntu:18.04

RUN apt-get update && apt-get -y install openssh-server wget &&\
  mkdir /run/sshd
RUN useradd -ms /bin/bash borg

RUN wget -O /usr/sbin/borg https://github.com/borgbackup/borg/releases/download/1.1.10/borg-linux64 &&\
  chmod +x /usr/sbin/borg

CMD ["/usr/sbin/sshd", "-D", "-o", "PermitRootLogin=no", "-o", "PasswordAuthentication=no", "-e"]
