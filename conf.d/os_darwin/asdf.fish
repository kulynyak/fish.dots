
set -l ASDF /usr/local/opt/asdf/libexec/asdf.fish
if [ -f $ASDF ]
    source $ASDF
end
set -e ASDF
