syntax enable
set background=dark
colorscheme solarized

" allow quit via single keypress (Q)
map Q :qa<CR>

" ctrl-s to save (in insert mode)
inoremap <c-s> <Esc>:w<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
