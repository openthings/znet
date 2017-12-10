echo "Copy Dockerfile_rpi to Dockerfile..."
cp -r Dockerfile_rpi Dockerfile 

echo "Start docker build..."
docker build -t openthings/zrock_rpi  .
echo "Build finished."
