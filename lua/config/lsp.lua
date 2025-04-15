require("mason").setup {}
require("mason-lspconfig").setup {
    ensure_installed = { "harper_ls", "lua_ls", "ts_ls", "pyright" },
}

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {}
lspconfig["zls"].setup {
	config = {
    cmd = { 'zls' },
    on_new_config = function(new_config, new_root_dir)
      if vim.fn.filereadable(vim.fs.joinpath(new_root_dir, 'zls.json')) ~= 0 then
        new_config.cmd = { 'zls', '--config-path', 'zls.json' }
      end
    end,
    filetypes = { 'zig', 'zir' },
    root_dir = lspconfig.util.root_pattern('zls.json', 'build.zig', '.git'),
    single_file_support = true,
  },
}
lspconfig.pyright.setup {}
lspconfig.ts_ls.setup {}
lspconfig.harper_ls.setup {}
