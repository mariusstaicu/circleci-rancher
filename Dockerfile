FROM circleci/openjdk:8-jdk
MAINTAINER marius.s.staicu@gmail.com <marius.s.staicu@gmail.com>

ENV RANCHER_CLI_VERSION=v0.6.9 \
    RANCHER_COMPOSE_VERSION=v0.12.5

USER root

RUN mkdir -p /usr/local/lib /usr/local/bin

RUN wget https://github.com/rancher/cli/releases/download/${RANCHER_CLI_VERSION}/rancher-linux-amd64-${RANCHER_CLI_VERSION}.tar.gz && \
    tar -xzvf rancher-linux-amd64-${RANCHER_CLI_VERSION}.tar.gz -C /usr/local/lib && \
    ln -s /usr/local/lib/rancher-${RANCHER_CLI_VERSION}/rancher /usr/local/bin/rancher

RUN wget https://github.com/rancher/rancher-compose/releases/download/${RANCHER_COMPOSE_VERSION}/rancher-compose-linux-amd64-${RANCHER_COMPOSE_VERSION}.tar.gz && \
    tar -xzvf rancher-compose-linux-amd64-${RANCHER_COMPOSE_VERSION}.tar.gz -C /usr/local/lib && \
    ln -s /usr/local/lib/rancher-compose-${RANCHER_COMPOSE_VERSION}/rancher-compose /usr/local/bin/rancher-compose
