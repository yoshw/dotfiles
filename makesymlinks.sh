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
files="bashrc zshrc vimrc gvimrc bash_profile"
files="$files fehbg xbindkeysrc xinitrc Xresources" # linux specific

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

# move any existing dotfiles in homedir to dotfiles_old directory,
# then create symlinks from the homedir to any files in
# the $dir directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    # first test whether a symlink already exists
    if [ ! -L ~/.$file ]; then
      mv ~/.$file $olddir
      echo "Moved ~/.$file to $olddir"
      echo "Symlinking $file in home dir"
      ln -s $dir/$file ~/.$file
      echo "Done"
    fi
done
