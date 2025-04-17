FROM ubuntu:24.04

LABEL MAINTAINER https://github.com/petyuska/perforce-helix-cli

RUN    apt update \
    && apt install -y curl wget sudo gpg \
    && wget -qO - https://package.perforce.com/perforce.pubkey | gpg --dearmor | sudo tee /usr/share/keyrings/perforce.gpg

COPY perforce.list 	/etc/apt/sources.list.d/perforce.list

RUN    apt update \
    && apt install -y helix-cli
