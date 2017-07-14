dir=$(cd $(dirname $0); pwd)
copylocation="$HOME/.oh-my-zsh/custom/fasd-init.zsh"

brew install fasd

[ -f $copylocation ] && rm -f $copylocation
cp "$dir/fasd-init.zsh" $copylocation
