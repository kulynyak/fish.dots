#!/usr/bin/env fish

# home/bin

set -l CONFLUENT_VER "7.3.1"
set -l CONFLUENT_BIN "$HOME/.config/confluent-$CONFLUENT_VER/bin"
if [ -d $CONFLUENT_BIN ]
    fish_add_path -U $CONFLUENT_BIN
end
set -e CONFLUENT_BIN
set -e CONFLUENT_VER
