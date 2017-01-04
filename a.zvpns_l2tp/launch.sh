modprobe af_key

weave run \
    --name zvpnsl2tp \
    --restart: "always"
    --env-file ./vpn.env.default \
    -p 500:500/udp \
    -p 4500:4500/udp \
    -v /lib/modules:/lib/modules:ro \
    -d --privileged \
    openthings/zvpns_l2tp

