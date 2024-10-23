#!/bin/sh

color_directory="$HOME/.colors"
profile="tokyo-night"
url="https://raw.githubusercontent.com/tokyo-night/tokyo-night-vscode-theme/refs/heads/master/tokyo-night.itermcolors"

if [ "$color_directory" != "" ] ; then
  # Make dir if doesn't exist
  [ -d $color_directory ] || mkdir $color_directory

  if [ "$profile" != "" ] ; then
    # Download the color profile
    curl -s -o $color_directory/$profile.itermcolors $url
    # TODO: Make this not open a new window
    open --hide $color_directory/$profile.itermcolors
  fi
fi
