sy on
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
set noshowmode
set ttimeoutlen=50

colors wombat256mod

nmap ; :NERDTreeToggle<CR>
nnoremap <Leader>? :CtrlPBuffer<CR>
nnoremap ? :CtrlPMixed<CR>
nnoremap } :wincmd l<CR>
nnoremap { :wincmd h<CR>
nmap . :bn<CR>
nmap , :bp<CR>
nmap <Leader>- :bd<CR>
nmap <Leader> :TagbarToggle<CR>

autocmd BufNewFile,BufRead *.njs set filetype=js
autocmd FileType python set foldmethod=indent


" vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline-fonts'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'majutsushi/tagbar'

filetype plugin indent on

" NERDTree
autocmd FileType nerdtree cnoreabbrev <buffer> bd <nop>

" neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  "return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

