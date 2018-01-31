#!/usr/bin/env bash

# compile scss
echo Compiling scss
node-sass -r ./template/scss/ -o ./raw/css/

# compile pug
echo Compiling pug
pug ./template/views/ -o ./raw/views/

# copy js
echo Coping js files
cp -R ./template/js/ ./raw/js/
cp -R ./template/images/ ./raw/

echo Done.
