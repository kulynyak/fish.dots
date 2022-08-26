set -l ANACONDA_BIN /usr/local/anaconda3/bin
if [ -d $ANACONDA_BIN ]
    fish_add_path -U $ANACONDA_BIN
else
    set -e ANACONDA_BIN
end
