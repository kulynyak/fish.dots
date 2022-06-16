function nnn_cd
    if [ not -z "$NNN_PIPE" ]
        printf "%s\0" "0c$PWD" >"$NNN_PIPE" ! &
    end
end
