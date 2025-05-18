-- vim.lsp.config("*", {
--	capabilities = capabilities;
--})

require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { 'lua_ls', 'ts_ls', 'harper_ls', 'pyright' },
}


--local capabilities = require('blink.cmp').get_lsp_capabilities('config.capabilities');
local lspconfig = require('lspconfig')

-- Check if zls is installed (optional, for better error handling)
local zls_path = vim.fn.exepath('zls') -- Finds zls in $PATH
if zls_path == '' then
  vim.notify("zls not found in PATH! Please install it.", vim.log.levels.WARN)
  return
end

-- Manually configure zls
lspconfig.zls.setup({
  cmd = { "zls" }, -- Uses the system-installed zls
  on_attach = function(client, bufnr)
    -- Your LSP keybindings and attach logic
    local opts = { buffer = bufnr, silent = true }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  end,
  capabilities = require('blink.cmp').get_lsp_capabilities(),
  settings = {
    zls = {
      -- Your zls-specific settings (if any)
    }
  }
})
