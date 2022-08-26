if type -q fenv
    _regUV MANPATH $MANPATH "/usr/share/man" "/usr/local/share/man"
    _regUV NVM_DIR $HOME/.nvm
    _regUV nvm_prefix $NVM_DIR
    type -q brew
    and test -e (brew --prefix nvm)
    and _regUV nvm_prefix $(brew --prefix nvm)
    fenv source $nvm_prefix/nvm.sh >/dev/null 2>&1
end