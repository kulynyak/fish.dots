function bbd --wraps='brew bundle dump --all --force --file=$DOTS/brew/Brewfile' --description 'Dump brew packages'
    brew bundle dump --all --force --file=$DOTS/brew/Brewfile $argv
end
