FROM openthings/zrock_rpi
MAINTAINER openthings <openthings@163.com>

COPY . /home/znet/ipfs

RUN apt-get update && apt-get upgrade && apt-get install wget
RUN /home/znet/ipfs/install

EXPOSE 4001 5001 8080

WORKDIR ~
CMD [""]
#CMD ["usr/local/bin/cow"]
