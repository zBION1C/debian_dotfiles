return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config("lua_ls", {
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
					workspace = { checkThirdParty = false },
				},
			},
		})

		vim.lsp.config("pyright", {
			capabilities = capabilities,
			settings = {
				python = {
					analysis = {
						typeCheckingMode = "basic",
						autoSearchPaths = true,
						diagnosticMode = "workspace",
						useLibraryCodeForTypes = true,
					},
				},
			},
		})

        vim.lsp.config("clangd", {
            capabilities = capabilities
        })
        
        vim.lsp.config("bashls", {
            capabilities = capabilities
        })

		vim.lsp.enable("lua_ls")
		vim.lsp.enable("pyright")
        vim.lsp.enable("texlab")
        vim.lsp.enable("clangd")
        vim.lsp.enable("bashls")
        vim.lsp.enable("ts_ls")
        vim.lsp.enable("cssls")
	end,
}
