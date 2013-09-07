sy on
execute pathogen#infect()
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

nmap ; :CtrlPBuffer<CR>
nmap = :CtrlPMixed<CR>
nmap \ :NERDTreeToggle<CR>
nmap ] <C-w><A-Right>
nmap [ <C-w><A-Left>
nmap - :bd<CR>
nmap . :bn<CR>
nmap , :bp<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

au BufNewFile,BufRead *.njs set filetype=js
autocmd FileType python set foldmethod=indent
autocmd FileType nerdtree cnoreabbrev <buffer> bd <nop>
