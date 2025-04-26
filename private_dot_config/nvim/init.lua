-- some basics
vim.g.maplocalleader = ","
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.clipboard:append('unnamedplus')

-- plugins
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
-- autoclose brackets
Plug 'm4xshen/autoclose.nvim'

-- latex in nvim
Plug('lervag/vimtex')	

-- colour theme
Plug('RRethy/base16-nvim')
--Plug('catppuccin/nvim', { ['as']= 'catppuccin' })

-- R in nvim
Plug('jalvesaq/Nvim-R')

-- Treesitter

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

vim.call('plug#end')

-- vimtex settings
vim.g.vimtex_view_general_viewer = 'mupdf'
vim.g.vimtex_view_method = "mupdf"

-- colorcheme settings
vim.cmd.colorscheme "base16-3024"

-- autoclose setup
require("autoclose").setup()
require('nvim-treesitter.configs').setup({highlight={enable=true}, ensure_installed = {"c", "cpp", "python"}})
