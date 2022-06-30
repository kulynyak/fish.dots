# gettext
set -l GETTXT (brew --prefix gettext)/bin
if [ -d $GETTXT ]
    fish_add_path -U $GETTXT
end
set -e GETTXT
