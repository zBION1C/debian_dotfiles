vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.shiftwidth = 4 -- indentation width for `>>` and autoindent
vim.opt.tabstop = 4 -- width of a <Tab>
vim.opt.softtabstop = 4 -- number of spaces a tab counts for in insert mode

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 999

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.diagnostic.config({
    virtual_text = true,
    virtuale_lines = false,
})
