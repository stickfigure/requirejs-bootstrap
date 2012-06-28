#!/bin/bash

IN_DIR="./coffee"
OUT_DIR="./js/app"

if [ ! -d ${OUT_DIR} ]; then
	mkdir -p ${OUT_DIR}
fi

if [ -e /usr/local/bin/coffee ]; then
	export PATH="$PATH:/usr/local/bin"
	CS_PATH="/usr/local/bin/coffee"
else
	CS_PATH="/usr/bin/coffee"
fi

if [ -e /usr/local/bin/node ]; then
	NODE_PATH="/usr/local/bin/node"
else
	NODE_PATH="/usr/bin/node"
fi

echo -n "Compiling CoffeeScript... "
$CS_PATH --output ${OUT_DIR} --compile ${IN_DIR}

if [ $? -eq "0" ]; then
	date +"%s" > ${OUT_DIR}/date.txt
	echo -n "Done."
else
	echo -n "Error: failed to compile CoffeeScript"
fi
