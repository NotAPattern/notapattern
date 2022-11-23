return require('packer').startup(function()
  -- Ayu theme
  use 'Shatur/neovim-ayu'
  -- CoC (conquer of completion)
  use { 'neoclide/coc.nvim', branch='release' }
  -- BarBar
  use {'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'}}
end)
