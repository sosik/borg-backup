FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install ssh wget 

RUN wget -o /usr/sbin/borg https://github.com/borgbackup/borg/releases/download/1.1.10/borg-linux64 &&\
  chmod +x /usr/sbin/borg

ENTRYPOINT ["borg"]
