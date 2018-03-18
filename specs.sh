#!/bin/bash

docker run -v $PWD:/var/app -it ducknorris/founding-circle rspec
