sudo apt-get update -y
sudo apt-get install zsh -y
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O – | zsh
sudo chsh -s $(which zsh) $(whoami)