return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		branc = "main",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter")
			config.setup({
				ensure_installed = { "lua", "python", "html", "c", "cpp", "markdown", "vimdoc", "query" },
				auto_install = true,
				highlight = {
					enable = true,
					use_languagetree = true,
				},
				indent = { enable = true },
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		branch = "main",
		init = function()
			vim.g.no_plugin_maps = true
		end,
		config = function()
			local textobjects = require("nvim-treesitter-textobjects")
			textobjects.setup({
				select = {
					enable = true,
					lookahead = true,
					selection_modes = {
						["@function.outer"] = "V",
						["@class.outer"] = "<c-v>",
					},
				},
			})
		end,
	},
}
