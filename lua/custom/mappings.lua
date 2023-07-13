local M = {}

-- In order to disable a default keymap, use
M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-a>"] = ""
--   }
}

-- Your custom mappings
M.abc = {
  n = {
--     ["<leader>tt"] = {':!bash -c "docker-compose -f ~/DEV/odoo14/dev.docker-compose.yml --env-file ~/DEV/odoo14/.env run odoo pytest --odoo-database=db --disable-warnings /odoo/external-src/' .. vim.api.nvim_buf_get_name(0) .. '"', "run Pytest"},
     ["<leader>tt"] = {
      function()
        local cmd = ':!bash -c "docker-compose -f ~/DEV/odoo14/dev.docker-compose.yml --env-file ~/DEV/odoo14/.env run odoo pytest --odoo-database=db --disable-warnings /odoo/' .. vim.fn.expand('%') .. '"'
        vim.cmd(cmd)
      end,
      "run Pytest"
    },

  }

  -- i = {
  --    ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  --   -- ...
  -- }
}

return M
