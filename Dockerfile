FROM ubuntu:22.04
LABEL maintainer="tony"

RUN apt update
RUN apt install -y vim curl net-tools telnetd dnsutils xdg-utils

# Install git
RUN apt install -y git