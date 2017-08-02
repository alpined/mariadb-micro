#! /bin/sh

cd $(dirname $0)

IMG_NAME="$(basename $(pwd))"

docker build --no-cache -t alpined/$IMG_NAME .

docker image prune -f
