#!/bin/bash
eval "$(docker-machine env default)"
docker build -t chromapdx/openchain .
