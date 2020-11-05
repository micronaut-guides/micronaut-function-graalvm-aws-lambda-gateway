#!/bin/sh
docker build . -t prime-finder
mkdir -p build
docker run --rm --entrypoint cat prime-finder  /home/application/function.zip > build/function.zip

sam local start-api -t sam.yaml -p 3000

