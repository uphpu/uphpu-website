#!/bin/bash

# Replace "sculpin generate" with "php sculpin.phar generate" if sculpin.phar
# was downloaded and placed in this directory instead of sculpin having been
# installed globally.

echo "Setup"

if [ ! -d "output_prod/.git" ]; then
  rm -rf output_prod
  git clone git@github.com:uphpu/uphpu-website.git output_prod
fi

cd output_prod
git reset --hard HEAD
git checkout generated
git pull
git reset --hard HEAD
cd ..


vendor/bin/sculpin generate --env=prod
if [ $? -ne 0 ]; then echo "Could not generate the site"; exit 1; fi

cd output_prod

git add -A
git commit -am "Generating Website"
git push

cd ..

