return {
	"folke/trouble.nvim",
	opts = {
		modes = {
			preview_float = {
				mode = "diagnostics",
				preview = {
					type = "float",
					relative = "editor",
					border = "rounded",
					title = "Preview",
					title_pos = "center",
					position = { 0, -2 },
					size = { width = 0.3, height = 0.3 },
					zindex = 200,
				},
			},
		},
	},
	cmd = "Trouble",
	keys = {
		{
			"<leader>xx",
			"<cmd>Trouble preview_float toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
        {
            "<leader>xt",
            "<cmd>Trouble todo toggle<cr>",
            desc = "Diagnostics (TODO)",
        },
	},
}
