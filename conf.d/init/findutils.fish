# gnu findutils
set -l FINDUTILS $(brew --prefix findutils)
set -l BIN_FIND_GNU $FINDUTILS/bin
if [ -d $BIN_FIND_GNU ]
    fish_add_path -g $BIN_FIND_GNU
end
set -e BIN_FIND_GNU

set -l MANPATH_GNU $FINDUTILS/libexec/gnuman
if [ -d $MANPATH_GNU ]
    set MANPATH $MANPATH_GNU $MANPATH
    _regUV MANPATH $MANPATH
end
set -eU MANPATH_GNU
set -eU FINDUTILS