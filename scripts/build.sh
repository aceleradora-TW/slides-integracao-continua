#!/bin/bash

rm -rf _static
rm -rf ./build
mkdir -p ./build
cp -r ./node_modules/reveal.js/{css,js,lib,plugin} ./build
cp -r ./{theme,images} ./build
./node_modules/.bin/reveal-md slides.md --theme thoughtworks --static
cp -r _static/* ./build/
rm -rf _static
