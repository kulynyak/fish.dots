function nnn_cd
    if [ ! -z "$NNN_PIPE" ]
        printf "%s\0" "0c$PWD" >"$NNN_PIPE" ! &
    end
end
