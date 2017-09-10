call plug#begin('~/.vim/plugged')

" vimproc is a great asynchronous execution library for Vim
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Git wrapper
Plug 'tpope/vim-fugitive'

" Syntax highlighting and filetype plugins for Markdown
Plug 'tpope/vim-markdown'

" Vim plugin for editing Ruby on Rails applications
Plug 'tpope/vim-rails'

" EasyMotion provides a much simpler way to use some motions in vim
Plug 'easymotion/vim-easymotion'

" Sparkup lets you write HTML code faster
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

" Provides support for expanding abbreviations
Plug 'mattn/emmet-vim'

" Run your favorite search tool from Vim, with an enhanced results list.
Plug 'mileszs/ack.vim'

" Utility functions and commands for programming in Vim
Plug 'Daniel451/L9'

" Adds CoffeeScript support to vim
Plug 'kchmck/vim-coffee-script'

" Another attempt to bring Sublime Text's awesome multiple selection.
Plug 'terryma/vim-multiple-cursors'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Plug 'ctrlpvim/ctrlp.vim'

" The NERDTree is a file system explorer for the Vim editor
Plug 'scrooloose/nerdtree'

" Super simple vim plugin to show the list of buffers in the command bar.
Plug 'bling/vim-bufferline'

" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'

" This is the official theme repository for vim-airline
Plug 'vim-airline/vim-airline-themes'

" A simple, easy-to-use Vim alignment plugin.
Plug 'junegunn/vim-easy-align'

" One stop shop for vim colorschemes
Plug 'flazz/vim-colorschemes'

source ~/.vim/custom/plugged
call plug#end()

source ~/.vim/vim_config.vim
source ~/.vim/custom/config
