syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set ic
set nowrap
set noeol
set noshowmode
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch
set splitbelow
set splitright
set laststatus=2

set term=xterm-256color
set t_Co=256

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neomake/neomake'

Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'

call plug#end()

colorscheme nord

let g:airline_powerline_fonts = 1

call neomake#configure#automake('rw')

command Pry :normal orequire 'pry'; binding.pry<Esc>
command PryHaml :normal o- require 'pry'; binding.pry<Esc>
command PryRspec :normal oit { require 'pry'; binding.pry }

" nerdtree settings
let g:NERDTreeShowHidden=1
nnoremap <C-t> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree

" KEY-MAPPING
nnoremap <C-Up> :m-2<CR>
nnoremap <C-Down> :m+<CR>
inoremap <C-Up> <Esc>:m-2<CR>
inoremap <C-Down> <Esc>:m+<CR>

" No trailing whitespace
autocmd BufWritePre * :s/\s\+$//e
