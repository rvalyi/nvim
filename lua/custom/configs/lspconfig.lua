local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
  python = {analysis = {autoSearchPaths = false,diagnosticMode = 'openFilesOnly',useLibraryCodeForTypes = true,typeCheckingMode = 'off'}}
})


-- lspconfig.solargraph.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"ruby"}
-- })


vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
