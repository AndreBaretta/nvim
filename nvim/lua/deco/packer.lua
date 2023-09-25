
require('packer').startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'
   use {
      'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/plenary.nvim'} }
   }     
   use({ 'rose-pine/neovim', as = 'rose-pine' })
   use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
   use('nvim-treesitter/playground')
   use { "catppuccin/nvim", as = "catppuccin" }
   use('theprimeagen/harpoon')
   use('mbbill/undotree')
   use('tpope/vim-fugitive')
   
   use{
      'vonHeikemen/lsp-zero.nvim',
      requires = {
         -- LSP Support
         {'neovim/nvim-lspconfig'},
         {'williamboman/mason.nvim'},
         {'williamboman/mason-lspconfig.nvim'},

         -- Autocompletion
         {'hrsh7th/nvim-cmp'},
         {'hrsh7th/cmp-buffer'}, 
         {'hrsh7th/cmp-path'},
         {'hrsh7th/cmp-nvim-lsp'},
         {'hrsh7th/cmp-nvim-lua'},
         {'saadparwaiz1/cmp_luasnip'},

         -- Snippets
         {'L3MON4D3/LuaSnip'},
         {'rafamadriz/friendly-snippets'}
      }
   }





   vim.cmd ('colorscheme rose-pine')
end)

