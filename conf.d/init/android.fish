set -l ANDROID_HOME $HOME/Library/Android/sdk
if [ -d $ANDROID_HOME ]
    _regUV ANDROID_HOME $ANDROID_HOME
    fish_add_path -g $ANDROID_HOME/emulator $ANDROID_HOME/platform-tools $ANDROID_HOME/tools/bin
else
    set -e ANDROID_HOME
end
