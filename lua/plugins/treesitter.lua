return {
	"nvim-treesitter/nvim-treesitter", 
	"nvim-treesitter/playground",
	opts = {
	build = ":TSUpdate",
	    config = function () 
      	local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end	
	}
}
