return {
	"tpope/vim-fugitive",
	config = true,
  	keys = { -- load the plugin only when using it's keybinding:
    	{ "<leader>g", "<cmd>lua require('vim-fugitive').toggle()<cr>" },
	}
}
