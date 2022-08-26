function zreload --wraps='exec /usr/local/bin/fish' --description 'reload configuration'
    set -U X_FORCE_RELOAD_CONFIG true
    set -l fish_cmd (which fish)
    exec $fish_cmd $argv
end
