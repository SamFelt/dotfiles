set autoindent      "Match indentation of the previous line
set ignorecase      "Ignore case in text search
set magic           "Allows pattern matching with special characters
set showmode        "Status bar will tell you when you're in insert mode
set expandtab       "Turn tabs into spaces
set tabstop=8       "Some stuff to do with making tabs work correctly
set shiftwidth=4
set softtabstop=4
set smarttab
set hlsearch        "Highlight search matches
set incsearch       "Highlight matches while typing search string
set cspc=3          "cscope plugin settings
set csverb
set cst
set backspace=indent,eol,start "Makes backspace work correctly
set nocompatible
set smartindent
set showcmd
set ruler
"color default       "other good color options: desert, zellner, default, slate

syntax enable        "Turn on syntax highlighting
set background=dark

set laststatus=2
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "Percentage through file

set nowrap
"set colorcolumn=81
set textwidth=79
set formatoptions+=t
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set path+=**
set wildmenu
set number
set relativenumber
function ToggleNumbersOn()
    set relativenumber!
    set number
endfunction
function ToggleRelativeOn()
    set number
    set relativenumber
endfunction
autocmd FocusLost * call ToggleNumbersOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleNumbersOn()
autocmd InsertLeave * call ToggleRelativeOn()

let g:vim_markdown_folding_style_pythonic = 1

let mapleader = "-"            
inoremap jk <esc>|                              "Esacpe
noremap <leader>s <esc>:update<CR>|             "Save if changes made
inoremap <c-d> <esc>ddi|                        "Delete Line and keep editing
inoremap <c-u> <esc>viwUi|                      "Capitiilze word
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel| "Wrap word in quotes
noremap <leader>cl 0v$"*y0|                     "copy line to global buffer
noremap <leader>v :set paste<cr>"*p<esc>:set nopaste<cr>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

com! FormatJSON %!/usr/bin/python -m json.tool

set spelllang=en_us
cnoremap ss set spell<cr>
cnoremap ns set nospell<cr>

set modelines=0
set nomodeline
