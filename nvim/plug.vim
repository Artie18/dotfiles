if has("nvim")

  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'folke/which-key.nvim'
Plug 'scrooloose/nerdtree'
Plug 'Pocco81/AutoSave.nvim'
Plug 'cormacrelf/dark-notify'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } 
Plug 'dart-lang/dart-vim-plugin'
Plug 'akinsho/flutter-tools.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'

call plug#end()


lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }

  require("flutter-tools").setup{
  } -- use defaults
  require'lspconfig'.gopls.setup{}
  require'lspconfig'.solargraph.setup{
    settings = {
      solargraph = {
        commandPath = '/Users/artyomfedenka/.rvm/gems/ruby-3.1.0/bin/solargraph',
        diagnostics = true,
        completion = true
      }
    }
  }
  require'lspconfig'.dartls.setup{}
EOF
