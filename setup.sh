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

# Set some defaults for OSX
source osx
echo -e "${green}✓ Blammo! OSX Defaults set.${reset}"
sleep 2

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

echo -e "${green}✓ Blammo! Homebrew, Node, and NVM installed.${reset}"
sleep 2

# Install Cask to automate application installs
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions
echo -e "${green}✓ Blammo! Cask installed.${reset}"
sleep 2

# Install Wordpress Tools
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
vagrant plugin install vagrant-hostsupdater

# Install browsers via Cask
brew cask install google-chrome
brew cask install firefox
brew cask install opera

echo -e "${green}✓ Blammo! Browsers installed.${reset}"
sleep 2

# Install applications via Cask
brew cask install 1password
brew cask install alfred
brew cask install atom
brew cask install bartender
brew cask install dropbox
brew cask install evernote
brew cask install fantastical
brew cask install iterm2
brew cask install lungo
brew cask install newton
brew cask install numi
brew cask install sketch
brew cask install sketch-toolbox
brew cask install skype
brew cask install spectacle
brew cask install slack
brew cask install spotify
brew cask install todoist
brew cask install transmit

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
npm install -g surge
npm install -g trash trash-cli


# Install Atom packages
apm install autoclose-html
apm install busy-signal
apm install emmet
apm install file-icons
apm install intentions
apm install linter
apm install linter-eslint
apm install linter-stylelint
apm install linter-stylelint
apm install minimap
apm install pure-syntax
apm install todo-show
apm install react
apm install zentabs

echo -e "${green}✓ Blammo! NPM packages installed.${reset}"
sleep 2

# Complete!
echo -e "${yellow}★★★ ${green}Done! Hooray for computers! ${yellow}★★★${reset}"
