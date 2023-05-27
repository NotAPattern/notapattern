return require('packer').startup(function()
  -- Bufferline
  use {'akinsho/bufferline.nvim',
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons',
    config = function() require("bufferline") end
  }
  --, requires = {
    -- 'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    -- 'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  --}
  -- BarBar
  use 'romgrk/barbar.nvim'
  -- Ayu theme
  use 'Shatur/neovim-ayu'
  -- CoC (conquer of completion)
  use { 'neoclide/coc.nvim', branch='release' }
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
