#!/bin/bash

# XCode sets up a variety of tools for development on Macs
echo "Setting up XCode"
xcode-select --install
echo "Entering 'sudo' to accept XCode license. Enter admin password:"
sudo xcodebuild -license
echo "XCode complete"

echo

# Install Homebrew
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

echo "Installing Hammerspoon"
brew install --cask hammerspoon
mkdir -p ${HOME}/.hammerspoon # This should already exist, but just in case
cp -R ./config/.hammerspoon ${HOME}/
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

echo "Setting up VIM"
if [[ ! -d ~/.vim/bundle/Vundle.vim/ ]]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
cp ./config/.vimrc ${HOME}/.vimrc
# Start vim, install plugins, quit
vim -c 'PluginInstall' -c 'qa!'
echo "VIM setup complete"

echo

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
