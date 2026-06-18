-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Disable default mappings for vimtex
vim.g.vimtex_mappings_enabled = 0
vim.keymap.set("n", "<leader>tc", "<plug>(vimtex-compile)")
