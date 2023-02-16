
set -l ASDF $HOME/.asdf/completions/asdf.fish
if [ -f $ASDF ]
    source $ASDF
end
set -e ASDF
set -l ASDF_SETUP $HOME/.asdf/asdf.fish
if [ -f $ASDF_SETUP ]
    source $ASDF_SETUP
end
set -e ASDF_SETUP
