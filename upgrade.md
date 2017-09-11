The easy way to get this new version is removing your .vim folder and running the installation instructions that you will find in [README.md](README.md) file.

In case you don't want to do that, follow the next instructions:

  1. Create a directory named autoload in your `~/.vim/` directory `mkdir -p ~/.vim/autoload`
  2. Clone the vim-pluging into autoload `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
  3. Create the custom directory `mkdir -p ~/.vim/custom`
  4. Create file named `plugged` inside your `~/.vim/custom` folder
  5. Create file named `config` inside your `~/.vim/custom` folder and add the following lines:
  ```
    if executable('ag')
      let g:ackprg = 'ag --vimgrep --smart-case'
    endif

    colorscheme 0x7A69_dark
  ```
  6. Create the plugged directory inside `~/.vim` `mkdir -p ~/.vim/plugged`
