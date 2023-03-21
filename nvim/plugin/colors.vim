" VIM THEME------------------------ {{{
set background=dark

colorscheme gruvbox
" colorscheme duckbones "doesn't work
" colorscheme papercolor
" colorscheme molokai

"au ColorScheme * hi Normal ctermbg=none guibg=none
highlight Normal guibg=None ctermbg=None
"au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red
"

"au ColorScheme * hi ColorColumn ctermbg=88 guibg=#870000
highlight ColorColumn ctermbg=88 guibg=#757575


" nvim-tree colors
highlight NvimTreeBg guibg=None cterm=None
highlight! NvimTreeFolderIcon guibg=None ctermbg=None

" Bad Spell color
highlight SpellBad ctermbg=72 gui=undercurl guisp=#5faf87
" }}}

