#!/bin/sh

dir=$(cd $(dirname $0); pwd)

mkdir -p /usr/local/bin

cp $dir/opengit /usr/local/bin/
chmod +x /usr/local/bin/opengit
