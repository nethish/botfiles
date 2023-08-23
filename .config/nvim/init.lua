local opt = vim.opt
local o = vim.o

vim.g.mapleader = " "

-- PLUGINS
require("bootstrap")
require("lazy").setup("plugins")
require("keymap")


opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2

o.number = true
o.relativenumber = true
o.ignorecase = true

o.autoread = true
o.autowrite = true

