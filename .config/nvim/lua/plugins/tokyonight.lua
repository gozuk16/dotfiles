require("tokyonight").setup({
  style = "night",
  transparent = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true }
  }
})

-- 背景色を透過
vim.cmd('colorscheme tokyonight')
vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
