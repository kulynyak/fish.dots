set -l PLATFORMIO_BIN $HOME/.platformio/penv/bin
if [ -d $PLATFORMIO_BIN ]
    fish_add_path -U $PLATFORMIO_BIN
end
set -e PLATFORMIO_BIN
