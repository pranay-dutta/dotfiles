" set leader key
echo "keymaps loaded successfully"
let mapleader=" "

" key mappings
" delete options
nnoremap <leader>d "_d
vnoremap <leader>d "_d
xnoremap <leader>p "_dp

" yanking options
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" visual mode line movement
xnoremap J :m '>+1<CR>gv=gv
xnoremap K :m '<-2<CR>gv=gv

nnoremap q <nop>

" line concatenation
nnoremap <c-d> <c-d>zz
nnoremap <c-u> <c-u>zz

" restart lsp (vim-compatible plugin-dependent)
nnoremap <leader>zig :lsprestart<cr>

" open a new tmux window
nnoremap <c-f> :!tmux neww tmux-sessionizer<cr>

" format code usin  ls
nnoremap <leader>f :lua vim.lsp.buf.formatting_sync()<cr>

" quickfix navigation
nnoremap <c-k> :cnext<cr>zz
nnoremap <c-j> :cprev<cr>zz
nnoremap <leader>k :lnext<cr>zz
nnoremap <leader>j :lprev<cr>zz

" replace word under cursor
nnoremap <leader>s :%s/\<<c-r><c-w>\>/<c-r><c-w>/gi<left><left><left>

" reload configuration
nnoremap <leader><leader> :source $myvimrc<cr>

" cellularautomation (plugin required)
nnoremap <leader>mr :cellularautomaton make_it_rain<cr>

" delete next word
inoremap <c-delete> <c-o>dw

" open netrw
nnoremap <leader>er :Ex<cr>

" execute shell command
nnoremap <leader>t :!

" make file executable
nnoremap <leader>x :!chmod +x %<cr>


