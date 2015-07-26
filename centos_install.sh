#!bin/sh

git clone https://github.com/CodeJuan/config.git
cp config/.vimrc ~/
cat config/.gitconfig >> ~/.gitconfig
