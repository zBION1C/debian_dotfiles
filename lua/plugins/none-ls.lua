return {
	"nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
                require("none-ls.formatting.ruff").with{ extra_args = { "--extend-select", "I" } },
                require("none-ls.formatting.ruff_format"),
				-- Lua
				null_ls.builtins.formatting.stylua,
				-- Python
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
				-- Javascript
				null_ls.builtins.formatting.prettier,
			},
		})
	end,
}
