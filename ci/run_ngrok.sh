#!/usr/bin/env bash

set -ex

git submodule init
git submodule update

cd ngrok
make client

cd ~/${CIRCLE_PROJECT_REPONAME}

bundle exec jekyll serve -B

## run at background
./ngrok/bin/ngrok --config=.ngrok  -log=stdout --subdomain=$CIRCLE_SHA1 4000 &

## dummy for STDOUT
for x in {1..100} ; do echo $x ; sleep 3; done
