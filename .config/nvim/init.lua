-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
-- ランタイムパスの先頭にプラグインのパスを追加
vim.opt.rtp:prepend(lazypath)
require('plugins')

-- yankをクリップボードへ入れる
vim.opt.clipboard:append{'unnamedplus'}

-- 行番号表示
vim.opt.number = true

-- color scheme
--vim.cmd('colorscheme tokyonight')
vim.o.background = "dark"
vim.cmd.colorscheme "everforest"

-- 背景色を透過
vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
