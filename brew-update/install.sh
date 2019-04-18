#!/bin/sh

brew update
brew upgrade
# Remove unused packages
brew cleanup
# Create a temp file for quicker installed.sh checks
touch $TMPDIR/lastbrew.txt
