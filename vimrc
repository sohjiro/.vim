if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'linux' : 'make',
      \     'unix' : 'gmake',
      \    },
      \ }

" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'Lokaltog/vim-easymotion', '09c0cea8'   " This plugin is locked at revision 09c0cea8
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'mattn/emmet-vim'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'rking/ag.vim'

" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'rails.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'jstrater/mpvim'

" Non github repos
NeoBundle 'kien/ctrlp.vim.git'

" gist repos
NeoBundle 'https://github.com/scrooloose/nerdtree.git'
NeoBundle 'bling/vim-bufferline'
NeoBundle 'https://github.com/Lokaltog/powerline-fonts'
NeoBundle 'bling/vim-airline'

let g:airline_powerline_fonts=1
call neobundle#end()

" Installation check.
NeoBundleCheck

if exists("*fugitive#statusline")
  source ~/.vim/vim_config.vim
endif
