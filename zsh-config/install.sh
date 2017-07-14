#!/bin/sh

dir=$(cd $(dirname $0); pwd)

copylocation="$HOME/.zshrc"

[ -f $copylocation ] && rm -f $copylocation
cp "$dir/zshrc" $copylocation
