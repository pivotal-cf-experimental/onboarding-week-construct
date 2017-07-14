
dir=$(cd $(dirname $0); pwd)

brew install git-secrets

# These are going to annoy cloud ops alot.  Let's talk about it.
git secrets --add --global "ssh-rsa AAAA"
git secrets --add --global "BEGIN RSA PRIVATE KEY"
git secrets --register-aws --global

# Install git secrets for all users
secrets_pre_commit=/usr/local/share/githooks/pre-commit/00-git-secrets

mkdir -p $(dirname ${secrets_pre_commit})

cat <<EOF > ${secrets_pre_commit}
#!/usr/bin/env bash
git secrets --pre_commit_hook -- "$@"
EOF

chmod 755 ${secrets_pre_commit}
secrets_commit_msg=/usr/local/share/githooks/commit-msg/00-git-secrets

mkdir -p $(dirname ${secrets_commit_msg})

cat <<EOF > ${secrets_commit_msg}
#!/usr/bin/env bash
git secrets --commit_msg_hook -- "$@"
EOF

chmod 755 ${secrets_commit_msg}
secrets_prepare_commit_msg=/usr/local/share/githooks/prepare-commit-msg/00-git-secrets

mkdir -p $(dirname ${secrets_prepare_commit_msg})

cat <<EOF > ${secrets_prepare_commit_msg}
#!/usr/bin/env bash
git secrets --prepare_commit_msg_hook -- "$@"
EOF

chmod 755 ${secrets_prepare_commit_msg}

# git secrets --add --global "AKIA[A-Z0-9]{16}"
# git secrets --add --global "(\"|')?(AWS|aws|Aws)?_?(SECRET|secret|Secret)?_?(ACCESS|access|Access)?_?(KEY|key|Key)(\"|')?\\s*(:|=>|=)\\s*(\"|')?[A-Za-z0-9/\\+=]{40}(\"|')?"
# git secrets --add --global "(\"|')?(AWS|aws|Aws)?_?(ACCOUNT|account|Account)_?(ID|id|Id)?(\"|')?\\s*(:|=>|=)\\s*(\"|')?[0-9]{4}\\-?[0-9]{4}\\-?[0-9]{4}(\"|')?"
# git secrets --add --global "(\"|')*[A-Za-z0-9_-]*([sS]ecret|[pP]rivate[-_]?[Kk]ey|[Pp]assword|[sS]alt|SECRET|PRIVATE[-_]?KEY|PASSWORD|SALT)[\"']*\\s*(=|:|\\s|:=|=>)\\s*[\"'][A-Za-z0-9.$+=&\\/_\\\\-]{12,}(\"|')"
# git secrets --add --allowed --global "[\"]\\$"
# git secrets --add --allowed --global "[fF][aA][kK][eE]"
# git secrets --add --allowed --global "[eE][xX][aA][mM][pP][lL][eE]"