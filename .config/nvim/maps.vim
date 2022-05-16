"------------------------------
" Windows
" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Make adjusting split sizes a bit more friendly
map <silent> <C-Left> :vertical resize +3<CR>
map <silent> <C-Right> :vertical resize -3<CR>
map <silent> <C-Up> :resize +3<CR>
map <silent> <C-Down> :resize -3<CR>

" Change mode using jk 
inoremap jk <esc>

" Mapping esc to backtick
inoremap <esc> `

" ctrl+c yanks to system clipboard
vmap <C-c> "+y
