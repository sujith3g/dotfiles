#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# Execute this from this directory only
############################

########## Variables

current_dir=$(pwd)                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
dirs_to_home="nvimrc vim vim_abbreviations gitignore gitmessage gitconfig aliases tmux.conf zshrc bash_profile"    # list of files/folders to symlink in homedir
dirs_to_config="nvim powerline"

##########

#clean backup-dir if already exists
echo "Deleting $olddir ..."
rm -rf $olddir
# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $current_dir directory"
cd $current_dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $dirs_to_home; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    if [ -f ~/.$file ]; then
	    mv ~/.$file $olddir/$file
    fi
    echo "Creating symlink to $file in home directory."
    ln -s $current_dir/$file ~/.$file
done
### Install ~/.config
mkdir -p ~/.config
mkdir -p $olddir/.config
for dir in $dirs_to_config; do
  echo "Moving any existing dotfiles from ~/.config to $olddir/.config"
  if [ -f ~/.$file ]; then
	  mv ~/.config/$dir $olddir/.config/$dir
  fi
  ln -s $current_dir/$dir ~/.config/$dir
done
### End-of Install neovim


### setup tmux tpm
if [ ! -d ~/.tmux/plugins/tpm ]; then
  mkdir -p ~/.tmux/plugins/tpm
fi
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
