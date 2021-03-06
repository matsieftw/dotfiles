#!/bin/bash

############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="vimrc tmux.conf zshenv" # list of files/folders to symlink in homedir
##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    mv ~/.zsh ~/dotfiles_old/zsh/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# create zsh directory and zsh functions directory
echo -n "Creating zsh directory."
mkdir -p ~/.zsh/
echo "done"

# change into the zsh dotfile directory
echo -n "Changing into the zsh directory."
cd ~/dotfiles/zsh/
echo "done"

# symlink zsh files
for file in *; do
  echo "Creating symlink to $file in zsh directory."
  ln -s $dir/zsh/$file ~/.zsh/.$file
  echo "done"
done

# create symlink to functions directory
echo "Creating symlink to functions directory."
ln -s $dir/zsh/functions ~/.zsh/
echo "done"

# change shell or reload shell if already zsh
echo "Checking shell."
current_shell=

