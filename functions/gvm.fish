function gvm --wraps='git status --porcelain 2>/dev/null | sed -ne "s/^ M //p" | xargs $EDITOR' --description 'open (in editor) all modified files in a git repository'
    git status --porcelain 2>/dev/null | sed -ne "s/^ M //p" | xargs $EDITOR $argv
end
