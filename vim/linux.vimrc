syntax on
set number
set cursorline
set colorcolumn=80
set laststatus=2
set statusline+=%F\ %l:%c
set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=256

colo bla
hi Normal ctermfg=231 ctermbg=233 cterm=none

xnoremap <leader>b xi()<Esc>P
xnoremap <leader>c xi{}<Esc>P
xnoremap <leader>s xi[]<Esc>P
xnoremap <leader>q xi""<Esc>P

vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>p :r! cat /tmp/vitmp<CR>

autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * retab
autocmd BufNewFile,BufRead *.fut setlocal filetype=fut
autocmd BufNewFile,BufRead *.nix setlocal filetype=nix
autocmd BufNewFile,BufRead *.rs setlocal filetype=rust
autocmd BufNewFile,BufRead *.stan setlocal filetype=stan
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd BufRead *.go retab
