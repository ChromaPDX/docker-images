# MongoRocks
# Version 3.2

FROM debian:jessie
MAINTAINER chroma <leif@chroma.io>

# Upgrade your gcc to version at least 4.7 to get C++11 support.
RUN apt-get update
RUN apt-get install -y build-essential git

# rocksDb
RUN apt-get install -y libbz2-dev libsnappy-dev zlib1g-dev libzlcore-dev && \
    git clone https://github.com/facebook/rocksdb.git && \
    cd rocksdb && \
    git checkout 4.1.fb && \
    make -j$(nproc) install-shared && \
    cd / && \
    rm -R rocksdb

# mongo
RUN apt-get install -y scons && \
    git clone https://github.com/mongodb-partners/mongo-rocks.git && \
    cd mongo-rocks && \
    git checkout v3.2 && \
    cd / && \
    git clone https://github.com/mongodb/mongo.git && \
    cd mongo && \
    git checkout tags/r3.2.0 && \
    mkdir -p src/mongo/db/modules/ && \
    ln -sf /mongo-rocks src/mongo/db/modules/rocks && \
    scons \
    CPPPATH=/usr/local/include \
    LIBPATH=/usr/local/lib \
    -j$(nproc) \
    --release \
    mongod && \
    scons install --prefix=/usr && \
    cd / && \
    rm -R mongo && \
    rm -R mongo-rocks
