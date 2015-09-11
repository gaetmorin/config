
function grml_reset_screen_title () {
    # adjust title of xterm
    # see http://www.faqs.org/docs/Linux-mini/Xterm-Title.html
    [[ ${NOTITLE:-} -gt 0 ]] && return 0
    case $TERM in
        (xterm*|rxvt*)
            set_title ${(%):-"%1d"}
            ;;
    esac
}

function grml_control_xterm_title () {
    case $TERM in
        (xterm*|rxvt*)
            set_title "${(%):-"%1d"}" "($1)"
            ;;
    esac
}
