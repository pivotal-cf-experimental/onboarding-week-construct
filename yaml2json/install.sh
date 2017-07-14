if [[ -z $GOPATH ]]; then
  export GOPATH=~/go
  export PATH=$PATH:${GOPATH//://bin:}/bin
fi

/usr/local/bin/go get github.com/bronze1man/yaml2json
