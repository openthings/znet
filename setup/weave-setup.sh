wget git.io/weave -O weave
sudo chmod +x weave
sudo cp weave /usr/local/bin

weave setup
weave launch --ipalloc-range 12.32.0.0/12 --password supermap 47.88.34.24
