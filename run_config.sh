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

ln -s ~/.vim/vimrc ~/.vimrc
