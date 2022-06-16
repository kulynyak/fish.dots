# gettext
set -l GETTXT (brew --prefix gettext)/bin
if [ -d $GETTXT ]
    fish_add_path -g $GETTXT
end
set -e GETTXT
