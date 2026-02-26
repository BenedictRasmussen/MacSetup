#!/bin/bash

################
#### XCODE #####
################
# XCode sets up a variety of tools for development on Macs
echo "Setting up XCode"
xcode-select -v
if [[ $? -ne 0 ]]; then
  xcode-select --install
  echo "Entering 'sudo' to accept XCode license. Enter admin password:"
  sudo xcodebuild -license
else
  echo "XCode already set up"
fi
echo "XCode complete"

################
### HOMEBREW ###
################
echo "Installing Homebrew"
brew -v
if [[ $? -ne 0 ]]; then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew already installed"
fi
echo "Homebrew complete"

echo

################
##### GIT ######
################
echo "Checking git"
git -v
if [[ $? -ne 0 ]]; then
  echo "Installing Git"
  brew install git
else
  echo "Git already installed"
fi
echo "Git complete"

echo

################
# HAMMERSPOON ##
################
echo "Installing Hammerspoon"
brew info hammerspoon
if [[ $? -ne 0 ]]; then
  brew install --cask hammerspoon
  mkdir -p ${HOME}/.hammerspoon # This should already exist, but just in case
  cp -R ./config/.hammerspoon ${HOME}/
else 
  echo "Hammerspoon already installed"
fi
echo "Hammerspoon complete"

echo

# Create general scratch work directory
echo "Creating code directory"
mkdir -p ${HOME}/code
touch ${HOME}/code/scratch.md
touch ${HOME}/code/scratch.json
touch ${HOME}/code/scratch.sh
echo "Code directory created"

echo

################
##### VIM ######
################
echo "Setting up VIM"
if [[ ! -d ~/.vim/bundle/Vundle.vim/ ]]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
cp ./config/.vimrc ${HOME}/.vimrc
# Start vim, install plugins, quit
vim -c 'PluginInstall' -c 'qa!'
echo "VIM setup complete"

echo

################
### OH-MY-ZSH ##
################
echo "Setting up oh-my-zsh"
ls -d ~/.oh-my-zsh
if [[ $? -ne 0 ]]; then
  mkdir -p ${HOME}/.oh-my-zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else 
  echo "oh-my-zsh already installed"
fi

echo "Setting up configuration files..."
echo "Copying .zshrc"
cp ./config/.zshrc ${HOME}/.zshrc
echo "Copying .gitconfig"
cp ./config/.gitconfig ${HOME}/.gitconfig
echo "Configuration files copied"

echo "\n\n\n"

echo '****************************************************************************'
echo '* Run "source ${HOME}/.zshrc" to get all the latest updates to your shell! *'
echo '****************************************************************************'
