# set _FC_UP to true t orecalculate envinronment variables
# TODO: invent mechanizm to recalculate env
set -Ux _FC_UP false

# modify path
fish_add_path /usr/local/bin
fish_add_path /usr/local/sbin

# editors
set -Ux EDITOR hx
# set -Ux VISUAL code
set -Ux PAGER less

# disable to run Firefox in safe mode
set -Ux MOZ_DISABLE_SAFE_MODE_KEY never

# dot files
set -Ux DOTS $HOME/u.dots

alias x exit
alias q exit




if status is-interactive
    # commands to run in interactive sessions can go here
end

set -Ux USER_ID $(id -u $USER)

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/akulynyak/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
