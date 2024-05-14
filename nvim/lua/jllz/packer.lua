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
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
        --- Uncomment the two plugins below if you want to manage the language servers from neovim
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

        -- LSP Support
        {'neovim/nvim-lspconfig'},
        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'L3MON4D3/LuaSnip'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},
        -- tabnine
        {'tzachar/cmp-tabnine'},
        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
      }
    }

  -- UndoTree
  use('mbbill/undotree')

  -- Colorschemes:
  use('sainnhe/sonokai')
  use('sainnhe/gruvbox-material')
  use('Mofiqul/vscode.nvim')
  use('marko-cerovac/material.nvim')
  use('Mofiqul/dracula.nvim')
  use({"catppuccin/nvim", as = "catppuccin"})
  use({"rose-pine/neovim", as = "rose-pine",})
  use('shaunsingh/nord.nvim')
  use('sainnhe/everforest')
  use('navarasu/onedark.nvim')
  use('metalelf0/jellybeans-nvim')
  --use('aktersnurra/no-clown-fiesta')
  use('rmehri01/onenord.nvim')

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


  -- Ident backlines
  use('lukas-reineke/indent-blankline.nvim')

  -- LaTeX
  -- use('lervag/vimtex')

  -- Copilot
  use('github/copilot.vim')


  -- TODO: Seach for full lua implementations:
  -- Typst
  use {'kaarmu/typst.vim', ft = {'typst'}}

  -- Nextflow
  use ('LukeGoodsell/nextflow-vim')

     end)
