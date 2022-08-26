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
    # set os variable
    set -l __os unsupported
    switch (uname)
        case Linux
            set __os linux
        case Darwin
            set __os darwin
        case '*'
            set __os unsupported
    end
    _regUV os $__os

    set -el __os

    # conf.d folder
    set -Ux _U_CONF_D_FISH_FOLDER $(dirname (status --current-filename))
    # remove sym-links from the conf.d folder
    find $_U_CONF_D_FISH_FOLDER/*.fish -type l -delete &>/dev/null
    # make sym-links for os dependant stuff in the conf.d folder
    if count $_U_CONF_D_FISH_FOLDER/os_$os/*.fish >/dev/null
        ln -s $_U_CONF_D_FISH_FOLDER/os_$os/*.fish $_U_CONF_D_FISH_FOLDER/ &>/dev/null
    end

    # functions folder
    set -Ux _U_FUNCTIONS_FISH_FOLDER $_U_CONF_D_FISH_FOLDER/../functions
    # remove sym-links from the functions folder
    find $_U_FUNCTIONS_FISH_FOLDER/*.fish -type l -delete &>/dev/null
    # make sym-links for os dependant stuff in the  functions folder
    if count $_U_FUNCTIONS_FISH_FOLDER/os_$os/*.fish >/dev/null
        ln -s $_U_FUNCTIONS_FISH_FOLDER/os_$os/*.fish $_U_FUNCTIONS_FISH_FOLDER/ &>/dev/null
    end

    # init folder for env setup - this section speeds up the fish initialization
    set -Ux _U_INIT_FISH_FOLDER $_U_CONF_D_FISH_FOLDER/init
    # remove sym-links from the init folder
    find $_U_INIT_FISH_FOLDER/*.fish -type l -delete &>/dev/null
    # make sym-links for os dependant stuff in the init folder
    if count $_U_INIT_FISH_FOLDER/os_$os/*.fish >/dev/null
        ln -s $_U_INIT_FISH_FOLDER/os_$os/*.fish $_U_INIT_FISH_FOLDER/ &>/dev/null
    end
    # execute files in the init folder
    for cfg in $_U_INIT_FISH_FOLDER/*.fish
        if [ -f $cfg ]
            source $cfg
        end
    end
end
