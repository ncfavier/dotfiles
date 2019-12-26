" Name:       dual.vim
" Maintainer: Naïm Favier <n+vim@monade.li>

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "dual"

hi! Comment     ctermfg=Gray
hi! Error       ctermbg=NONE
hi! Keyword     ctermfg=Magenta cterm=bold
hi! Punctuation ctermfg=Cyan
hi! Todo        ctermbg=Magenta
hi! NonText     ctermfg=DarkGray

hi! link Macro          Keyword
hi! link Include        Keyword
hi! link Statement      Keyword
hi! link Type           Keyword
hi! link Typedef        Keyword
hi! link Structure      Keyword
hi! link Operator       Punctuation
hi! link String         Punctuation
hi! link SpecialComment Comment
