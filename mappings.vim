" mappings

let mapleader = " "

" Turn off highlight
map <Leader>i :nohls<CR>

" Turn colorcolumn on/off
nnoremap <Leader>cc   :set colorcolumn=90<cr>
nnoremap <Leader>ncc  :set colorcolumn-=90<cr>


inoremap <expr> <Down>  pumvisible() ? "<C-n>" : "<Down>"
inoremap <expr> <Up>    pumvisible() ? "<C-p>" : "<Up>"
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR>    pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr> <Left>  pumvisible() ? "<C-e>" : "<Left>"

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <sC-j>    :resize -2<CR>
nnoremap <sC-k>    :resize +2<CR>
nnoremap <sC-h>    :vertical resize -2<CR>
nnoremap <sC-l>    :vertical resize +2<CR>


" Execute line under cursor as vimscript
nnoremap ... :execute getline('.')<CR>


"----------------------------------------------------------
" Abbreviations
" End most with '@' character to avoid collisions

" Todo list in markdown
" Abbreviation in insert mode
ab [@ * [ ]
" Command in normal mode, leaves in insert mode
map <Leader>* I* [ ] 

