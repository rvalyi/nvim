neotest = require("neotest")
neotest.setup({
  adapters = {
    require("neotest-python")({
      dap = { justMyCode = false },
    }),
  },
})

-- seems it will trigger a long analysis and won't work with Odoo
--vim.keymap.set("n", "<leader>tt", function() neotest.run.run(vim.fn.expand("%")) end)
