function zreload --wraps='exec /usr/local/bin/fish' --description 'reload configuration'
    set -U X_FORCE_RELOAD_CONFIG true
    exec /usr/local/bin/fish $argv
end
