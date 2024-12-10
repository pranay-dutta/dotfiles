-- Set leader key
vim.g.mapleader = ' '
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
local opts = { noremap = true, silent = true }

--Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

--save & exit file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)
vim.keymap.set('n', '<C-c>', '<cmd> q <CR>', opts)

--Delete options
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d') --puts in void register
vim.keymap.set('x', '<leader>p', [["_dP]]) --in visual mode {selected word gets deleted & new word gets pasted from + register} }

--Yanking options
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]]) --normal yank +register
vim.keymap.set('n', '<leader>Y', [["+Y]]) --yanks the full line in +register

--Visual mode hack
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { silent = true }) --moves visual selcted line up
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { silent = true }) --moves visual seleted line down

-- Increase window height
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)

vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

--Navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

--Window management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)
vim.keymap.set('n', '<leader>h', '<C-w>s', opts)
vim.keymap.set('n', '<leader>cc', '<C-w>=', opts)
vim.keymap.set('n', '<leader>cx', ':close<CR>', opts)

--Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer

--Recording options disable
vim.keymap.set('n', 'Q', '<nop>') --q is used for recording {stops its deafault behaviour}

--Line concatenation
vim.keymap.set('n', 'J', 'mzJ`z') --when concatenation two lines cursor stays in same position doesn't go the end

-- Scroll in screen
vim.keymap.set('n', '<C-d>', '<C-d>zz') -- Scrolls down centers the cursor
vim.keymap.set('n', '<C-u>', '<C-u>zz') -- Scrolls up centers the cursor

--restart lsp - { language server protocol }
vim.keymap.set('n', '<leader>zig', '<cmd>LspRestart<cr>')

--Create tmux session in silent mode: make sure tmux is running
vim.keymap.set('n', '<C-f>', '<cmd>!tmux neww tmux-sessionizer<CR>')

--Code formating using LSP
--vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) -- Asks active LSP (if configured) to format the code in the current file.

--Don't know --something releated to quick fix :
--The quickfix window does not allow for running commands. Itâs only a viewer for the quickfix list
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')

-- This lets you navigate to the previous item in the location list and centers the cursor in the viewport
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

--Replace word under the cursor
vim.keymap.set('n', '<leader>sa', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--CellularAutomation make it rain packege
vim.keymap.set('n', '<leader>mr', '<cmd>CellularAutomaton make_it_rain<CR>')

--My remaps :-)
vim.keymap.set('i', '<C-delete>', '<C-o>dW', { silent = true }) --delete the next word {Ctrl + delete}

--Works like opening terminal
vim.keymap.set('n', '<leader>t', ':! ', { silent = false })

-- <leader>vwm starts a shared editing session where multiple people can collaboratively edit a file in real-time.
-- <leader>svwm stops the session, ending the collaborative editing.

--vim.keymap.set("n", "<leader>vwm", function()
--  require("vim-with-me").StartVimWithMe()
--end)
--vim.keymap.set("n", "<leader>svwm", function()
--   require("vim-with-me").StopVimWithMe()
--end)

--vim.keymap.set("n", "n", "nzzzv") -- Scrolls up centers the cursor
--vim.keymap.set("n", "N", "Nzzzv")
