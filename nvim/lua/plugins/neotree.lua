return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },

  config = function()
    local open = false
    local file_dir = vim.fn.expand('%:p:h') -- Get current file's directory

    --Goes one directory up
    vim.keymap.set('n', '<leader>uu', function()
      local result = file_dir:match("(.+)\\[^\\]+$")
      vim.cmd('Neotree ' .. result)
    end)

    --Toggles Neotree pane
    vim.keymap.set('n', '<leader>f', function()
      if not open then
        vim.cmd('Neotree ' .. file_dir) -- Pass directory to Neo-tree
      else
        vim.cmd('Neotree close')
      end
      open = not open --if open [set it false] if !open [set it true]
    end)

  end,
}
