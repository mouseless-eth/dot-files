vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

-- Show filename
vim.opt.title = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true

-- Turn on true color support in the terminal
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Append "@" and "-" to the set of characters that are considered part of a file name
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "

vim.opt.foldcolumn = "1"

-- Set the clipboard option to "unnamedplus" (copy deleted text to clipboard)
-- vim.opt.clipboard = "unnamedplus"
-- vim.opt.clipboard = "_d"

-- Set utf-8 as default encoding
-- vim.opt.encoding = "UTF-8"
