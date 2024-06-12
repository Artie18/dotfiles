let g:plug_home = stdpath('data') . '/plugged'

call plug#begin()

Plug 'craftzdog/solarized-osaka.nvim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'folke/which-key.nvim'
Plug 'cormacrelf/dark-notify'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dart-lang/dart-vim-plugin'
Plug 'akinsho/flutter-tools.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rebelot/kanagawa.nvim'
Plug 'vrischmann/tree-sitter-templ'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'sbdchd/neoformat'
Plug 'dart-lang/dart-vim-plugin'
Plug 'huyvohcmc/atlas.vim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'preservim/vim-pencil'
Plug 'junegunn/goyo.vim' 
Plug 'junegunn/limelight.vim'

Plug 'nvim-tree/nvim-web-devicons'
Plug 'ThePrimeagen/harpoon'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


call plug#end()

set completeopt=menu,menuone,noselect

lua << EOF
  require("which-key").setup()
  require("flutter-tools").setup()
EOF
