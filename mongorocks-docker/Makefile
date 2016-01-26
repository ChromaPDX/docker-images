build:
	docker build -t chromapdx/mongo-rocks-builder .
	docker run -d --name mongo-rocks-builder \
	    -v "$(shell pwd)/dist":/out \
	    chromapdx/mongo-rocks-builder

dist:
	cd dist && docker build -t chromapdx/mongo-rocks-dist .

run:
	cd example && docker build -t chromapdx/mongo-rocks .
	docker run -d --name mongo-rocks \
	  -e MONGODB_PASS=mongotest \
	  -v "$(shell pwd)":/data \
	  chromapdx/mongo-rocks

all: build dist

install:
	docker push chromapdx/mongo-rocks-dist
	
.PHONY: dist all test clean
