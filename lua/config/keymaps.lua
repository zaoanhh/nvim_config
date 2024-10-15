-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


-- 设置插入模式下的映射
-- 这里我们使用 <C-l> 作为触发键
-- 注意：Lua 中使用 vim.api.nvim_set_keymap 来创建映射
vim.api.nvim_set_keymap('i', '<C-l>', [[<c-g>u<Esc>[s1z=`]a<c-g>u]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-z>', '<cmd>Telescope bibtex format_string=\\citet{%s}<CR>', {
    noremap = true,
    silent = true,
    desc = 'citations' -- 这个描述会在某些地方显示，比如 :help 或者其他地方
})
