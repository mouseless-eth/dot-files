-- Runs :PackerCompile whenver packer.lua is updated with an autocommand
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerCompile
  augroup end
]])

require("config.remap")
require("config.packer")
require("config.set")

local augroup = vim.api.nvim_create_augroup
local config = augroup('config', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({ "BufWritePre" }, {
    group = config,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})
