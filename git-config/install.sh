#!/bin/sh

dir=$(cd $(dirname $0); pwd)

gitconfig_copylocation="$HOME/.gitconfig"
gitignore_copylocation="$HOME/.gitignore_global"
[ -f $gitconfig_copylocation ] && rm $gitconfig_copylocation
cp "$dir/gitconfig" $gitconfig_copylocation

[ -f $gitignore_copylocation ] && rm $gitignore_copylocation
cp "$dir/gitignore_global" $gitignore_copylocation
