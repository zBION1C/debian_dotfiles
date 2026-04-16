return {
	"folke/which-key.nvim",
	dependencies = {
		"nvim-mini/mini.icons",
		"nvim-tree/nvim-web-devicons",
	},
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")
		local builtin = require("telescope.builtin")
		local icons = require("mini.icons")

		wk.add({
			-- Files bindings
			{ "<leader>f", group = "Files" },
			{ "<leader>ff", builtin.find_files, desc = "Find files", mode = "n" },
			{ "<leader>fg", builtin.live_grep, desc = "Grep files", mode = "n" },
			{ "<leader>fe", ":Neotree filesystem reveal left<CR>", desc = "Open file browser", mode = "n" },
			{ "<leader>fb", ":Telescope buffers<cr>", desc = "Open buffer picker", mode = "n" },

			-- Code bindings
			{ "<leader>c", group = "Code" },
			{ "<leader>ch", vim.lsp.buf.hover, desc = "Hover code", mode = "n" },
			{ "<leader>cd", vim.lsp.buf.definition, desc = "Jump to definition", mode = "n" },
			{ "<leader>ca", vim.lsp.buf.code_action, desc = "Code actions", mode = "n" },
			{ "<leader>cf", vim.lsp.buf.format, desc = "Code format", mode = "n" },
			{ "<leader>cx", vim.lsp.buf.references, desc = "Cross references", mode = "n" },

			-- Textobjects bindings
			{ "a", group = "Around textobject", mode = { "o", "x" } },
			{ "i", group = "Inside textobject", mode = { "o", "x" } },
			{ "af", desc = "Function (outer)", mode = { "o", "x" }, function ()
				require("nvim-treesitter-textobjects.select").select_textobject("@function.outer", "textobjects")
			end },
			{ "if", desc = "Function (innter)", mode = { "o", "x" }, function ()
				require("nvim-treesitter-textobjects.select").select_textobject("@function.inner", "textobjects")
			end },
			{ "ac", desc = "Class (outer)", mode = { "o", "x" }, function ()
				require("nvim-treesitter-textobjects.select").select_textobject("@class.outer", "textobjects")
			end },
			{ "ic", desc = "Class (inner)", mode = { "o", "x" }, function ()
				require("nvim-treesitter-textobjects.select").select_textobject("@class.inner", "textobjects")
			end },
			{ "as", desc = "Conditional statement (outer)", mode = { "o", "x" }, function ()
				require("nvim-treesitter-textobjects.select").select_textobject("@conditional.outer", "textobjects")
			end },
            { "is", desc = "Conditional statement (inner)", mode = { "o", "x" }, function ()
				require("nvim-treesitter-textobjects.select").select_textobject("@conditional.inner", "textobjects")
			end },

      -- Slidev bindings
      {"<leader>sp", desc = "Slidev Preview", mode = {"n"}, function()
        require("slidev").preview()
      end },

			-- Incremental selection bindings
			{ "<leader>s", group = "Incremental selection" },
			{ "<leader>ss", desc = "Init selection" },
			{ "<leader>si", desc = "Increment selection" },
			{ "<leader>sd", desc = "Decrememt selection" },
		})
	end,
}
