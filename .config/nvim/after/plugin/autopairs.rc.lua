local status, autopairs = pcall(require, "nvim-autopairs")
-- if (not status) then return end

autopairs.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
  fast_wrap = {
    map = '<F3>',
    chars = { '{', '[', '(', '"', "'", "<" },
    pattern = [=[[%'%"%)%>%]%)%}%,]]=],
    end_key = '$',
    keys = 'qwertyuiopzxcvbnmasdfghjkl',
    check_comma = true,
    highlight = 'Search',
    highlight_grey='Comment'
  },
  check_ts = true,
  ts_config = {
    lua = { "string", "source" },
    javascript = { "string", "template_string" },
  }
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

