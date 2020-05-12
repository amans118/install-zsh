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

echo "setting custom theme"
sed -i 's/robbyrussell/intheloop/g' .zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
mv ~/.zsh/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/

echo
echo '"zsh" is now set up with custom theme and zsh-autosuggestions Plugin'
