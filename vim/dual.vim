" Name:       dual.vim
" Maintainer: Naïm Favier <n+vim@monade.li>

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "dual"

" hi Comment    ctermfg=8                        guifg=#808080
" hi Constant   ctermfg=14            cterm=none guifg=#00ffff               gui=none
" hi Identifier ctermfg=6                        guifg=#00c0c0
" hi Statement  ctermfg=3             cterm=bold guifg=#c0c000               gui=bold
" hi PreProc    ctermfg=10                       guifg=#00ff00
" hi Type       ctermfg=2                        guifg=#00c000
" hi Special    ctermfg=3                        guifg=#0000ff
" hi Error                 ctermbg=9                           guibg=#ff0000
" hi Todo       ctermfg=4  ctermbg=3             guifg=#000080 guibg=#c0c000
" hi Directory  ctermfg=2                        guifg=#00c000
" hi StatusLine ctermfg=11 ctermbg=12 cterm=none guifg=#ffff00 guibg=#0000ff gui=none
" hi Normal                                      guifg=#ffffff guibg=#000000
" hi Search                ctermbg=3                           guibg=#c0c000

hi! Keyword ctermfg=Magenta cterm=bold
hi! Punctuation ctermfg=Cyan
hi! Comment ctermfg=Gray
hi! Error ctermbg=NONE
hi! Todo ctermbg=Magenta

hi! link Structure Keyword
hi! link Statement Keyword
hi! link Include Keyword
hi! link Operator Punctuation
hi! link String Punctuation
hi! link Type Keyword
hi! link Typedef Keyword
hi! link SpecialComment Comment
