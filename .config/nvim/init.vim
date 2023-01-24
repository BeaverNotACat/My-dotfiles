" Base settings

set nocompatible            " disable compatibility to old-time vi

set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search

set tabstop=4               " number of columns occupied by a tab 
set noexpandtab               " use tabs
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed

set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions

filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on

"set spell spelllang=en_us   " enable spell check (may need to download language package)
set noswapfile              " disable creating swap file
set autochdir

" Pluggins
call plug#begin('~/.vim/plugged')
    Plug 'sickill/vim-monokai'
    Plug 'tribela/vim-transparent'
    Plug 'gelguy/wilder.nvim'
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'mhinz/vim-startify'
    Plug 'luochen1990/rainbow'
    
    Plug 'scrooloose/nerdtree'

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'davidhalter/jedi-vim'
    Plug 'Raimondi/delimitMate'
    Plug 'rrethy/vim-hexokinase', {'do': 'make hexokinase'}
	Plug 'preservim/tagbar'

    Plug 'jdhao/better-escape.vim'
    Plug 'lyokha/vim-xkbswitch'

call plug#end()

" Customization
colorscheme monokai
syntax enable
let g:transparent_enabled = v:true

" Color brackets
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['Gold', 'Orchid', 'LightSkyBlue'],
\}

" Airline settings
let g:airline_powerline_fonts = 1  " Enable poweline fonts
let g:airline#extensions#keymap#enabled = 0  " Ignore current keymap
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"  " Custom cursor position
let g:Powerline_symbols='unicode'  " Unicode support

" Keyboad layout
let g:XkbSwitchEnabled = 1

let g:better_escape_interval = 150
let g:better_escape_shortcut = ['jj', 'оо']

" Keybindings
nmap <c-n> :Startify<cr>
nnoremap <C-p> :Files<Cr>

"Jedy layout
augroup PreviewOnBottom
    autocmd InsertEnter * set splitbelow
    autocmd InsertLeave * set splitbelow!
augroup END

" Startify settings
let g:startify_bookmarks = [
  \ { 'p': '~/Programs' },
  \ { 'v': '~/.config/nvim/init.vim' },
  \ { 'n': '~/Documents/notes.txt' },
  \ ]
let g:startify_lists = [
      \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ ]
