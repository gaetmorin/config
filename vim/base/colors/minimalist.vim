" Maintainer:	Gaëtan Morin
" Last Change:	November 27, 2014

set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "minimalist"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine guibg=#EEEEEE
  hi CursorLineNr guifg=#2A6496 guibg=#F5F5F5 gui=bold

  "  hi CursorColumn guibg=#2d2d2d
  hi MatchParen guifg=#375EAB guibg=NONE gui=bold
  hi Pmenu 		guifg=#777777 guibg=#FFFFFF
  hi PmenuSel 	guifg=#FFFFFF guibg=#375EAB

  hi Directory guifg=NONE guibg=NONE gui=bold
  hi IncSearch guifg=#FFFFFF guibg=#F66A16 gui=none
  hi Search guifg=NONE guibg=#EFDED3 gui=none
endif

" General colors
hi Cursor 		guifg=#F5F5F5 guibg=#428BCA gui=none
hi Normal 		guifg=#333333 guibg=#EEEEEE gui=none
hi NonText 		guifg=#999999 guibg=#EEEEEE gui=none
hi LineNr 		guifg=#999999 guibg=#EEEEEE gui=none
hi StatusLine 	guifg=#375EAB guibg=#D0E0F0 gui=none
hi StatusLineNC guifg=#375EAB guibg=#FFFFFF gui=none
hi VertSplit 	guifg=#FFFFFF guibg=#FFFFFF gui=none
"hi Folded 		guibg=#384048 guifg=#a0a8b0 gui=none
hi Title		guifg=#375EAB guibg=NONE	gui=bold
hi Visual		guifg=NONE guibg=#D0E0F0 gui=none
hi SpecialKey	guifg=#777777 guibg=NONE gui=bold

" Syntax highlighting
hi Comment 		guifg=#999999 guibg=NONE gui=none
hi Todo 		guifg=#999999 guibg=NONE gui=bold
hi String 		guifg=#777777 guibg=NONE gui=none
hi SpecialChar	guifg=#777777 guibg=NONE gui=bold
hi Special		guifg=#333333 guibg=NONE gui=none
hi Identifier 	guifg=#333333 guibg=NONE gui=none
hi Constant 	guifg=#333333 guibg=NONE gui=none
hi Number		guifg=#333333 guibg=NONE gui=none
hi Type         guifg=#333333 guibg=NONE gui=none
hi Operator     guifg=#333333 guibg=NONE gui=none
hi Function 	guifg=#333333 guibg=NONE gui=bold
hi Keyword		guifg=#333333 guibg=NONE gui=none
hi Statement 	guifg=#333333 guibg=NONE gui=none
hi PreProc 		guifg=#428BCA guibg=NONE gui=none
hi StorageClass guifg=#333333 guibg=NONE gui=none
hi Structure    guifg=#333333 guibg=NONE gui=none
hi Typedef      guifg=#333333 guibg=NONE gui=none
hi Error		guifg=#D9534F guibg=NONE gui=none


