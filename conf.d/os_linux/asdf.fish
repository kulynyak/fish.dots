
set -l ASDF $HOME/.asdf/completions/asdf.fish
if [ -f $ASDF ]
    source $ASDF
end
set -e ASDF
