#!/bin/bash

docker run -d -p6831:6831/udp -p16686:16686 jaegertracing/all-in-one:latest

# set the env for GO
export PATH=$PATH:/usr/local/go/bin
export GOPATH=~/myhotrod

mkdir ~/myhotrod
cd ~/myhotrod
mkdir src
mkdir bin
mkdir pkg

cd ~/myhotrod/src/github.com/jaegertracing

git clone https://github.com/jaegertracing/jaeger

cp frontend.go ~/myhotrod/src/github.com/jaegertracing/jaeger/examples/hotrod/cmd/frontend.go

cd ~/myhotrod/src/github.com/jaegertracing/jaeger

make install

cd examples/hotrod

go run ./main.go all

