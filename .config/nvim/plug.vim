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
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" NeoVim only plugins
if has("nvim")
  Plug 'hoob3rt/lualine.nvim'

  " LSP
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'simrat39/rust-tools.nvim'
  Plug 'tomlion/vim-solidity'
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'mfussenegger/nvim-dap'
  Plug 'simrat39/inlay-hints.nvim'
  Plug 'j-hui/fidget.nvim'

  " Autocompletion frameworks
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'onsails/lspkind-nvim'

  " Telescrope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-file-browser.nvim'

  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-lua/popup.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  " Plug 'tiagovla/tokyodark.nvim'
  Plug 'akinsho/toggleterm.nvim'
endif

call plug#end()
