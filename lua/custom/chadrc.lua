---@type ChadrcConfig 
 local M = {}
 M.ui = {theme = 'nightowl'}
 M.plugins = "custom.plugins"
 M.mappings = require "custom.mappings"

  local enable_providers = {
    "python3_provider",
    "node_provider",
    -- and so on
  }

  for _, plugin in pairs(enable_providers) do
    vim.g["loaded_" .. plugin] = nil
    vim.cmd("runtime " .. plugin)
  end

  -- Odoo XML guidelines:
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "xml",
    command = "setlocal shiftwidth=4 tabstop=4"
  })

  -- Enable netrw again, see https://github.com/NvChad/NvChad/issues/1949
  M.lazy_nvim = {
    performance = {
      rtp = {
        disabled_plugins = vim.tbl_filter(function(name)
          return string.sub(name, 1, 5) ~= "netrw"
        end, require("plugins.configs.lazy_nvim").performance.rtp.disabled_plugins),
      },
    },
  }

 return M
