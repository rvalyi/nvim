local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "pyright",
        "black",
        "mypy",
        "ruff",
        "vue-language-server",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
    dependencies = {
        {
            "smiteshp/nvim-navbuddy",
            dependencies = {
                "smiteshp/nvim-navic",
                "muniftanjim/nui.nvim"
            },
            opts = { lsp = { auto_attach = true } }
        }
    },
  },
  {
    "tpope/vim-fugitive", lazy = false,
  },
  {
    "ThePrimeagen/harpoon",
  },
  {
    "mbbill/undotree", lazy = false,
  },
  -- {
  --   "nvim-neotest/neotest"
  -- },
  -- {
  --   "nvim-neotest/neotest-python"
  -- },
  {
    "akretion/vim-odoo-snippets"
  },

  {
    "nvim-tree/nvim-tree.lua",
     opts = {
       -- Enable Netrw to make the 'gx' shortcut work
       disable_netrw = false,
       hijack_netrw = false,
    }
  },
  {
    "prichrd/netrw.nvim", lazy = false
    -- opts = function()
    --   require'netrw'.setup {}
    -- end
  },
--  { seems telescope oldfiles <leader>fo does the same trick
--    "smartpde/telescope-recent-files"
--  },
  -- {
  --  "magicmonty/sonicpi.nvim", lazy = false,
  -- },
  -- {
  --  "folke/neodev.nvim",
  -- },
  {
    "kdheepak/lazygit.nvim", lazy = false,
  },
  -- {
  --   "SmiteshP/nvim-navbuddy", lazy = false,
  -- },
  -- {
  --   "neovim/nvim-lspconfig",
  --   dependencies = {
  --       {
  --           "smiteshp/nvim-navbuddy",
  --           dependencies = {
  --               "smiteshp/nvim-navic",
  --               "muniftanjim/nui.nvim"
  --           },
  --           opts = { lsp = { auto_attach = true } }
  --       }
  --   },
  -- },
  {
    "phaazon/hop.nvim", lazy = false,
    opts = function()
      require'hop'.setup {}
    end
  },

-- TODO look at 'christoomey/vim-tmux-navigator'
-- TODO look a debugger via https://github.com/jay-babu/mason-nvim-dap.nvim

  --{
   -- "simrat39/symbols-outline.nvim",
   -- opts = function ()
   --   require("symbols-outline").setup()
   -- end
  --},
-- disabled because strange Python3 errors while the Python provider is OK
-- see https://github.com/NvChad/NvChad/issues/1417#issuecomment-1203490842
-- and https://github.com/SirVer/ultisnips/issues/1290
-- {
--   "SirVer/ultisnips", lazy = false
-- },
-- {
--    "akretion/vim-odoo-snippets", lazy = false,
--  },
  --
  --  I uninstalled Octo as I'm really not sure it will make me win any time
  -- {
  --   'pwntester/octo.nvim', lazy = false,
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --     'nvim-telescope/telescope.nvim',
  --     'nvim-tree/nvim-web-devicons',
  --   },
  -- opts = function ()
  --   require"octo".setup()
  -- end
  -- }
}
return plugins
