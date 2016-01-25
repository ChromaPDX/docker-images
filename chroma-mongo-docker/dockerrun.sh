eval "$(docker-machine env default)"
docker run -d --name mongo-rocks \
    -e MONGODB_PASS=mongotest \
    -v "$(pwd)":/data \
    chromapdx/mongo-rocks
