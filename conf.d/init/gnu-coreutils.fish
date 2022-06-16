# gnu coreutils
set -l GNU_BIN (brew --prefix coreutils)/bin
if [ -d $GNU_BIN ]
    fish_add_path -g $GNU_BIN
end
set -e GNU_BIN
