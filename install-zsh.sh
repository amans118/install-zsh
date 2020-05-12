#!/bin/bash

# No use after this
rm $0

# install zsh
sudo apt install -y zsh wget git

URL=https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh

# install oh-my-zsh
wget -q $URL -O install.sh
sudo chmod +x install.sh
./install.sh
rm install.sh

echo
echo '"zsh" is now on the path'
