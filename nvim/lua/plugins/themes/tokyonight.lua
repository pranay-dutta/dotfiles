return {
  "folke/tokyonight.nvim",
  lazy = false,
  opts = {},
  config = function()
    require("tokyonight").setup({
      style = "storm",
      transparent = true, -- Disable background color
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        sidebars = "transparent", -- Make sidebars transparent
        floats = "transparent",  -- Make floating windows transparent
      },
    })
  end,
}
