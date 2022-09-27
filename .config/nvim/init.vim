runtime ./plug.vim
runtime ./maps.vim

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
set relativenumber
syntax enable
set title
set nobackup
set hls
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set signcolumn=yes

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

set showmatch
set ruler
" set timeoutlen=200
" set ttimeoutlen=0

"}}}

" Highlights "{{{
" ---------------------------------------------------------------------

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE 
highlight LineNr term=bold cterm=none ctermfg=240 

set guicursor=n-c-v:hor90,i-ci:block

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

"}}}

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
  autocmd FileType rust setlocal tabstop=2 softtabstop=2 shiftwidth=2 autoindent 
augroup END

" Neovide specific configs
if exists("g:neovide")
  let g:neovide_transparency=0.88
  let g:transparency = 0.88

  inoremap <C-S-v> <Esc>"+p`]a

  let g:tokyonight_style = "moon"
  let g:tokyonight_transparent = "true"
  let g:tokyonight_lualine_bold = "true"

  colorscheme tokyonight
endif
