if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion', '09c0cea8'   " This plugin is locked at revision 09c0cea8 
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" vim-scripts repos
" NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'rails.vim'

" Non github repos
NeoBundle 'kien/ctrlp.vim.git'

" gist repos
" NeoBundle 'https://gist.github.com/656148.git', {
"       \ 'name': 'everything.vim',
"       \ 'script_type': 'plugin'}
" Non git repos
NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
NeoBundle 'https://github.com/scrooloose/nerdtree.git'
NeoBundle 'bling/vim-bufferline'
" NeoBundle 'git@github.com:Lokaltog/powerline.git'
NeoBundle 'https://github.com/Lokaltog/powerline-fonts'
NeoBundle 'bling/vim-airline'
NeoBundle 'git@github.com:terryma/vim-multiple-cursors.git'

" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
let g:airline_powerline_fonts=1
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'
" ...

"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

augroup config_files
  source ~/.vim/vim_config.vim
augroup END

