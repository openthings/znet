#weave run --name zfront --restart=always -p 8388:8388 -it openthings/zfront

weave run --name zfront --restart=always -p 8388:8388 -it \
	-v $PWD/../.config/cow-front:/root/.cow \
	openthings/zfront