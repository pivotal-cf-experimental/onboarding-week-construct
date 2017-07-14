dir=$(cd $(dirname $0); pwd)
target_file_location="$HOME/.oh-my-zsh/custom/fasd-init.zsh"

test -f $target_file_location && \
diff -q $dir/fasd-init.zsh $target_file_location
