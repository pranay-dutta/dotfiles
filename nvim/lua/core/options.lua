-- General setting 
vim.opt.nu = true                                   -- Show line numbers
vim.opt.relativenumber = true                       -- Show relative line numbers (distance from the current line)

vim.opt.tabstop = 2                                 -- Set tab width to 4 spaces
vim.opt.shiftwidth = 2                              -- Set indentation width to 4 spaces
vim.opt.softtabstop = 2                             -- Set soft tab stop to 4 spaces (how many spaces a tab feels like)
vim.opt.expandtab = true                            -- Convert tabs to spaces when indenting

vim.opt.mouse = "a"                                 -- Enable mouse support in all modes (normal, insert, etc.)

vim.opt.smartindent = true                          -- Enable smart indentation for C-like languages
vim.opt.autoindent = true                           -- Enable automatic indentation (indent based on previous line)

vim.opt.swapfile = false                             -- Disable swap file creation (no .swp files)
vim.opt.backup = false                              -- Disable backup file creation (no .bak or similar files)
vim.opt.undofile = true                             -- Enable undo files (persistent undo history across sessions)
--vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"  -- (Optional) Set a custom directory for undo files (uncomment to use)

vim.opt.hlsearch = false                            -- Disable search result highlighting after search is completed
vim.opt.incsearch = true                            -- Enable incremental search (shows results as you type the search query)

vim.opt.termguicolors = true                        -- Enable true color support (more vibrant colors in the terminal)

vim.opt.scrolloff = 8                               -- Keeps 8 lines of context visible above and below the cursor while scrolling

vim.opt.signcolumn = "yes"                          -- Always show the sign column (for displaying diagnostics, marks, etc.)

vim.opt.isfname:append("@-@")                        -- Include `@-@` in the list of characters considered part of a filename

vim.opt.updatetime = 50                             -- Set the time (in milliseconds) before triggering certain events like CursorHold
vim.opt.wrap = false

vim.cmd "colorscheme slate"
vim.opt.autochdir = true
--vim.opt.colorcolumn = "80"                          -- Highlight column 80 (common convention for line length in code)

--vim.cmd "syntax on"
--vim.cmd "highlight Normal guibg=dark guifg=white"
