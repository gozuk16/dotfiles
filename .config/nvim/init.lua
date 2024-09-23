-- lazy.nvim
require(".lazy")

-- yankをクリップボードへ入れる
vim.opt.clipboard:append{'unnamedplus'}

-- 行番号表示
vim.opt.number = true

-- color scheme
vim.o.background = "dark"
--vim.cmd.colorscheme "everforest"
--vim.cmd.colorscheme "tender"
vim.cmd.colorscheme "onedark"
--vim.cmd.colorscheme "nord"
--vim.cmd.colorscheme "catppuccin"

-- 背景色を透過
vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')

-- nvim-cmp
vim.opt.completeopt = { "menuone", "noselect", "noinsert", "preview" }

-- keymap
require("keymaps")
