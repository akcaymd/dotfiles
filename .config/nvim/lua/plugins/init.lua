return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    'joshuadanpeterson/typewriter', 
    lazy = false,
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
    },
    config = function()
                require('typewriter').setup({
		            enable_horizontal_scroll = false,
	            })
            end,
    opts = {}
  },

  {
  "tadmccorkle/markdown.nvim",
      ft = "markdown", -- or 'event = "VeryLazy"'
      opts = {
        -- configuration here or empty for defaults
        },
    },

    {
        "preservim/vim-markdown",
        lazy = false,
        dependencies = {
            "godlygeek/tabular"
        }
    
    }



  -- These are some examples, uncomment them if you want to see them work!
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("nvchad.configs.lspconfig").defaults()
  --     require "configs.lspconfig"
  --   end,
  -- },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
