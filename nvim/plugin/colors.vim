" VIM THEME------------------------ {{{
set background=dark

" GRUVBOX
" colorscheme gruvbox

" ROSE-PINE
" colorscheme rose-pine
"
" MOLOKAI
" colorscheme molokai

" NeoSolarized
" colorscheme NeoSolarized

" CYPERPUNK
" set termguicolors
" colorscheme cyberpunk
" let g:airline_theme='cyberpunk'

" set termguicolors
" colorscheme silverhand 
" let g:airline_theme='silverhand'

" AURORA
" colorscheme aurora
" let g:aurora_italic = 0     " italic
" let g:aurora_transparent = 1   " transparent
" let g:aurora_bold = 1     " bold
" let g:aurora_darker = 0     " darker background
" highlight NormalNC guibg=NONE ctermbg=NONE 
" highlight EndOfBuffer guibg=NONE ctermbg=NONE 

" AUY
" colorscheme auy-dark

" MELANGE
" colorscheme melange

" KANAGAWA
colorscheme kanagawa-wave

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

