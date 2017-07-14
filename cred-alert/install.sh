if ! $(which -s cred-alert-cli); then
  cli_temp_location=$TMPDIR/cred-alert-cli
  curl -L https://s3.amazonaws.com/cred-alert/cli/current-release/cred-alert-cli_darwin > $cli_temp_location
  chmod +x $cli_temp_location
  mv $cli_temp_location /usr/local/bin/
else
  cred-alert-cli update
fi
