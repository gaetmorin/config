"
" GVim Configuration
"



" ===== GUI =====

    " Syntax coloring
    syntax on

    " Highlight current line
    " set cursorline

    " Color Scheme
    colorscheme minimalist
    
    " Font
    set guifont=Go\ Mono\ 10

    " GUI widgets (see :help guioptions)
    set guioptions=aceir
    
    " Window size
    set columns=125
    set lines=47

    " Activate spell checking
    set spell





" ===== FONT ZOOM =====

    " Zoom in/out with mouse wheel
    
    let s:font_size_regex = '[0-9]\+$'

    function! s:GetFontSize()
        return matchstr(&guifont, s:font_size_regex)
    endfunction

    function! s:SetFontSize(size)
        let &guifont = substitute(&guifont, s:font_size_regex, a:size, '')
    endfunction

    function! s:IncrFontSize(delta)
        let size = s:GetFontSize()
        call s:SetFontSize(size + a:delta)
    endfunction

    let s:normal_font_size = s:GetFontSize()

    function! s:ResetFontSize()
        call s:SetFontSize(s:normal_font_size)
    endfunction

    map  <C-0>                     :call <SID>ResetFontSize()<CR>
    map  <C-ScrollWheelUp>         :call <SID>IncrFontSize(+1)<CR>
    map  <C-ScrollWheelDown>       :call <SID>IncrFontSize(-1)<CR>

    imap <C-0>                <C-O>:call <SID>ResetFontSize()<CR>
    imap <C-ScrollWheelUp>    <C-O>:call <SID>IncrFontSize(+1)<CR>
    imap <C-ScrollWheelDown>  <C-O>:call <SID>IncrFontSize(-1)<CR>

