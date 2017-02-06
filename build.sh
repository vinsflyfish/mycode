#!/bin/sh
# make all type process
# all Makefile file under makefiles
# This code replace first line with each makefile each time

mkdir -p ./bin

#rm -rf ./bin/*

rootPath=$(pwd)

whiteMakefiles='
Makefile1
'

for file in $whiteMakefiles
do
    echo $file " start make"
	target="include makefiles\/${file}"
	sed -i "1s/.*/${target}/" Makefile
    make clean
    make
    echo $file " make success"
done
