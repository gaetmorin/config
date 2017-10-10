" 
" Vim Configuration
"


    " Some Linux distributions set filetype in /etc/vimrc.
    " Clear filetype flags before changing runtimepath to force Vim to reload them.
    if exists("g:did_load_filetypes")
        filetype off
        filetype plugin indent off
    endif





" ===== ADDITIONAL PLUGIN SOURCES =====

    source  ~/etc/vim/vim-pathogen/autoload/pathogen.vim
    execute pathogen#infect('~/etc/vim/{}')
    Helptags





" ===== PROGRAM SETTINGS =====

    " Disable backward compatibility with Vi
    set nocompatible

    " Allow file type specific plugins
    filetype plugin on

    " Supported line endings
    set fileformats=unix,dos

    " Encoding
    set encoding=utf-8

    " Automatically change working directory when opening a file
    " set autochdir

    " Put swap and backup files in /tmp
    set dir=/tmp
    set backupdir=/tmp





" ===== INTERACTIVITY ENHANCEMENTS =====

    " Enable mouse
    set mouse=a

    " Enable auto completion in command mode (for files, etc)
    set wildmenu
    set wildmode=list:longest,list:full

    " Ignore some patterns in command auto completion
    set wildignore+=*.o,*.so,*.obj,*.a
    set wildignore+=*.tar,*.tgz,*.gz,*.bz,*.xz,*.zip
    set wildignore+=*.aux,*.blg,*.dvi,*.log,*.pdf,*.ps,*.eps

    " All operations such as yy, D, and P work with the clipboard.
    " No need to prefix them with "* or "+
    set clipboard=unnamed

    " Use TAB to complete in editor
    function InsertTabWrapper()
        let col = col('.') - 1
        if !col || getline('.')[col - 1] !~ '\k'
            return "\<tab>"
        else
            return "\<C-p>"
        endif
    endfunction
    inoremap <tab> <C-r>=InsertTabWrapper()<cr>

    " Disable scratch window on completion
    set completeopt=longest,menuone

    " Keep a few lines visible above/bellow the cursor when scrolling
    set scrolloff=5





" ===== APPEARANCE =====

    " Syntax coloring: only in gvim
    syntax off

    " Highlight column 80 and 120
    " set colorcolumn=80,120

    " Show cursor position in status bar
    set ruler

    " Show current mode
    set showmode

    " Show matching parentheses/braces
    set showmatch

    " Ident after line breaks, and show an ellipsis before continuation
    set breakindent
    set breakindentopt=shift:-4
    set sbr=...\ 

    " Show typed command in status bar
    set showcmd

    " Show a status line even when there is only one window
    set laststatus=2

    " Configure for 'bright text on dark background' terminal
    set background=dark

    " Use 256 colors in terminal
    set t_Co=256





" ===== TEXT FORMATTING =====

    " Indenting
    filetype indent on
    set autoindent
    set smartindent
    set smarttab

    " Use spaces instead of tabs
    set expandtab

    " Default tab are 4 character wide
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4

    " Use 8-char tabs for C family languages
    au Filetype c,cpp,objc,go,javascript setlocal noexpandtab
    au Filetype c,cpp,objc,go,javascript setlocal tabstop=8
    au Filetype c,cpp,objc,go,javascript setlocal shiftwidth=8
    au Filetype c,cpp,objc,go,javascript setlocal softtabstop=8





" ===== SEARCH =====

    " Highlight search result and move cursor
    set incsearch

    " Ignore case in search
    set ignorecase

    " Don't ignore case when there are capital letters
    set smartcase





" ===== SPELL CHECKING =====

    " Load languages
    set spelllang=en,fr

    " Propose top 5 results
    set spellsuggest=5

    " Spell checking: only in gvim
    set nospell





" ===== FILE Explorer =====

    autocmd FileType dirvish setlocal nospell
    let g:dirvish_mode = ':sort r /[^\/]$/'              " Directories at the top





" ===== Code =====

    " Alias for :make that automatically 'presses ENTER' at the end
    ab mak make<CR>

    " Open or close error window after :make
    au QuickFixCmdPost make cw

    " Go
    let g:go_fmt_command = 'goimports'
    let g:go_snippet_case_type = 'camelcase'
    let g:go_highlight_functions = 1
    let g:go_highlight_methods = 1

    " Clang complete
    let g:clang_auto_select = 1
    let g:clang_complete_auto = 1
    let g:clang_complete_copen = 0
    let g:clang_hl_errors = 1
    let g:clang_close_preview = 1
    let g:clang_use_library = 1
    let g:clang_complete_macros = 1





" ===== KEY MAPPINGS =====

    " Make %% expand to the working directory on the command line
    cabbr <expr> %% expand('%:p:h')

    " Completion
    imap <C-Space> <C-X><C-O>

    " Toggle spell checking
    map <F4> :set spell!<bar>set spell?<CR>

    " Toggle search highlight
    map <F5> :set hls!<bar>set hls?<CR>

    " Back/forward
    nnoremap <C-RightMouse>        <C-O>
    inoremap <C-RightMouse>   <C-O><C-O>
    nnoremap <C-MiddleMouse>       <C-I>
    inoremap <C-MiddleMouse>  <C-O><C-I>

    " Modern shortcuts
    map  <C-C> "+y
    map  <C-X> "+x
    map  <C-V> "+gP
    map  <C-S> :w<CR>

    imap <C-V> <C-O><C-V>
    imap <C-S> <C-O>:w<CR>
    imap <C-Z> <C-O>u
    
    " Right click to jump to definition
    nmap <RightMouse> <LeftMouse>gd
    imap <RightMouse> <LeftMouse><C-O>gd






