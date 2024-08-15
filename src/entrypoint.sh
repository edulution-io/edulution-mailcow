#!/bin/sh

cp -f custom-theme.css /conf/sogo/custom-theme.css
cp -f sogo-full.svg /conf/sogo/sogo-full.svg

python3 syncer.py