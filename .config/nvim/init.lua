local opt = vim.opt
local o = vim.o

vim.g.mapleader = " "

-- PLUGINS
require("bootstrap")
require("lazy").setup("plugins")
require("keymap")
require("cp")
require("lsp")



TAB = function(tabwidth)
    opt.tabstop = tabwidth
    opt.softtabstop = tabwidth
    opt.shiftwidth = tabwidth
end

TAB(4)

opt.expandtab = true
opt.smartindent = true

opt.clipboard = "unnamedplus"

o.number = true
o.relativenumber = true
o.ignorecase = true
o.smartcase = true
o.mouse = "a"

o.autoread = true
o.autowrite = true

o.splitright = true
o.splitbelow = true

o.scrolloff = 8





































