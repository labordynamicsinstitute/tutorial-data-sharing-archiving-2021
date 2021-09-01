#!/bin/bash
PWD=$(pwd)
repo=${PWD##*/}
space=larsvilhuber
# build the docker if necessary

docker build . -t $space/$repo

docker run -e PASSWORD=testing -v $PWD:/home/rstudio --rm -p 8787:8787 $space/$repo
