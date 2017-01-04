docker run -d --name zhostapd \
	--restart=always \
	--privileged \
	--net=host \ 
	openthings/zhostapd_a64

#
#docker run -e SSID="Hello" -e PASSWORD="world" \
#	--privileged --net=host -d simonchuang12/rpi-hostapd
