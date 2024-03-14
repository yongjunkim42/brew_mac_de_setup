#!/bin/bash

# Check if Homebrew is installed, if not, install it
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install basic applications
brew install --cask bitwarden
brew install --cask google-chrome
brew install --cask rectangle

# Install programming related apps
brew install --cask github
brew install gh
brew install --cask microsoft-onenote
brew install --cask visual-studio-code

# Install docker & k8s related apps
brew install --cask docker
brew install helm
brew install kind

# Install optional productivity tools
brew install --cask zoom
brew install --cask spotify

# Pycharm and DBeaver often fails SHA check sum test
# Consider installing them manually if the following commands don't work
brew install --cask pycharm-ce
brew install --cask dbeaver-community

# Setup Xcode Command Line Tools. 
# This allows you to run git commands in terminal
xcode-select --install

echo "Setup complete."
