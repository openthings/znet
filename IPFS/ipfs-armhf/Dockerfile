#dockerfile for rpi-ipfs
#builds a Raspberry Pi compatible Docker image that when run creates an IPFS Node

FROM hypriot/rpi-alpine-scratch
MAINTAINER @analogvoid
ENV IPFS_PATH /data/ipfs
#ENV VERSION master
ENV VERSION v0.4.13

EXPOSE 4001 5001 8080
VOLUME /data/ipfs
ADD https://raw.githubusercontent.com/analogvoid/rpi-ipfs/master/container_shacheck /usr/local/bin/shacheck
ADD https://raw.githubusercontent.com/analogvoid/rpi-ipfs/master/container_daemon /usr/local/bin/start_ipfs
RUN apk update \
 && apk upgrade \
 && apk add --update bash curl wget ca-certificates zip \
 && mkdir -p /data/ipfs \ 
#https://dist.ipfs.io/go-ipfs/v0.4.13/go-ipfs_v0.4.13_linux-arm.tar.gz 
#&& wget https://gobuilder.me/get/github.com/ipfs/go-ipfs/cmd/ipfs/ipfs_${VERSION}_linux-arm.zip \
 && https://dist.ipfs.io/go-ipfs/${VERSION}/go-ipfs_${VERSION}_linux-arm.tar.gz \
 && /bin/bash /usr/local/bin/shacheck ${VERSION} go-ipfs_${VERSION}_linux-arm.tar.gz \
 #&& unzip ipfs_${VERSION}_linux-arm.zip \
 && tar -vxf go-ipfs_${VERSION}_linux-arm.tar.gz \
 && rm go-ipfs_${VERSION}_linux-arm.tar.gz \
 && mv ipfs/ipfs /usr/local/bin/ipfs \
 && chmod 755 /usr/local/bin/start_ipfs \
 && apk del wget \
 && apk del zip \
 && apk del curl \
 && rm -rf /var/cache/apk/*
ENTRYPOINT ["/bin/bash", "/usr/local/bin/start_ipfs"]
