set -l HOME_BIN $HOME/bin
if [ -d $HOME_BIN ]
    fish_add_path $HOME_BIN
end
set -e HOME_BIN

set -l HOME_LBIN $HOME/.local/bin
if [ -d $HOME_LBIN ]
    fish_add_path $HOME_LBIN
end
set -e HOME_LBIN
