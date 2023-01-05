source $VIMRUNTIME/defaults.vim 

syntax on

set noerrorbells
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set number
"set rnu  " relative numbers, nornu by default
set nolist wrap linebreak breakat&vim   " Line breaks on whole words
set nowrap          " turn off wrapping by default. Enable manually when needed.
set smartindent
set ic                                      " ignore case in searches
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch
set colorcolumn=90
highlight ColorColumn ctermbg=0 guibg=lightgrey
set ruler
set history=50
set wildmenu
set ttimeout
set ttimeoutlen=500
set scrolloff=1
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c

"set acd   " auto cd to file folder
set path+=**

if has('mouse')
  set mouse=a
endif

if has('termguicolors')
	set termguicolors
endif

" If running gui vs from git bash then set font
" Running from terminal inherits that font
if has('gui_running')
  if has('win32')
    set guifont=Consolas:h11        " For Windows
  else
    set guifont=Menlo\ Regular:h13  " For MacVim
  endif
endif

" Airline setup
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#checks = []  " Doesn't matter if disabled
" Simple section z with "L:<linenum> C:<columnnum>
au User AirlineAfterInit :let g:airline_section_z = airline#section#create(['L:%l C:%v'])


" mappings
source ~/.vim/mappings.vim

"----------------------------------------------------------------------------------------
" vim-plug README.md is at https://github.com/junegunn/vim-plug/blob/master/README.md
" WARNING: Before adding any plugin insure there are no binary files included.
" Must be text only for use at work.
"----------------------------------------------------------------------------------------
call plug#begin()
  " Dark: colorschemes
  Plug 'sainnhe/everforest'
  Plug 'sonph/onehalf'
  Plug 'danilo-augusto/vim-afterglow'
  Plug 'zacanger/angr.vim'
  Plug 'scottymoon/vim-twilight'
  " Gruv: colorscheme variations
  Plug 'morhetz/gruvbox'
  Plug 'sheldonldev/vim-gruvdark'
  Plug 'habamax/vim-gruvbit'

  " Light: colorschemes
  Plug 'therubymug/vim-pyte'
  Plug 'vim-scripts/newspaper.vim'
  Plug 'AlessandroYorba/Breve'

  " Extentions:
  Plug 'vim-airline/vim-airline'  " Need better config
  Plug 'preservim/nerdtree'
  
  " Completion:
  " Plug 'vim-scripts/AutoComplPop'
  "
  " ? ALE ?   " Can this work with existing compilers as LSPs
  "   Needs research
  "
  " mucomplete -- youtube "Vim's built in completion" by Gavin Freeborn
  "   Needs research
 
  "Plug ''  " Placeholder

call plug#end()



source ~/.vim/mycolorscheme.vim
