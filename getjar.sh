#!/bin/bash

for argument in "$@"
do
case $argument in
	get)
		mvn org.apache.maven.plugins:maven-dependency-plugin:2.8:get -Dartifact=$2 -Ddest=./
	;;
esac
done
