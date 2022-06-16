# initialized only if requested
if set -q X_FORCE_RELOAD_CONFIG
    set -eU X_FORCE_RELOAD_CONFIG
    # unset registered universal variables
    if set -q _U_INIT_REGISTERED_VARS
        for U_VAR in $_U_INIT_REGISTERED_VARS
            set -eU "$U_VAR"
        end
        # unset registered universal variables registry
        set -eU _U_INIT_REGISTERED_VARS
    end
    # init folder for env setup
    set -Ux _U_INIT_FISH_FOLDER $(dirname (status --current-filename))/init
    for cfg in $_U_INIT_FISH_FOLDER/*.fish
        if [ -f $cfg ]
            source $cfg
        end
    end
end
