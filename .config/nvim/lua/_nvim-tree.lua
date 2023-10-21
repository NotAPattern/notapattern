-- disable netrw at the very start of your init.lua (strongly advised)
local g = vim.g
local opt = vim.opt

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()
