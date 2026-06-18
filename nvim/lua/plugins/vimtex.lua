return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "zathura"
    vim.opt_local.conceallevel = 0
    vim.g.vimtex_syntax_enabled = 1
    vim.g.vimtex_mappings_enabled = 1
    vim.g.vimtex_syntax_conceal_disable = 0
    vim.g.vimtex_view_automatic = 1 -- we’ll control it manually
    vim.g.vimtex_quickfix_mode = 2
    vim.g.vimtex_quickfix_open_on_warning = 0
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_compiler_latexmk = {
      out_dir = "build",
      options = {
        "-pdflua",
        "-interaction=nonstopmode",
        "-synctex=1",
        "-file-line-error",
      },
      engine = "lualatex",
    }
  end,
}
