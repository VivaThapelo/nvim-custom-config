return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins  },
    opts = {
	transparent = true,
	styles = {
		sidebars = 'transparent',
		float = 'transparent',
		}
	},
    config = function ()
	        require('tokyonight').setup({
			transparent = true,
				styles = {
		sidebars = 'transparent',
		float = 'transparent',
		}

         })
    	vim.cmd[[colorscheme tokyonight]]
    end
  },
}
