-- some basics
vim.g.maplocalleader = ","
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.clipboard:append('unnamedplus')
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2


-- make sure vimmplug installed
local fn = vim.fn

-- Define the path where vim-plug should be installed
local plug_path = fn.stdpath("data") .. "/site/autoload/plug.vim"

-- Check if vim-plug is installed, then install if not there
if fn.empty(fn.glob(plug_path)) > 0 then
  print("Installing vim-plug...")
  fn.system({
    "sh",
    "-c",
    "curl -fLo " .. plug_path ..
    " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  })
  print("vim-plug installed. Restart Neovim.")
end

-- plugins
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
-- autoclose brackets
Plug 'm4xshen/autoclose.nvim'

-- latex in nvim
Plug('lervag/vimtex')	

-- colour theme
Plug('scottmckendry/cyberdream.nvim')

-- R in nvim
Plug('jalvesaq/Nvim-R')

-- Treesitter

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

vim.call('plug#end')

-- vimtex settings
vim.g.vimtex_view_general_viewer = 'zathura'
vim.g.vimtex_view_method = "zathura"

-- colorcheme settings
vim.cmd.colorscheme "cyberdream"

-- autoclose setup
require("autoclose").setup()
require('nvim-treesitter.config').setup(
  {highlight={enable=true},
  ensure_installed = {"c", "cpp", "python", "rust"}}
)
