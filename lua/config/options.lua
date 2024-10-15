-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.wo.wrap = true
-- 启用拼写检查并设置拼写检查语言为荷兰语和英式英语
vim.opt.spell = true
vim.opt.spelllang = "en_us"


vim.g.lazyvim_picker = "telescope"
