" ------------------------------------------------------------
"  File:        .vimrc
"  Author:      Eddie Williamson
"  Description: My custom config file for vim
" ------------------------------------------------------------


" Grab the defaults and then override if I want to
source $VIMRUNTIME/defaults.vim

syntax on


set noerrorbells
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set number
"set rnu  " relative numbers, nornu by default
set cursorline
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
" Sensible default if colorscheme doesn't set this
highlight ColorColumn ctermbg=0 guibg=lightgrey
set ruler
set history=50
set wildmenu
set wildignore=tags*
set ttimeout
set ttimeoutlen=200
set updatetime=300
set scrolloff=1
set complete+=kspell
set spell spelllang=en_us   " Setup spelling but then turn off.
set nospell                 " Completion now works on spelling also
set completeopt=menuone,longest,noinsert,popup
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#completion_delay = 1
set shortmess+=c
set clipboard=unnamed
set nowrapscan

" Setup folding
set foldenable
set foldmethod=marker
set foldcolumn=1

"set acd   " auto cd to file folder
set path+=**

let g:loaded_matchit = 1

"let g:snipMateExpandTrigger="<TAB>"
"let g:snipMateExpandTrigger="<CR>" " Doesn't work. Still uses <TAB>

" Remove trailing whitespace from Python files
"autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufReadPost *.md :set wrap
"autocmd BufReadPost *.md :colorscheme onehalfdark

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


"= " mappings
"= let mapleader = " "
"= " Turn off highlight
"= map <Leader>i :nohls<CR>
"= " EXPERIMENTAL
"= map <Leader>* I* [ ] a<Esc>
"=
"= inoremap <expr> <Down>  pumvisible() ? "<C-n>" : "<Down>"
"= inoremap <expr> <Up>    pumvisible() ? "<C-p>" : "<Up>"
"= inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
"= inoremap <expr> <CR>    pumvisible() ? "<C-y>" : "<CR>"
"= inoremap <expr> <Left>  pumvisible() ? "<C-e>" : "<Left>"

" mappings
source ~/.vim/mappings.vim


" For identifying word type for syntax highlight changes
fun! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun
map <Leader>s :call SynGroup()<CR>


"----------------------------------------------------------------------------------------
" vim-plug README.md is at https://github.com/junegunn/vim-plug/blob/master/README.md
" WARNING: Before adding any plugin insure there are no binary files included.
" Must be text only for use at work.
"----------------------------------------------------------------------------------------
call plug#begin()
   " LightColorSchemes:
  Plug 'therubymug/vim-pyte'
  Plug 'vim-scripts/newspaper.vim'
  Plug 'AlessandroYorba/Breve'

  " DarkColorSchemes:
  Plug 'sainnhe/everforest' "has airline
  Plug 'zacanger/angr.vim' "has airline
  Plug 'drewtempelmeyer/palenight.vim' "has airline
  "   Manual: sorcer.vim downloaded into .vim/colors
  Plug 'preservim/vim-colors-pencil' " Specific for markdown files has airline
  "   Gruvbox colorscheme variations
  Plug 'morhetz/gruvbox' "has airline
  Plug 'sheldonldev/vim-gruvdark'
  Plug 'habamax/vim-gruvbit'

 " Extentions:
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  "Plug 'itchyny/lightline.vim'
  Plug 'preservim/nerdtree'
  Plug 'andymass/vim-matchup'
  " Plug 'vim-scripts/snipMate'
  " Plug 'honza/vim-snippets'

  "   COMPLETION: options, WIP
  Plug 'lifepillar/vim-mucomplete'
  " OmniSharp for c# completion
  " clang complete also.
  " Look into omnicomplete and omnifunc also.
  " C-n, C-p next, prev
  " C-h, C-j try completion in different way (other in chain)
  " mucomplete -- youtube "Vim's built in completion" by Gavin Freeborn
  "
  " Plug 'vim-scripts/AutoComplPop'
  " ? ALE ?   " Can this work with existing compilers as LSPs
  "   Needs research

  Plug 'lifepillar/vim-colortemplate' "needs study but might be good
call plug#end()



source ~/.vim/mycolorscheme.vim
