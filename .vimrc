" Normal configurations

" UI configurations
syntax on " syntax highlighting
set cursorline " highlight current line
set lazyredraw " redraw screen only when necessary - faster macros
set number relativenumber " hybrid number lines - relative number around cursor, absolute on cursor
set term=screen-256color " fix color schemes
colorscheme pablo " colorscheme
set autoindent

set showmatch " highlight matching [{()}]
set wildmenu " graphical autocomplete for command menu

" Spaces/Tab configurations
set expandtab " TABs are spaces nao
set shiftwidth=4 
set softtabstop=4 " deletes TAB characters by this number when backspacing
set ts=4 " visual spaces per TAB

" Search configurations
set ignorecase " case insensitive search
set hlsearch " highlight mataches
set incsearch " search as characters are entered

" Keymappings
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <C-T> :botright terminal<CR>
nnoremap <leader><Tab> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <silent> <F8> :TagbarToggle<CR>
" Navigating vim tabs
nnoremap <C-u> :tabprevious<CR>
nnoremap <C-i> :tabnext<CR>

" NERDTree customizations
" start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" set foldenable " enable folding


set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polyglot'
Plugin 'preservim/nerdtree'
Plugin 'preservim/tagbar'

call vundle#end()
filetype plugin indent on
