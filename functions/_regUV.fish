function _regUV --description "Register universal variable"
    set -l name $argv[1]
    set -e argv[1]
    set -Ux $name $argv
    if set -l index (contains -i $name $_U_INIT_REGISTERED_VARS)
        set -eU _U_INIT_REGISTERED_VARS[$index]
    end
    set -Ux _U_INIT_REGISTERED_VARS $_U_INIT_REGISTERED_VARS $name
end
