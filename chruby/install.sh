#!/bin/sh

brew install chruby
echo "source /usr/local/opt/chruby/share/chruby/chruby.sh" >> $HOME/.bash_profile
echo "source /usr/local/opt/chruby/share/chruby/auto.sh" >> $HOME/.bash_profile

