#!/bin/bash

# ARGV processing
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

ruby -r ./lib/table.rb -e "Table.print($NUMBER)"
