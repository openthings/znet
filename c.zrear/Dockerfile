FROM openthings/zrock_rpi

MAINTAINER openthings <openthings@163.com>

#COPY ./bin/cow /usr/local/bin/
COPY ./bin/cow /home/znet/cow

#RUN mkdir -p /home/znet &&\
#	cd /home/znet &&\
#	wget git.io/cow -O cow.sh &&\
#	chmod +x cow.sh &&\
#	./cow.sh

#传入配置文件
COPY cow /root/.cow

EXPOSE 9999

WORKDIR /home/znet
CMD ["/home/znet/cow"]
#CMD ["usr/local/bin/cow"]
