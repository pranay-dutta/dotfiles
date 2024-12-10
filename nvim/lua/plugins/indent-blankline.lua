return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = function()
    -- Manually define IblScope to prevent the error
    vim.api.nvim_set_hl(0, 'IblScope', { fg = '#a9b1d6', bg = 'none' })

    return {
      indent = {
        char = '▏',
      },
      scope = {
        show_start = false,
        show_end = false,
        show_exact_scope = false,
      },
      exclude = {
        filetypes = {
          'help',
          'startify',
          'dashboard',
          'packer',
          'neogitstatus',
          'NvimTree',
          'Trouble',
        },
      },
    }
  end,
}
