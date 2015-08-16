" Maintainer:	Gaëtan Morin
" Last Change:	April 29, 2015

set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "paper"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine guibg=#F8F2E4
  hi CursorLineNr guifg=#2A6496 guibg=#F5F5F5 gui=bold

  "  hi CursorColumn guibg=#2d2d2d
  hi MatchParen guifg=#375EAB guibg=NONE gui=bold
  hi Pmenu 		guifg=#68686A guibg=#FFFFFF
  hi PmenuSel 	guifg=#F5F5F5 guibg=#68686A

  hi Directory guifg=NONE guibg=NONE gui=bold
  hi IncSearch guifg=#FFFFFF guibg=#F66A16 gui=none
  hi Search guifg=NONE guibg=#EFDED3 gui=none
endif

" General colors
hi Cursor 		guifg=#F5F5F5 guibg=#428BCA gui=none
hi Normal 		guifg=#413A35 guibg=#F8F2E4 gui=none
hi NonText 		guifg=#999999 guibg=#F8F2E4 gui=none
hi LineNr 		guifg=#999999 guibg=#F8F2E4 gui=none
hi StatusLine 	guifg=#F5F5F5 guibg=#68686A gui=none
hi StatusLineNC guifg=#68686A guibg=#FFFFFF gui=none
hi VertSplit 	guifg=#FFFFFF guibg=#FFFFFF gui=none
"hi Folded 		guibg=#384048 guifg=#a0a8b0 gui=none
hi Title		guifg=#375EAB guibg=NONE	gui=bold
hi Visual		guifg=NONE guibg=#EAE3D3 gui=none
hi SpecialKey	guifg=#9D9183 guibg=NONE gui=bold

" Syntax highlighting
hi Comment 		guifg=#999999 guibg=NONE gui=none
hi Todo 		guifg=#999999 guibg=NONE gui=bold
hi String 		guifg=#9D9183 guibg=NONE gui=none
hi Special		guifg=#9D9183 guibg=NONE gui=bold
hi Identifier 	guifg=#413A35 guibg=NONE gui=none
hi Constant 	guifg=#413A35 guibg=NONE gui=none
hi Number		guifg=#413A35 guibg=NONE gui=none
hi Type         guifg=#413A35 guibg=NONE gui=none
hi Operator     guifg=#413A35 guibg=NONE gui=none
hi Function 	guifg=#413A35 guibg=NONE gui=bold
hi Keyword		guifg=#413A35 guibg=NONE gui=none
hi Statement 	guifg=#413A35 guibg=NONE gui=none
hi PreProc 		guifg=#7D6D53 guibg=NONE gui=none
hi StorageClass guifg=#413A35 guibg=NONE gui=none
hi Structure    guifg=#413A35 guibg=NONE gui=none
hi Typedef      guifg=#413A35 guibg=NONE gui=none
hi Error		guifg=#D9534F guibg=NONE gui=none


