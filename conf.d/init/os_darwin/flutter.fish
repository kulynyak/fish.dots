set -l FLUTTER_VER (flutter --version | head -1 | cut -d ' ' -f 2)
set -l FLUTTER_PATH (brew --prefix)/Caskroom/flutter/$FLUTTER_VER/flutter/.pub-cache/bin

if [ -d $FLUTTER_PATH ] 
    fish_add_path -U $FLUTTER_PATH
end

set -e FLUTTER_PATH
set -e FLUTTER_VER
