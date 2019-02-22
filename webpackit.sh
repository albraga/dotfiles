#!/bin/bash

function init {
npm install --save-dev webpack
npm install --save-dev webpack-cli

touch webpack.config.js
FILE=webpack.config.js
cat <<EOM > $FILE
const path = require('path');

module.exports = {
    entry: './src/main.js',
    output: {
        filename: 'index.js',
        path: path.resolve(__dirname, 'dist/js')
    }
};
EOM
}

function bundle {
  npx webpack --config webpack.config.js
}


for argument in "$@"
do
case $argument in
	init)
		init
	;;
  bundle)
    bundle
  ;;
esac
done