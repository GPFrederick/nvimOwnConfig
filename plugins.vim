call plug#begin('$HOME/.config/nvim/plugged')

" Syntax
Plug 'sheerun/vim-polyglot'

" Themes
Plug 'morhetz/gruvbox'

" Tree
Plug 'scrooloose/nerdtree'

" Windows Navigator
Plug 'christoomey/vim-tmux-navigator'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" Autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
    
    " Search into files, folders...
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

    " Search words we're step
Plug 'easymotion/vim-easymotion'

    " show up what added or eliminated
Plug 'mhinz/vim-signify'

    " Show indent lines
Plug 'yggdroot/indentline'

    " Comment lines
Plug 'scrooloose/nerdcommenter'

    " Scrolling
Plug 'karb94/neoscroll.nvim'

call plug#end()
