let mapleader=" "

" NerdTree
map <Leader>nt :NERDTreeFind<CR>

" Split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" Search
map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>

" Buffers
map <Leader>ob :Buffers<cr>

" Faster Scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
nmap <Leader>s <Plug>(easymotion-s2)

" Tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>

" Tmux navigator
nmap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nmap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nmap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nmap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

" Terminal
set splitright
function! OpenTerminal()
    " move to right most buffer
    execute "normal \<C-1>"
    execute "normal \<C-1>"
    execute "normal \<C-1>"
    execute "normal \<C-1>"

    let bufNum = bufnr("%")
    let bufType = getbufvar(bufNum, "&buftype", "not found")
    
    if bufType == "terminal"
        " Close existing terminal
        execute "q"
    else
        " Open terminal
        execute "vsp term://bash"

        " Turn off numbers
        execute "set nonu"
        execute "set nornu"

        " Toggle insert on enter/exit
        silent au BufLeave <buffer> stopinsert!
        silent au BufWinEnter,WinEnter <buffer> startinsert!

        " Set maps inside terminal buffer
        execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
        execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
        execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

        startinsert!
    endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>
