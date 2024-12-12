return {
    {
        "stevearc/conform.nvim",
        event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform"
    },
    {
        "neovim/nvim-lspconfig",
        config = function() require "configs.lspconfig" end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ':TSUpdate',
        opts = {ensure_installed = {"vim", "lua", "vimdoc", "html", "css"}}
    },
    {
        'joshuadanpeterson/typewriter',
        lazy = false,
        dependencies = {'nvim-treesitter/nvim-treesitter'},
        config = function() require('typewriter').setup() end,
        opts = {}
    },
    {'preservim/vim-markdown', ft = "markdown"},
    {'ThePrimeagen/vim-be-good', lazy = false},
    {'freitass/todo.txt-vim', ft= "txt"}, 
    {
        "epwalsh/obsidian.nvim",
        version = "*", 
        lazy = true,
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        opts = {workspaces = {{name = "personal", path = "~/IMF"}}}
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, 
        opts = {},
        ft = "markdown",
    }
}
