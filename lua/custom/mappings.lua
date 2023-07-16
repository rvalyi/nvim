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
    ["<leader>m"] = { "<cmd> HopWord<CR>", "HopWord" },

    ["<leader>nn"] = { "<cmd> Navbuddy<CR>", "Navbuddy" },
 
    ["<leader>gg"] = { "<cmd> LazyGit<CR>", "LazyGit" },
    ["<leader>tt"] = {
      function()
        local file_path = vim.fn.expand('%:p')
        local last_odoo_index = file_path:find("/odoo/")
        local container_path = file_path:sub(last_odoo_index + 1)
        local cmd = ':!bash -c "docker-compose -f ~/DEV/odoo14/dev.docker-compose.yml --env-file ~/DEV/odoo14/.env run odoo pytest --odoo-database=db --disable-warnings ' .. container_path .. '"'
        vim.cmd(cmd)
      end,
      "run Odoo Pytest"
    },

    -- ThePrimeagen hacks:
    ["<leader>y"] = {"\"+y", "Yank Outside"},

    ["<leader>a"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "Harpon - Add File"
    },
    ["<A-e>"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "Harpoon Toggle Quick Menu"
    },
-- vim.keymap.set("n", "<A-q>", function() ui.nav_file(1) end)
-- vim.keymap.set("n", "<A-w>", function() ui.nav_file(2) end)
-- vim.keymap.set("n", "<A-a>", function() ui.nav_file(3) end)
-- vim.keymap.set("n", "<A-s>", function() ui.nav_file(3) end)
  }

  -- i = {
  --    ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  --   -- ...
  -- }
}

return M
