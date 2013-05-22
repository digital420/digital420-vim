execute pathogen#infect()
setlocal spell spelllang=en
set nonumber
set hlsearch
set incsearch
set ignorecase
set smartcase
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab
set smartindent
set tw=79
set colorcolumn=80
set history=700
set undolevels=700
set laststatus=2
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\

set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

map <Leader>g :call RopeGotoDefinition()<CR>
map <Leader>b Oimport; ipdb.set_trace() # BREAKPOINT<C-c>

let g:pymode_syntax_builtin_funcs = 0
let g:pymode_syntax_builtin_ibjs = 0
let g:pymode_syntax =1
let g:pymode_breakpoint = 0
let g:pymode_rope_extended_complete = 1
let g:pymode_rope_goto_def_newin = "vnew"
let ropevim_enable_shortcuts = 1
let g:ctrlp_max_height = 30
let g:Powerline_symbols = 'fancy'

highlight ColorColumn ctermbg=233
syntax on
filetype on
filetype plugin indent on


" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Mouse and Backspace
set mouse=a
set bs=2

" Rebind <Leader> key
let mapleader = ','

" Bind nohl
" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Quick Save and Quick Quit
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>
noremap <Leader>e :quit<CR>
noremap <Leader>E :qa!

" Control keys and Tabs
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
map <Leader>t <esc>:tabnew<CR>

" Map Sort Function
vnoremap <Leader>s :sort<CR>

" Easier Block Shifting
vnoremap < <gv
vnoremap > >gv

" Show Trailing White Space
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave *match ExtraWhiteSpace /\s\+$/
set t_Co=256
colorscheme impactG 

function! OmniPopup(action)
    if pumvisible()
        if aLaction == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C=P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

set nofoldenable
