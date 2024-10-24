return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

{
	"nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
	opts = {
		ensure_installed = {
			"vim", "lua", "vimdoc",
     "html", "css"
		},
	},
},

    {
        'joshuadanpeterson/typewriter',
        lazy = false,
        dependencies = {
            'nvim-treesitter/nvim-treesitter',
        },
        config = function()
            require('typewriter').setup()
        end,
        opts = {}
    },



}
