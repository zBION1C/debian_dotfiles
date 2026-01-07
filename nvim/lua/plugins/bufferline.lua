return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
    config = function ()
        local bufferline = require("bufferline")
        bufferline.setup({
            options = {
                mode = "buffers",
                themable = true,
                numbers = "ordinal",
                diagnostics = "nvim_lsp",
                separator_style = "slope"
            }
        })
        vim.keymap.set("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", { desc = "Jump to tab 1" })
        vim.keymap.set("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", { desc = "Jump to tab 2" })
        vim.keymap.set("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", { desc = "Jump to tab 3" })
        vim.keymap.set("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", { desc = "Jump to tab 4" })
        vim.keymap.set("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", { desc = "Jump to tab 5" })
        vim.keymap.set("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>", { desc = "Jump to tab 6" })
        vim.keymap.set("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>", { desc = "Jump to tab 7" })
        vim.keymap.set("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>", { desc = "Jump to tab 8" })
        vim.keymap.set("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>", { desc = "Jump to tab 9" })
        vim.keymap.set("n", "<leader>0", "<cmd>BufferLineGoToBuffer 0<CR>", { desc = "Jump to tab 0" })

        vim.keymap.set("n", "<leader>l", "<cmd>BufferLineMoveNext<CR>", { desc = "Move to the next tab"})
        vim.keymap.set("n", "<leader>h", "<cmd>BufferLineMovePrev<CR>", { desc = "Move to the previous tab"})
    end
}
