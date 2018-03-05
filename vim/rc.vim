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

    " Omnicomplete menu
    function! Auto_complete_string()
        if pumvisible()
            return "\<C-n>"
        else
            return "\<C-x>\<C-o>\<C-r>=Auto_complete_opened()\<CR>"
        end
    endfunction
    function! Auto_complete_opened()
        if pumvisible()
            return "\<Down>"
        end
        return ""
    endfunction
    inoremap <expr> <Nul> Auto_complete_string()
    inoremap <expr> <C-Space> Auto_complete_string()

    " Disable scratch window on completion
    set completeopt=longest,menuone

    " Keep a few lines visible above/bellow the cursor when scrolling
    set scrolloff=5





" ===== APPEARANCE =====

    syntax on
    set background=dark
    colorscheme nofrils-gm

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





" ===== TEXT FORMATTING =====

    " Indenting
    filetype indent on
    set autoindent
    set smartindent
    set smarttab

    " Don't use spaces instead of tabs
    set noexpandtab

    " Default tab are 8 character wide
    set tabstop=8
    set shiftwidth=8
    set softtabstop=8





" ===== SEARCH =====

    " Highlight search result and move cursor
    set incsearch

    " Ignore case in search
    set ignorecase

    " Don't ignore case when there are capital letters
    set smartcase





" ===== SPELL CHECKING =====

    set spell
    set spelllang=en,fr

    " Propose top 5 results
    set spellsuggest=5





" ===== FILE Explorer =====

    autocmd FileType dirvish setlocal nospell
    let g:dirvish_mode = ':sort ,^.*[\/],'     " Directories at the top





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





" ===== TERMINAL EMULATOR =====

    if has('nvim')
        autocmd BufEnter term://* startinsert
        autocmd TermOpen * setlocal nospell
        autocmd TermOpen * setlocal statusline=%{b:term_title}

        tnoremap <Esc> <C-\><C-n>
        tnoremap <C-w> <C-\><C-n><C-w>
    endif





" ===== KEY MAPPINGS =====

    " Make %% expand to the working directory on the command line
    cabbr <expr> %% expand('%:p:h')

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






