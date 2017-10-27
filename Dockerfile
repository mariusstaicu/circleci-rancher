FROM circleci/openjdk:8-jdk
MAINTAINER marius.s.staicu@gmail.com <marius.s.staicu@gmail.com>

ENV RANCHER_CLI_VERSION=v0.6.3

RUN sudo wget https://github.com/rancher/cli/releases/download/${RANCHER_CLI_VERSION}/rancher-linux-amd64-${RANCHER_CLI_VERSION}.tar.gz
RUN sudo mkdir -p /usr/local/lib /usr/local/bin
RUN sudo tar -xzvf rancher-linux-amd64-${RANCHER_CLI_VERSION}.tar.gz -C /usr/local/lib
RUN sudo ln -s /usr/local/lib/rancher-v0.6.3/rancher /usr/local/bin/rancher
