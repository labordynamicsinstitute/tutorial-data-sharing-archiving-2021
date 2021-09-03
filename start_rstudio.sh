#!/bin/bash
PWD=$(pwd)
repo=${PWD##*/}
space=larsvilhuber

os=$(uname)



# build the docker if necessary

DOCKER_BUILDKIT=1 docker build . -t $space/$repo

case $os in
            Linux)
                sleep 10 && xdg-open http://localhost:8787 &
                ;;
            Darwin)
                sleep 10 && open http://localhost:8787 &
                ;;

esac


docker run -e PASSWORD=testing -v $PWD:/home/rstudio --rm -p 8787:8787 $space/$repo
