return require('packer').startup(function()
  -- Ayu theme
  use 'Shatur/neovim-ayu'
  -- CoC (conquer of completion)
  use { 'neoclide/coc.nvim', branch='release' }
end)
