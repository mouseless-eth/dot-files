" Plugin management
call plug#begin('~/.config/nvim/plugins')

" Nerd tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'airblade/vim-gitgutter'

" Webdev
Plug 'mattn/emmet-vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main'  }
Plug 'ap/vim-css-color'
Plug 'wavded/vim-stylus'
Plug 'neoclide/vim-jsx-improve'

" Quality Of Life
Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'

" Turning Vim into an IDE
Plug 'severin-lemaignan/vim-minimap'
Plug 'tc50cal/vim-terminal'
Plug 'github/copilot.vim'

" DevOps
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'

" NeoVim only plugins
if has("nvim")
  Plug 'hoob3rt/lualine.nvim'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'tami5/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'simrat39/rust-tools.nvim'
  Plug 'tomlion/vim-solidity'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Autocompletion frameworks
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-buffer'

  Plug 'L3MON4D3/LuaSnip'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'tiagovla/tokyodark.nvim'
  Plug 'zthxxx/zsh-history-enquirer'
  Plug 'akinsho/toggleterm.nvim'
endif

call plug#end()
