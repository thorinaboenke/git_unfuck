#!/usr/bin/env bash
#
# install.sh
#
# Installs git alias "unfuck".

# is the command run with super user priviliges?
if [[ "$EUID" -eq 0 ]]; then
  flag="system"
else
  flag="global"
fi

echo "Setting up new git $flag alias: unfuck"
cmd='git reset --hard HEAD~1 && git push --force'

# add the alias to the git configuration file
git config --$flag alias.unfuck \!"$cmd"