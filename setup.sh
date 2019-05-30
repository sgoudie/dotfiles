# Format
# Shell script to run after formatting a machine or getting a new one.

# Define some colors for funzies.
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
reset=`tput sgr0`
echo "${yellow}★★★ ${green}Whee, computers! Let's install some software, hombre. ${yellow}★★★${reset}"
sleep 2

# Prompt for SUDO before starting the waterfall :)
sudo -l

# Setup OhMyZSH
curl -L http://install.ohmyz.sh | sh
echo -e "${green}✓ Blammo! OhMyZSH installed.${reset}"
sleep 2

# Get Homebrew and Node/NPM installed
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install node
brew install nvm
brew install mongodb
brew install git
brew install git-extras
brew install yarn

echo -e "${green}✓ Blammo! Homebrew, Node, and NVM installed.${reset}"
sleep 2

# Install Cask to automate application installs
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions
echo -e "${green}✓ Blammo! Cask installed.${reset}"
sleep 2

echo -e "${green}✓ Blammo! Browsers installed.${reset}"
sleep 2

# Install applications via Cask
# Remember some apps are better left managed on the app store
brew cask install 1password
brew cask install aerial
brew cask install airtable
brew cask install dropbox
brew cask install fantastical
brew cask install insomnia
brew cask install iterm2
brew cask install lungo
brew cask install numi
brew cask install sketch
brew cask install spectacle
brew cask install spotify
brew cask install visual-studio-code
brew cask install zoomus

echo -e "${green}✓ Blammo! OSX applications installed.${reset}"
sleep 2

# Source symlinks *after* installing dependencies that may error out.
source symlinks

echo -e "${green}✓ Blammo! Symlinks copied.${reset}"
sleep 2

# Install Meteor
curl https://install.meteor.com/ | sh

echo -e "${green}✓ Blammo! Meteor installed.${reset}"
sleep 2

# Install NPM packages.
npm install -g eslint
npm install -g gatsby
npm install -g grunt
npm install -g grunt-cli
npm install -g gulp

echo -e "${green}✓ Blammo! NPM packages installed.${reset}"
sleep 2

# Complete!
echo -e "${yellow}★★★ ${green}Done! Hooray for computers! ${yellow}★★★${reset}"
