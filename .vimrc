set encoding=utf8
nnoremap R <Esc> " Disable replace mode
call pathogen#infect()
au BufEnter * nnoremap R R " Reenable it after entering the buffer
filetype on
filetype indent on
filetype plugin on
syntax on
" paste is fucking up supertab plugin
" set paste
set number
set nowrap
set smartindent
set autoindent
" set tabstop=2
set shiftwidth=2
set softtabstop=2
set switchbuf=usetab
set noexpandtab
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
" set nobackup
" set nowritebackup
set backupcopy=yes
set laststatus=2
set mouse=a
set noshowmode

autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
let g:jsx_ext_required = 0

set list listchars=tab:»·,trail:·,nbsp:·
let g:html_indent_tags = 'li\|p'
set nojoinspaces

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
noremap <leader>r :CommandTFlush<CR>
autocmd BufWritePre * :%s/\s\+$//e
nnoremap <C-o> :bnext<CR>
nnoremap <C-p> :bprev<CR>
nnoremap <leader>ri :RunInInteractiveShell<space>

colorscheme nord

set wildignore+=tmp,*.log,*.sql,*.cache,node_modules,build

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

let NERDTreeMapActivateNode='<right>'
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden = 1
let g:NERDTreeDirArrows = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', '\.git']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

set showtabline=2

set signcolumn=yes
set splitbelow
set splitright

let g:ackprg = 'ag --nogroup --nocolor --column'
