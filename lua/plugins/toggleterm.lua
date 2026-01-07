return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
            size = 20,
            open_mapping = [[<c-\>]],
            hide_numbers = true,
            shade_terminals = true,
            shading_factor = 2,
            direction = "float",
            close_on_exit = true,
            float_opts = {
                border = "curved",
                winblend = 0
            }
        })

        local Terminal = require("toggleterm.terminal").Terminal
        local lazygit = Terminal:new({
            cmd = "lazygit",
            direction = "float",
            hidden = true,
            close_on_exit = true,
        })

        vim.keymap.set("n", "<leader>gg", function ()
            lazygit:toggle()
        end, { desc = "Lazygit" })
	end,
}
