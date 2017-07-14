dir=$(cd $(dirname $0); pwd)

cmp $HOME/.gitconfig $dir/gitconfig 2> /dev/null && \
cmp $HOME/.gitignore_global $dir/gitignore_global 2> /dev/null
