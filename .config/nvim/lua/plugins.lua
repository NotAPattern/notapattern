return require('packer').startup(function()
  -- Ayu theme
  use 'Shatur/neovim-ayu'
  -- CoC (conquer of completion)
  use { 'neoclide/coc.nvim', branch='release' }
  -- BarBar
  use {'romgrk/barbar.nvim'}
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- Telescope
  -- Plenary
  use "nvim-lua/plenary.nvim"
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  -- Nvim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
end)
