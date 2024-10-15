return { -- 其他插件配置...
{
    "jpalardy/vim-slime",
    ft = {"python", "julia"} -- 'ft' 对应于 vim-plug 的 'for'
}, {
    "hanschen/vim-ipython-cell",
    ft = {"python", "julia"} -- 'ft' 对应于 vim-plug 的 'for'
}, {"JuliaEditorSupport/julia-vim"}, {'SirVer/ultisnips'}, {'honza/vim-snippets'}, { -- Latex
    "lervag/vimtex",
    ft = {"latex", "tex"},
    lazy = false,
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
        -- VimTeX configuration goes here, e.g.
        vim.g.vimtex_view_method = 'sioyek'
        vim.g.vimtex_callback_progpath = "nvim"
        vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
        vim.g.vimtex_view_general_options_latexmk = '-reuse-instance'
        vim.g.tex_flavor = "latex"
        vim.g.vimtex_quickfix_mode = 0
        -- vim.g.vimtex_compiler_progname = "nvr"
        vim.g.vimtex_toc_config = {
            name = 'TOC',
            layers = {'content', 'todo', 'include'},
            split_width = 25,
            todo_sorted = 0,
            show_help = 1,
            show_numbers = 1
        }
        vim.g.vimtex_compiler_method = 'latexmk'

    end
}, -- 其他插件配置...
{
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        require("nvim-tree").setup {}
    end
},
{
    "Shougo/unite.vim"
},
}
