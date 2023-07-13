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
    ["<leader>gg"] = { "<cmd> LazyGit<CR>", "LazyGit" },
    ["<leader>tt"] = {
      function()
        local cmd = ':!bash -c "docker-compose -f ~/DEV/odoo14/dev.docker-compose.yml --env-file ~/DEV/odoo14/.env run odoo pytest --odoo-database=db --disable-warnings /odoo/' .. vim.fn.expand('%') .. '"'
        vim.cmd(cmd)
      end,
      "run Pytest"
    },

    -- ThePrimeagen hacks:
    ["<leader>y"] = {"\"+y", "Yank Outside"},

    ["<leader>a"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "Add File to Harpoon"
    },
    ["<A-e>"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "Toogle Harpoon Quick Menu"
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
