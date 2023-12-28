FROM ubuntu:20.04

RUN apt update

run apt install -y sudo wget

run echo 'APT::Get::Assume-Yes "true";' > /etc/apt/apt.conf.d/90assume-yes

COPY BuildLinux.sh .
RUN DEBIAN_FRONTEND=noninteractive ./BuildLinux.sh -u
