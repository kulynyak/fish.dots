set -l JAVA_VER -v11
set -l JAVA_HOME $(/usr/libexec/java_home $JAVA_VER)

if [ -d $JAVA_HOME ]
    _regUV _JAVA_OPTIONS -Djava.net.preferIPv4Stack=true
    _regUV JAVA_HOME $JAVA_HOME
    fish_add_path -U $JAVA_HOME/bin
else
    set -eU JAVA_HOME
end
set -e JAVA_VER