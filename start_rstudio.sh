#!/bin/bash
PWD=$(pwd)
repo=${PWD##*/}
space=larsvilhuber
version=latest

os=$(uname)



# build the docker if necessary

docker pull $space/$repo:$version

# if not there, build it

[[ $? == 0 ]] || DOCKER_BUILDKIT=1 docker build . -t $space/$repo

case $os in
            Linux)
                if [[ ! -z $(which xdg-open) ]]
                then
                  sleep 10 && xdg-open http://localhost:8787 &
                fi
                ;;
            Darwin)
                if [[ -z $(which open) ]]
                then
                   sleep 10 && open http://localhost:8787 &
                fi
                ;;

esac


docker run -e PASSWORD=testing -v $PWD:/home/rstudio --rm -p 8787:8787 $space/$repo
