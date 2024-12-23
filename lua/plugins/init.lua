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
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "mxsdev/nvim-dap-vscode-js",  -- For JavaScript/TypeScript debugging
    },
    lazy = false,
  },

  {
    "folke/trouble.nvim",  -- For error list like AstroVim
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "TroubleToggle", "Trouble" },
    opts = {
      position = "bottom",
      height = 10,
      icons = true,
      mode = "workspace_diagnostics",
      auto_close = true,
    },
  },

  {
    "folke/todo-comments.nvim",  -- For TODO and WARN highlighting
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    opts = {
      signs = true,
      keywords = {
        FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
        TODO = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
    },
  },
  
  {
    "kosayoda/nvim-lightbulb",  -- For code action lightbulb
    event = "BufRead",
    opts = {
      autocmd = { enabled = true },
      sign = {
        enabled = true,
        priority = 10,
      },
    },
  },

   {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {
      settings = {
        -- WebStorm-like TypeScript settings
        tsserver_file_preferences = {
          importModuleSpecifierPreference = "non-relative",
          quotePreference = "double",
        },
        tsserver_format_options = {
          allowIncompleteCompletions = false,
          allowRenameOfImportPath = true,
        },
      },
    },
  },

    {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "typescript",
        "javascript",
        "tsx",
        "html",
        "css",
        "json",
      },
    },
  },

{
  "echasnovski/mini.indentscope",
  config = function()
    require("mini.indentscope").setup({
      draw = {
        animation = require("mini.indentscope").gen_animation.none(),
        delay = 100,
        width = 1,
      },
    })
  end,
}
,  -- Better code actions lightbulb
  {
    "kosayoda/nvim-lightbulb",
    event = "BufRead",
    config = function()
      require("nvim-lightbulb").setup({
        autocmd = { enabled = true }
      })
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    opts = {
      cmdline = {
        enabled = true,
        view = "cmdline_popup",
        format = {
          cmdline = { pattern = "^:", icon = "", lang = "vim" },
          search_down = { kind = "search", pattern = "^/", icon = "🔍", lang = "regex" },
          search_up = { kind = "search", pattern = "^%?", icon = "🔍", lang = "regex" },
        },
      },
      popupmenu = {
        enabled = true,
        backend = "nui",
      },
      views = {
        cmdline_popup = {
          position = {
            row = 5,
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
          border = {
            style = "rounded",
          },
        },
      },
    },
  },
  {
  'hoob3rt/lualine.nvim',
}

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
