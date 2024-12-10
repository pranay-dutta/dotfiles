function ColorMyPencils(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)

    -- Ensure transparency for all relevant highlight groups
    local groups = {
        "Normal",
        "NormalFloat",
        "WinSeparator",
        "SignColumn",
        "EndOfBuffer",
        "StatusLine",
        "TabLine",
        "TabLineFill",
        "TabLineSel",
        "CursorLineNr",
        "LineNr",
    }

    for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
end

return {
    require "plugins.allthemes",
    {
        "folke/tokyonight.nvim",
        config = function()

          -- Apply ColorMyPencils after loading the colorscheme
          vim.api.nvim_create_autocmd("ColorScheme", {
            callback = function()
              ColorMyPencils()
            end,
          })

          -- Set colorscheme initially
          ColorMyPencils("github_dark_dimmed")
        end,
    },
}

