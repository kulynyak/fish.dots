set -gx Z_LUA $HOME/.local/opt/z.lua/z.lua
if test -f $Z_LUA
    $Z_LUA --init fish | source
    set -gx _ZL_CD cd
    set -gx _ZL_DATA "$HOME/.local/share/zlua"
    set -gx _ZL_ADD_ONCE 1
    # cd with interactive selection
    alias j='z -i'
    # cd with interactive selection using fzf
    alias jf='z -I'
else
    set -e Z_LUA
    set -e _ZL_CD
    set -e _ZL_DATA
    set -e _ZL_ADD_ONCE
    functions --erase j funcsave
    functions --erase jf funcsave
end
