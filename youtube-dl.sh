#!/bin/bash

for argument in "$@"
do
case $argument in
	get)
		youtube-dl -f 22 $2 --sub-lang en --sub-format srt --write-sub --convert-subs srt
	;;
esac
done
