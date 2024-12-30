-- some basics
vim.g.maplocalleader = ","
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.clipboard:append('unnamedplus')

-- plugins
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')


Plug('lervag/vimtex')
Plug('catppuccin/nvim', { ['as']= 'catppuccin' })

vim.call('plug#end')

-- vimtex settings
vim.g.vimtex_view_general_viewer = 'mupdf'
vim.g.vimtex_view_method = "mupdf"

-- colorcheme settings
vim.cmd.colorscheme "catppuccin-frappe"
