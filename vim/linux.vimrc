syntax on
set termguicolors
colo nord
autocmd FileType javascript,nasm,typescript colo gruvbox

set number
set cursorline
set colorcolumn=80
set laststatus=2
set statusline+=%F\ %l:%c

set timeout timeoutlen=150

set tabstop=4
set shiftwidth=4
set expandtab
filetype indent off

xnoremap <leader>b xi()<Esc>P
xnoremap <leader>c xi{}<Esc>P
xnoremap <leader>s xi[]<Esc>P
xnoremap <leader>q xi""<Esc>P

vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>p :r! cat /tmp/vitmp<CR>
set clipboard=unnamedplus
set backspace=2
set pastetoggle=<F2>

nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
nnoremap Q <Nop>

autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * retab
autocmd BufNewFile,BufRead *.asm setlocal filetype=nasm
autocmd BufNewFile,BufRead *.c,*.cpp,*.h,*.hpp setlocal filetype=c
autocmd BufNewFile,BufRead *.cr setlocal filetype=crystal
autocmd BufNewFile,BufRead *.frag,*.vert,*.glsl setlocal filetype=glsl
autocmd BufNewFile,BufRead *.fut setlocal filetype=fut
autocmd BufNewFile,BufRead *.jl setlocal filetype=julia
autocmd BufNewFile,BufRead *.nix setlocal filetype=nix
autocmd BufNewFile,BufRead *.rs,*.pest setlocal filetype=rust
autocmd BufNewFile,BufRead *.stan setlocal filetype=stan
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
autocmd BufRead *.go retab

autocmd FileType crystal,haskell,ruby,wast
    \ setlocal shiftwidth=2 softtabstop=2
autocmd
    \ FileType
        \ asm
        \,c
        \,cpp
        \,glsl
        \,haskell
        \,java
        \,javascript
        \,r
        \,sh
        \,stan
        \,typescript
        \,vim
        \,wast
    \ syntax match NoteIntoTodo contained "NOTE" containedin=.*Comment.*
hi def link NoteIntoTodo TODO

autocmd FileType make set noexpandtab

runtime macros/matchit.vim
let b:match_words = "<:>"
