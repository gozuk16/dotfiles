-- lazy.nvim
require(".lazy")

-- yankをクリップボードへ入れる
vim.opt.clipboard:append{'unnamedplus'}

-- 行番号表示
vim.opt.number = true

-- 背景色を透過
vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')

-- nvim-cmp
vim.opt.completeopt = { "menuone", "noselect", "noinsert", "preview" }

-- keymap
require("keymaps")

-- インデント
vim.o.tabstop = 4
vim.o.shiftwidth = 4
