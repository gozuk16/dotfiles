require("tokyonight").setup({
  style = "night",
  transparent = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true }
  }
})

require("everforest").setup({
      background = "hard",
      version = false,
      lazy = false,
      priority = 1000,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.everforest_enable_italic = true
      end
})
