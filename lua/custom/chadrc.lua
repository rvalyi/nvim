---@type ChadrcConfig 
 local M = {}
 M.ui = {theme = 'nightowl'}
 M.plugins = "custom.plugins"
 M.mappings = require "custom.mappings"
-- vim.g.python3_host_prog = '/usr/bin/python'
-- vim.g.loaded_python3_provider = 1

    local enable_providers = {
      "python3_provider",
      "node_provider",
      -- and so on
    }
    
    for _, plugin in pairs(enable_providers) do
      vim.g["loaded_" .. plugin] = nil
      vim.cmd("runtime " .. plugin)
    end

 return M
