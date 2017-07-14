dir=$(cd $(dirname $0); pwd)
launch_agents_dir="$HOME/Library/LaunchAgents/"

filename=io.pivotal.clear-pasteboard.plist
mkdir -p $launch_agents_dir
cp $dir/$filename $launch_agents_dir

launchctl load -w "$launch_agents_dir/$filename"
