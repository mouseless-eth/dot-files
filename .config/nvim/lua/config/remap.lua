-- Windows
-- Split window
vim.keymap.set("n", "ss", ":split<Return><C-w>w", { noremap = true })
vim.keymap.set("n", "sv", ":vsplit<Return><C-w>w", { noremap = true })

-- Move window
vim.keymap.set("", " ", "<C-w>w", { noremap = true })
vim.keymap.set("", "s<left>", "<C-w>h", { noremap = true })
vim.keymap.set("", "s<up>", "<C-w>k", { noremap = true })
vim.keymap.set("", "s<down>", "<C-w>j", { noremap = true })
vim.keymap.set("", "s<right>", "<C-w>l", { noremap = true })
vim.keymap.set("", "sh", "<C-w>h", { noremap = true })
vim.keymap.set("", "sk", "<C-w>k", { noremap = true })
vim.keymap.set("", "sj", "<C-w>j", { noremap = true })
vim.keymap.set("", "sl", "<C-w>l", { noremap = true })

-- Make adjusting split sizes a bit more friendly
vim.keymap.set("", "<C-Left>", ":vertical resize +3<CR>", { silent = true, noremap = true })
vim.keymap.set("", "<C-Right>", ":vertical resize -3<CR>", { silent = true, noremap = true })
vim.keymap.set("", "<C-Up>", ":resize +3<CR>", { silent = true, noremap = true })
vim.keymap.set("", "<C-Down>", ":resize -3<CR>", { silent = true, noremap = true })

-- Change mode using jk
vim.keymap.set("i", "jk", "<esc>", { noremap = true })

-- Mapping esc to backtick
vim.keymap.set("i", "<esc>", "`", { noremap = true })

-- Ctrl+c yanks to system clipboard (and unhighlight text)
vim.keymap.set("v", "<C-c>", "\"+y:nohl<CR>", { silent = true, noremap = true })
