eval "$(docker-machine env default)"
docker run -d --name openchain \
    -e MONGODB_PASS=mongotest \
    -v "$(pwd)":/openchain \
    chromapdx/openchain
