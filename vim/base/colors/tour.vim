" Maintainer:	Gaëtan Morin
" Last Change:	November 27, 2014

set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "tour"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine guibg=#FFFFDD
  hi CursorLineNr guifg=#2A6496 guibg=#F5F5F5 gui=bold

  "  hi CursorColumn guibg=#2d2d2d
  hi MatchParen guifg=#375EAB guibg=NONE gui=bold
  hi Pmenu 		guifg=#444444 guibg=#FFFFFF
  hi PmenuSel 	guifg=#FFFFFF guibg=#375EAB
  hi PmenuSbar 	guibg=#FFFFFF
  hi PmenuThumb guibg=#E0EBF5

  hi Directory guifg=NONE guibg=NONE gui=bold
  hi IncSearch guifg=#FFFFFF guibg=#F66A16 gui=none
  hi Search guifg=NONE guibg=#EFDED3 gui=none
endif

" General colors
hi Cursor 		guifg=#F5F5F5 guibg=#375EAB gui=none
hi Normal 		guifg=#333333 guibg=#FFFFDD gui=none
hi NonText 		guifg=#999999 guibg=#FFFFDD gui=none
hi LineNr 		guifg=#999999 guibg=#FFFFDD gui=none
hi StatusLine 	guifg=#444444 guibg=#E0EBF5 gui=none
hi StatusLineNC guifg=#444444 guibg=#FFFFFF gui=none
hi VertSplit 	guifg=#FFFFFF guibg=#FFFFFF gui=none
"hi Folded 		guibg=#384048 guifg=#a0a8b0 gui=none
hi Title		guifg=#375EAB guibg=NONE	gui=bold
hi Visual		guifg=NONE guibg=#D6D2EE gui=none
hi SpecialKey	guifg=#777777 guibg=NONE gui=bold

" Syntax highlighting
hi Comment 		guifg=#999999 guibg=NONE gui=none
hi Todo 		guifg=#999999 guibg=NONE gui=bold
hi String 		guifg=#777777 guibg=NONE gui=none
hi Special		guifg=#777777 guibg=NONE gui=bold
hi Identifier 	guifg=#333333 guibg=NONE gui=none
hi Constant 	guifg=#333333 guibg=NONE gui=none
hi Number		guifg=#333333 guibg=NONE gui=none
hi Type         guifg=#333333 guibg=NONE gui=none
hi Operator     guifg=#333333 guibg=NONE gui=none
hi Function 	guifg=#333333 guibg=NONE gui=bold
hi Keyword		guifg=#333333 guibg=NONE gui=none
hi Statement 	guifg=#333333 guibg=NONE gui=none
hi PreProc 		guifg=#375EAB guibg=NONE gui=none
hi StorageClass guifg=#333333 guibg=NONE gui=none
hi Structure    guifg=#333333 guibg=NONE gui=none
hi Typedef      guifg=#333333 guibg=NONE gui=none
hi Error		guifg=#D9534F guibg=NONE gui=none


