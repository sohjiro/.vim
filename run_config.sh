DOT_VIM_FOLDER=~/.vim
DOT_VIMRC=~/.vimrc
VIM_VERSION=`/usr/bin/env vim --version | grep -e +ruby`

echo "\033[0;34mVerifying ruby support...\033[0m"
if [ "$VIM_VERSION" == "" ]
then
  echo `vim --version | grep -e ruby`
  echo "\033[0;31mYou don't have ruby support and this setup won't continue"
  exit
fi
echo "\033[0;32mRuby support was found...\033[0m"

echo "\033[0;34mSearching previous version of .vim and .vimrc\033[0m"
if [ -d "$DOT_VIM_FOLDER" ]
then
  echo "\033[0;31mMaking backup from your previous .vim folder"
  cp -R $DOT_VIM_FOLDER ~/.vim_backup
  echo "\033[0;32mBackup complete... You can find this at ~/.vim_backup\033[0m"
  echo "\033[0;31mDeleting older .vim"
  rm -rf $DOT_VIM_FOLDER
fi

if [ -h "$DOT_VIMRC" ]
then
  echo "\033[0;31mMaking backup from your previous .vimrc file"
  cp -R $DOT_VIMRC ~/.vimrc_backup
  echo "\033[0;32mBackup complete... You can find this at ~/.vimrc_backup\033[0m"
  echo "\033[0;31mDeleting older .vim"
  rm -rf $DOT_VIMRC
fi

echo "\033[0;34mCloning .vim from sohjiro repository...\033[0m"
hash git >/dev/null && /usr/bin/env git clone https://github.com/sohjiro/.vim.git ~/.vim || {
  echo "git not installed"
  exit
}

echo "\033[0;34mCreating bundle directory...\033[0m"
mkdir -p ~/.vim/bundle

echo "\033[0;34mCreating tmp directory for saving swp files...\033[0m"
mkdir -p ~/.vim/tmp

echo "\033[0;34mCloning neobundle repository...\033[0m"
/usr/bin/env git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

echo "\033[0;34mCreating symbolic link...\033[0m"
ln -s ~/.vim/vimrc ~/.vimrc

echo "\033[0;34mCreating symbolic link for later updating...\033[0m"
ln -s ~/.vim/update_config.sh /usr/local/bin/myvim_update
chmod +x /usr/local/bin/myvim_update


echo "\033[0;34mExecuting for 1st time vim...\033[0m"
vim
