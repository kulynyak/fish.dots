set -l ANDROID_HOME $HOME/.local/opt/android-sdk
if [ -d $ANDROID_HOME ]
    _regUV ANDROID_HOME $ANDROID_HOME
    fish_add_path -U $ANDROID_HOME/emulator $ANDROID_HOME/platform-tools $ANDROID_HOME/tools/bin
else
    set -e ANDROID_HOME
end
