sy on

" vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'Shougo/neocomplcache.vim'

filetype plugin indent on

" sets
set t_Co=256
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab
set number
set autoindent
set pastetoggle=<F2>
set backspace=indent,eol,start
set hlsearch
set cursorline
set splitright
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set nofoldenable
set list listchars=tab:\ \ ,trail:·
set complete-=i
set laststatus=2
set ttimeoutlen=50

colors wombat256mod

nmap ; :NERDTreeToggle<CR>
nnoremap ? :CtrlPMixed<CR>
nnoremap } :wincmd l<CR>
nnoremap { :wincmd h<CR>
nmap - :bd<CR>
nmap . :bn<CR>
nmap , :bp<CR>

" neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

autocmd BufNewFile,BufRead *.njs set filetype=js
autocmd FileType python set foldmethod=indent
autocmd FileType nerdtree cnoreabbrev <buffer> bd <nop>

