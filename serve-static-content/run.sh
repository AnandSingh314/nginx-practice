# !/bin/sh
set -ex

docker build -t nginx-demo -f Dockerfile .

docker run -p 80:80 --rm nginx-demo             