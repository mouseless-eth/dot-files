runtime ./plug.vim

" Fundamentals "{{{
" ---------------------------------------------------------------------
"

" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

set nocompatible 
set number
syntax enable
set title
set autoindent
set nobackup
set hls
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

set nosc noru nosm
set lazyredraw
set ignorecase
set smarttab
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set nowrap
set backspace=indent,eol,start  
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

" set mode when leaving insert
autocmd InsertLeave * set nopaste
set pastetoggle=<F2>
vmap <C-c> "+y

set showmatch
set ruler
set timeoutlen=200
set ttimeoutlen=0

inoremap jk <esc>
inoremap <esc> `

"}}}

" Highlights "{{{
" ---------------------------------------------------------------------
"set cursorcolumn
"set cursorline

" Set cursor line color on visual mode
"highlight CursorLineNR ctermbg=red
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE 
highlight LineNr term=bold cterm=none ctermfg=240 
highlight CursorLineNr term=bold ctermfg=Yellow 
highlight CursorLine ctermbg=LightBlue

set guicursor=n-c-v:hor90,i-ci:block

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

"}}}

" === Emmet shorcuts ===
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

" Changing indent for javascript files
augroup FileTypeSpecificAutocommands
  autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 autoindent  
  autocmd FileType json setlocal tabstop=2 softtabstop=2 shiftwidth=2 autoindent  
  autocmd FileType html setlocal softtabstop=2 shiftwidth=2 
  autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2 autoindent  
  autocmd FileType css setlocal tabstop=2 softtabstop=2 shiftwidth=2 autoindent  
  autocmd FileType php setlocal tabstop=2 softtabstop=2 shiftwidth=2 autoindent
  autocmd FileType stylus setlocal tabstop=1 softtabstop=1 shiftwidth=1 autoindent
  autocmd FileType javascriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2 autoindent  
  autocmd FileType solidity setlocal tabstop=2 softtabstop=2 shiftwidth=2 autoindent  
  autocmd FileType typescriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2 autoindent  
augroup END

" === NERDtree Settings ===
"
" Open a file tree structure similar to VSCode
nmap <C-t> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" git state settings for nerdtree-git-plugin
"

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" gitGutter shows uncommitted changes on a gutter (compatible with nerdtree)
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'

" auto-clost nerdtree once exited
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Shortcutting split navigation
" Vim Split Settings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Make adjusting split sizes a bit more friendly
map <silent> <C-Left> :vertical resize +3<CR>
map <silent> <C-Right> :vertical resize -3<CR>
map <silent> <C-Up> :resize +3<CR>
map <silent> <C-Down> :resize -3<CR>

" Setting Map leader (for vim wiki)
let mapleader = "\\"
