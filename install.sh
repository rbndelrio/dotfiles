#!/bin/bash

# General Config

echo Cleaning dotfiles...
rm -rf ~/.bash_profile ~/.profile ~/.gitconfig ~/.hgrc ~/.tmux.conf
echo Symlinking dotfiles...
ln -s "$PWD/bash/bash_profile" ~/.bash_profile
ln -s "$PWD/profile/profile" ~/.profile
ln -s "$PWD/tmux/tmux.conf" ~/.tmux.conf
ln -s "$PWD/git/gitconfig" ~/.gitconfig
ln -s "$PWD/merc/hgrc" ~/.hgrc
# ln -s "$PWD/vscode/" ~/Library/Application\ Support/Code/User/


#Bin

echo Symlinking bin files...
# rm -rf ~/bin/git-deploy ~/bin/subl
# ln -s "$PWD/git/git-deploy" ~/bin/git-deploy
# ln -s "$PWD/git/git-cleanup" ~/bin/git-cleanup
# ln -s "$PWD/bin/subl" ~/bin/subl
rm ~/bin/git-deploy
rm ~/bin/git-cleanup
rm ~/bin/subl
cp ./git/git-deploy ~/bin/git-deploy
cp ./git/git-cleanup ~/bin/git-cleanup
cp ./bin/subl ~/bin/subl


# Sublime Text

echo Now for Sublime Text...
sublime_dir=~/Library/Application\ Support/Sublime\ Text\ 3/Packages
mv "$sublime_dir/User" "$sublime_dir/User.backup"
ln -s "$PWD/sublime/User" "$sublime_dir/User"
cd "$sublime_dir"
git clone https://github.com/YabataDesign/afterglow-theme.git "Theme - Afterglow"
cd ..


# Done

echo N E A T O !
echo E A T O !
echo A T O !
echo T O !
echo O !
echo !


# Initialize and update all submodules.

#echo Initializing git submodules.
#git submodule init && git submodule update