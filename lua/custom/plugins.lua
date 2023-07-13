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
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "tpope/vim-fugitive",
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
--  { seems telescope oldfiles <leader>fo does the same trick
--    "smartpde/telescope-recent-files"
--  },
  {
    "kdheepak/lazygit.nvim", lazy = false,
  },
}
return plugins
