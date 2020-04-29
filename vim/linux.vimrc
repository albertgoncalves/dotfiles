syntax on
set number
set cursorline
set colorcolumn=80
set laststatus=2
set statusline+=%F\ %l:%c
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set pastetoggle=<F2>
set timeout timeoutlen=150

set termguicolors
colo nord

xnoremap <leader>b xi()<Esc>P
xnoremap <leader>c xi{}<Esc>P
xnoremap <leader>s xi[]<Esc>P
xnoremap <leader>q xi""<Esc>P

vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>p :r! cat /tmp/vitmp<CR>
set clipboard=unnamedplus
set backspace=2

autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * retab
autocmd BufNewFile,BufRead *.fut setlocal filetype=fut
autocmd BufNewFile,BufRead *.nix setlocal filetype=nix
autocmd BufNewFile,BufRead *.rs,*.pest setlocal filetype=rust
autocmd BufNewFile,BufRead *.stan setlocal filetype=stan
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd BufNewFile,BufRead *.cr setlocal filetype=crystal
autocmd BufRead *.go retab
autocmd FileType ruby,crystal,wast setlocal shiftwidth=2 softtabstop=2
autocmd FileType c,cpp,javascript,typescript,sh
    \ syntax match NoteIntoTodo contained "NOTE"
    \ containedin=.*Comment.*
hi def link NoteIntoTodo TODO

runtime macros/matchit.vim
let b:match_words = 'do:end'
