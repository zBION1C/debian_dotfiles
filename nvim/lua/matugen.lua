 local M = {}

 function M.setup()
   require('base16-colorscheme').setup {
     -- Background tones
     base00 = '#131316', -- Default Background
     base01 = '#1f1f23', -- Lighter Background (status bars)
     base02 = '#292a2d', -- Selection Background
     base03 = '#8f909a', -- Comments, Invisibles
     -- Foreground tones
     base04 = '#c5c6d0', -- Dark Foreground (status bars)
     base05 = '#e4e2e6', -- Default Foreground
     base06 = '#e4e2e6', -- Light Foreground
     base07 = '#e4e2e6', -- Lightest Foreground
     -- Accent colors
     base08 = '#ffb4ab', -- Variables, XML Tags, Errors
     base09 = '#e1bbdc', -- Integers, Constants
     base0A = '#c0c6dd', -- Classes, Search Background
     base0B = '#b2c5ff', -- Strings, Diff Inserted
     base0C = '#e1bbdc', -- Regex, Escape Chars
     base0D = '#b2c5ff', -- Functions, Methods
     base0E = '#c0c6dd', -- Keywords, Storage
     base0F = '#93000a', -- Deprecated, Embedded Tags
   }
 end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
