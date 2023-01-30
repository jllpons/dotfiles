return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim') --Package manager

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Popup suppport (for Telescope)
  use 'nvim-lua/popup.nvim'
  -- This is for being able to see media files from Telescope
  use 'nvim-telescope/telescope-media-files.nvim' -- TODO: Look for required soft

  -- LSP
  use('neovim/nvim-lspconfig') -- Configurations for Nvim LSP
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')


  -- UndoTree
  use('mbbill/undotree')

  -- Colorschemes:
  use('gruvbox-community/gruvbox')
  use('Mofiqul/dracula.nvim')
  use({"catppuccin/nvim", as = "catppuccin"})
  use({"rose-pine/neovim", as = "rose-pine",})

  -- Status line: 
  use({
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
      })

  -- Better syntax highlighting:
  use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
  use('nvim-treesitter/nvim-treesitter-context') -- Context with treesitter

  -- Command autocompletion
  use("hrsh7th/nvim-cmp") -- The completion pluguin
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer") -- Buffer completions
  use("hrsh7th/cmp-path") -- Path completions
  use({'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}) -- Tabnine-like completions

  -- Snippets
  use("L3MON4D3/LuaSnip") -- Snippet engine
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets") -- VScode like snippets

  -- Ident backlines
  use('lukas-reineke/indent-blankline.nvim')

     end)
