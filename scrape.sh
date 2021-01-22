#!/usr/bin/env bash
set -e
set -x

docker build -t tor-scrapeall -f scrapeall/Dockerfile .
docker run -it --rm -v "$(pwd)"/aggregate/data:/data tor-scrapeall
