FROM zrock

MAINTAINER openthings <openthings@163.com>

COPY ./bin /usr/local/bin

RUN mkdir -p /home/znet &&\
	cd /home/znet &&\
	wget git.io/cow -O cow.sh &&\
	chmod +x cow.sh &&\
	./cow.sh

#传入配置文件
COPY .cow /root/.cow

EXPOSE 9999

WORKDIR /home/znet
CMD ["/home/znet/cow"]

