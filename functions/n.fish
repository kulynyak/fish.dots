function n --description nnn
    # Block nesting of nnn in subshells
    set -q NNNLVL; or set NNNLVL 0
    if [ $NNNLVL -ge 1 ]
        echo "nnn is already running"
        return
    end
    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "export" and make sure not to
    # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
    #     set NNN_TMPFILE "$HOME/.config}/nnn/.lastd"
    # set -eU NNN_TMPFILE
    set NNN_TMPFILE "$HOME/.config/nnn/.lastd"
    # set -xg NNN_TMPFILE "$HOME/.config/nnn/.lastd"
    nnn -deU $argv
    if [ -f "$NNN_TMPFILE" ]
        . "$NNN_TMPFILE"
        rm -f "$NNN_TMPFILE" >/dev/null
    end
end
