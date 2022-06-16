set -l _NNN_CFG "$HOME/.config/nnn"
if [ -d $_NNN_CFG ]
    set -l _NNN_PLUGS "$_NNN_CFG/plugins"
    # file opener
    set -xg NNN_OPENER "$_NNN_PLUGS/nuke"
    set -xg GUI 1
    set -xg BIN 1
    trap nnn_cd EXIT
    set -l NNN_PLUG_DEFAULT "1:ipinfo;b:nbak;s:!zsh -i*;g:getplugs"
    set -xg NNN_PLUG "$NNN_PLUG_DEFAULT"
    set -e _NNN_PLUGS
end
set -e _NNN_CFG
