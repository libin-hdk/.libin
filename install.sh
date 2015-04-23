#!/bin/bash
#git clone git@github.com:laiwei/unix_home.git ~/.laiwei_unix_home


install_file()
{
	src=`pwd`"/"$1
	des="$HOME/$1"
	echo "
	src $src
	des $des"
	if [ -f $des -o -d $des ]; then
		mv -f $des $des".backup"
	fi
	ln -s $src $des
}

echo "export PS1='[\u@\h \W$(__git_ps1 \" (%s)\")]\$ '" >> ~/.bashrc
. ~/.bashrc

install_file .screenrc
install_file .vimrc
install_file .vim
#install_file .bash_profile
#install_file .dircolors
install_file .git-completion.bash && echo "source ~/.git-completion.bash" >> ~/.bashrc
install_file .fonts
install_file .gitignore
install_file .gitconfig

git clone https://github.com/gmarik/Vundle.vim.git  ~/.vim/bundle/Vundle.vim

