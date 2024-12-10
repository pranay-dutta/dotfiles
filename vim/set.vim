" general settings
echo "set loaded succcessfully"
set number                              " show line numbers
set relativenumber                      " show relative line numbers

set tabstop=2                           " set tab width to 2 spaces
set shiftwidth=2                        " set indentation width to 2 spaces
set softtabstop=2                       " set soft tab stop to 2 spaces
set expandtab                           " convert tabs to spaces

set mouse=a                             " enable mouse support

set smartindent                         " enable smart indentation for c-like languages
set autoindent                          " enable automatic indentation

set noswapfile                          " disable swap file creation
set nobackup                            " disable backup file creation
set undofile                            " enable undo files
" set undodir=~/.vim/undodir            " set custom undo directory (uncomment to use)

set nohlsearch                          " disable search result highlighting
set incsearch                           " enable incremental search

set termguicolors                       " enable true color support

set scrolloff=8                         " keeps 8 lines of context while scrolling
set signcolumn=yes                      " always show the sign column

set isfname+=@-@                        " include '@-@' in the list of filename characters

set updatetime=50                       " reduce cursorhold delay
set nowrap                              " disable line wrapping

set autochdir                           " change working directory to the current file
" set colorcolumn=80                    " highlight column 80
colorscheme slate                       " set colorscheme

highlight Normal guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
highlight VertSplit guibg=NONE ctermbg=NONE
