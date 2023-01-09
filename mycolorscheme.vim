
" Select scheme here, options below
let s:elwscheme = 26

if v:progname == "gvim.exe"
  " NOTES:
  " If running gvim from windows it has a different home
  " folder. Some settings below it can't find. So simplify
  " things and just set a reasonable colorscheme for now.
  set background=dark
  let g:everforest_background = 'hard'
  colorscheme everforest
  "colorscheme newspaper



  " LIGHT: colorschemes

elseif s:elwscheme == 11
  set background=light
  colorscheme newspaper

elseif s:elwscheme == 12
  set background=light
  colorscheme pyte

elseif s:elwscheme == 13
  set background=light
  colorscheme breve

elseif s:elwscheme == 14
  set background=light
  let g:gruvbox_contrast_light = 'soft'
  colorscheme gruvbox



  " DARK: colorschemes

  " PROBABLY DELETE
elseif s:elwscheme == 21
  set background=dark
  " set background 'hard', 'medium'(default), or 'soft'
  let g:everforest_background = 'hard'
  colorscheme everforest

  " PROBABLY DELETE
elseif s:elwscheme == 22
  set background=dark
  colorscheme nord

  " PROBABLY DELETE
elseif s:elwscheme == 25
  set background=dark
  colorscheme onehalfdark

elseif s:elwscheme == 26
  set background=dark
  colorscheme gruvdark
  let g:airline_theme = 'molokai'

elseif s:elwscheme == 27
  set background=dark
  colorscheme gruvbit

elseif s:elwscheme == 28
  set background=dark
  colorscheme sorcerer
  let g:airline_theme = 'molokai'

elseif s:elwscheme == 29
  set background=dark
  let g:gruvbox_contrast_dark  = 'hard'
  let g:gruvbox_contrast_light = 'soft'
  colorscheme gruvbox
  let g:airline_theme = 'molokai'



else
  colorscheme default
endif

