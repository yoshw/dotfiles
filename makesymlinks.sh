#!/bin/bash
############################
# makesymlinks.sh
# This script creates symlinks from the home dir
# to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
# list of files/folders to symlink in homedir
files="bashrc zshrc vimrc gvimrc bash_profile spacemacs zshrc-local zpath zshenv"
files="$files xbindkeysrc xinitrc Xresources" # linux specific

##########

# create dotfiles_old in homedir
if [ ! -d $olddir ]; then
  echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
  mkdir -p $olddir
  echo "done"
fi

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

symlinked=""
echo "Moving any existing dotfiles from ~ to $olddir"
for file in $files; do
    # first test whether a symlink already exists
    if [ ! -L ~/.$file ]; then
      # if this is the first time we're backing this file up,
      # copy it as is to the dotfiles directory
      if [ ! -f $dir/$file ]; then
        if [ ! -f ~/.$file ]; then
          echo "WARNING: file $file does not already exist. Maybe create it?"
          continue
        fi
        cp ~/.$file $dir/$file
        echo "Copied .$file to $dir"
      fi
      mv ~/.$file $olddir
      echo "Moved ~/.$file to $olddir"
      ln -s $dir/$file ~/.$file
      echo "Created home dir symlink to $file"
      symlinked="$symlinked $file"
    fi
done

echo
echo "Dotfiles newly linked:$symlinked"
