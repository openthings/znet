#weave run --name zrear --restart=always -p 9999:9999 -it openthings/zrear

weave run --name zfront --restart=always -p 8388:8388 -it \
	-v $PWD/../.config/cow-rear:/root/.cow \
	openthings/zrear