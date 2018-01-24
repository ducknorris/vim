set encoding=utf8
nnoremap R <Esc> " Disable replace mode
call pathogen#infect()
au BufEnter * nnoremap R R " Reenable it after entering the buffer
filetype on
filetype indent on
filetype plugin on
syntax on
set paste
set number
set wrap
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set switchbuf=usetab
set expandtab
set colorcolumn=90
set hidden
set history=1000
set hlsearch
set showmatch
set ruler
set autowrite
set incsearch
set noswapfile
set backspace=indent,eol,start
set backspace=2
set nobackup
set nowritebackup
set laststatus=2

autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json

set list listchars=tab:»·,trail:·,nbsp:·

set nojoinspaces

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
noremap <leader>r :CommandTFlush<CR>
autocmd BufWritePre * :%s/\s\+$//e
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
nnoremap <leader>ri :RunInInteractiveShell<space>

colorscheme afterglow

set wildignore+=tmp,*.log,*.sql,*.cache

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

let NERDTreeMapActivateNode='<right>'
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=0
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', '\.git']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1

set signcolumn=yes
set splitbelow
set splitright
