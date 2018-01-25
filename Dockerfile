FROM ubuntu:16.04

LABEL MAINTAINER https://github.com/codeghar/perforce-helix-cli

RUN    apt update \
    && apt install -y curl \
    && curl -fsSL https://package.perforce.com/perforce.pubkey | apt-key add - 

COPY perforce.list 	/etc/apt/sources.list.d/perforce.list

RUN    apt update \
    && apt install -y helix-cli
