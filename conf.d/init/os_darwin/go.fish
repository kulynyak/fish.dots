set -l GOROOT (brew --prefix golang)/libexec
if [ -d $GOROOT ]
    _regUV GOROOT $GOROOT
    _regUV GOPATH $HOME/.go
    if ! test -e "$GOPATH/src/github.com"
        mkdir -p "$GOPATH/src/github.com"
    end
    fish_add_path -U $GOROOT/bin $GOPATH/bin
else
    set -e GOROOT
end
