#!/bin/bash

for i in "$@"
do
case $i in
  --n=*)
    NUMBER="${i#*=}"
  ;;
  *)
    echo -e "Please pass a nuber as: \033[0;32mn\033[0m argument."
  ;;
esac
done

docker run -v $PWD:/var/app -it ducknorris/founding-circle ./bin/table.sh --n=$NUMBER
