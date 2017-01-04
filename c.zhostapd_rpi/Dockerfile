FROM sdhibit/rpi-raspbian:jessie

MAINTAINER OpenThings "openthings@163.com"

RUN apt-get update --fix-missing && apt-get install -y \
    hostapd \
    dbus \
    net-tools \
    iptables \
    dnsmasq \
    vim \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

ADD hostapd.conf /etc/hostapd/hostapd.conf
ADD hostapd /etc/default/hostapd
ADD dnsmasq.conf /etc/dnsmasq.conf

Add entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
