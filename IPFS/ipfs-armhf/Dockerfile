#dockerfile for rpi-ipfs
#builds a Raspberry Pi compatible Docker image that when run creates an IPFS Node

FROM hypriot/rpi-alpine-scratch
MAINTAINER @analogvoid

ENV IPFS_PATH /data/ipfs
#ENV VERSION master
#ENV VERSION v0.4.13

RUN apk update \
 && apk upgrade \
 && apk add --update bash curl wget ca-certificates zip

ADD https://raw.githubusercontent.com/analogvoid/rpi-ipfs/master/container_shacheck /usr/local/bin/shacheck
ADD https://raw.githubusercontent.com/analogvoid/rpi-ipfs/master/container_daemon /usr/local/bin/start_ipfs

COPY ./go-ipfs /usr/local/bin/go-ipfs

RUN mkdir -p /data/ipfs \ 
  && ls -l /usr/local/bin/go-ipfs \
  && cp /usr/local/bin/go-ipfs/ipfs /usr/local/bin \
  && chmod 755 /usr/local/bin/start_ipfs
  
RUN apk del wget \
  && apk del zip \
  && apk del curl \
  && rm -rf /var/cache/apk/*

VOLUME /data/ipfs

#RUN /root/go-ipfs/ipfs init
#RUN ~/go-ipfs/install.sh

EXPOSE 4001 5001 8080
WORKDIR /usr/local/bin/go-ipfs
#CMD ["ipfs daemon"]
#ENTRYPOINT ["/bin/sh", "./root/go-ipfs/ipfs daemon"]
ENTRYPOINT ["/bin/bash", "/usr/local/bin/start_ipfs"]
