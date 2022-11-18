#!/bin/bash
ZSH_HOME=~/.oh-my-zsh

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

NVIM_VERSION=v0.8.0

function probe_sw {
	if [ ! "$(command -v $1)" ]; then
		echo "${BLUE}Info: $1 is not installed. apt-get install zsh" >&2
		return 0
	else
		return 1
	fi
}

probe_sw zsh
if [ $? -eq 0 ]; then
	echo "install zsh"
fi

bash ./oh-my-zsh-install.sh -y
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_HOME:-~/.oh-my-zsh/}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_HOME:-~/.oh-my-zsh/}/plugins/zsh-syntax-highlighting


cp ./zshrc ~/.zshrc
cp ./tmux.conf ~/.tmux.conf

echo "hello"
#exec /bin/zsh

echo "hello"
# install nodejs >= 14.14
#sudo curl -sL install-node.vercel.app/lts | sudo zsh
# install vim

#git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# install coc dependences
probe_sw nodejs

if [ $? -eq 0 ]; then
	echo "${BLUE}----------- install nodejs -------------"
	sudo apt install -y nodejs
  wget https://nodejs.org/dist/v16.17.0/node-v16.17.0.tar.gz -O nodejs.tar.gz
  tar -xvf nodejs.tar.xz
  cd node-v16.17.0
  ./configure --prefix=/usr/local/nodejs
  make -j $nproc
  sudo make install
  sudo ln -s /usr/local/nodejs/bin/npm  /usr/local/bin/
  sudo ln -s /usr/local/nodejs/bin/node /usr/local/bin/
fi


probe_sw yarn

if [ $? -eq 0 ]; then
	echo "${BLUE}----------- install yarn -------------"
	sudo apt install -y yarn
fi


echo -e "${BLUE}----------- install yarn -------------${NC}"


wget "https://github.com/neovim/neovim/releases/download/${NVIM_VERSION}/nvim-linux64.tar.gz"
tar -zxvf nvim-linux64.tar.gz
if [ $? -eq 0 ]; then
	mv nvim-linux64 /home/${USER}/.nvim-linux64
	rm -rf nvim-linux64
else
	echo "Error: Download nvim. Please download again."
fi


mkdir -p /home/${USER}/.local/share/nvim/site/autoload
cp plug.vim  /home/${USER}/.local/share/nvim/site/autoload/

cp ./init.vim /home/${USER}/.config/nvim/
ln -s /home/${USER}/.config/nvim/init.vim /home/${USER}/.vimrc

#mkdir -p /home/${USER}/.config/nvim
#ln -s /home/${USER}/.vim /home/${USER}/.config/nvim
mkdir -p /home/${USER}/.vim/plugged
cp plug.vim /home/${USER}/.vim/plugged/
exit

#open c/C++ file and CocCommand clangd.install

