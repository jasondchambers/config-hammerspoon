#!/usr/bin/env bash

main() {
  config_file=$1
  echo "Pointing hammerspoon to this config"
  if [ -L ~/.hammerspoon ]; then
    echo "Hammerspoon config already set - verifying it points to this config"
    local actual_resolved_path
    actual_resolved_path=$(readlink -f ~/.hammerspoon)
    if [ "$actual_resolved_path" = "$(pwd)" ] || [ "$actual_resolved_path" = "${HOME}/Dropbox/synced_repos/config-hammerspoon" ]; then
      echo "Hammerspoon is already pointing to this config"
    else
      echo "Hammerspoon is pointing to another config: ${actual_resolved_path}"
      exit 1
    fi
  else
    if [ -d ~/.hammerspoon ]; then
      echo "Hammerspoon config already exists - moving it to backup"
      mv ~/.hammerspoon{,.bak}
    fi
    echo "Linking Hammerspoon to this config"
    ln -s $(pwd) ~/.hammerspoon
  fi
}

main
