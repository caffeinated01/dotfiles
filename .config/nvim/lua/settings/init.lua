local g = vim.g
local o = vim.o
local opt = vim.opt

local TAB_WIDTH = 4

o.termguicolors = true

o.number = true
o.relativenumber = true
o.cursorline = true

o.expandtab = true
o.smarttab = true
o.autoindent = true
--o.tabstop = TAB_WIDTH
o.shiftwidth = TAB_WIDTH

o.clipboard = "unnamedplus"

opt.mouse = "a"

o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
