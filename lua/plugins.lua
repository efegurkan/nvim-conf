return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Auto close brackets only when enter is pressed
  use 'rstacruz/vim-closer'

  -- % works on language specific matches
  use {'andymass/vim-matchup', event = 'VimEnter'}

  -- Out of the box LSP configuration
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }

   -- required by some plugins
  use "nvim-lua/plenary.nvim"


  -- Telescope stuff
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }


  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-treesitter/nvim-treesitter-context'

  use 'nvim-tree/nvim-web-devicons'

  -- Split single line into multiline
  use 'AndrewRadev/splitjoin.vim'

  -- enables bracketed pasting
  use 'ConradIrwin/vim-bracketed-paste'

  -- change word casing with motions
  use 'arthurxavierx/vim-caser'

  -- easy comment in/out
  use 'tpope/vim-commentary'

  -- git
  use 'tpope/vim-fugitive'

  -- add/delete/change surrounding things like [ { ' " etc.
  use 'tpope/vim-surround'

  -- show indentation lines
  use "lukas-reineke/indent-blankline.nvim"

  -- colorscheme
  use 'morhetz/gruvbox'

  use "mbbill/undotree"

  -- rename, sudo open, delete, write etc
  use "tpope/vim-eunuch"

  -- diagnostics window
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  -- formatters etc
  use "jose-elias-alvarez/null-ls.nvim"

end)
