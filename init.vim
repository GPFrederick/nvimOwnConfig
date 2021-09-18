" Routes
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/maps.vim

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber

set laststatus=2
set noshowmode

set scrolloff=7
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set splitright
set splitbelow

" Status Bar
set statusline=
set statusline+=%#CtrlPMode2#
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F
set statusline+=%= " Right side settings
set statusline+=%#DiffChange#
set statusline+=\ %c:%l\%L
set statusline+=\ %p%%
set statusline+=\ [%n]

" Themes load
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

lua require('neoscroll').setup()
