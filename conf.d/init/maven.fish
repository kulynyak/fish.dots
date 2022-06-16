set -l M2 $(brew --prefix maven)
if [ -d $M2 ]
    _regUV M2_HOME $M2/libexec
    fish_add_path $M2/bin
end
set -e M2
