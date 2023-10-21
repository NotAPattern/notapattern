-- Auto install Packer if needed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- BarBar
  
  -- Ayu theme
  use 'Shatur/neovim-ayu'

  -- CoC (conquer of completion)
  use { 'neoclide/coc.nvim', branch='release' }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Plenary
  use "nvim-lua/plenary.nvim"

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }

  -- Nvim-tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }
end)
