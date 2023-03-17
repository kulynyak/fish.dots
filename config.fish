alias x exit
alias q exit

alias vi nvim
alias vim nvim
alias ed nvim



if status is-interactive
    # commands to run in interactive sessions can go here
    # alias drop-citrix 'fd "com.citrix.*.plist" /Library/ -tf -X rm -rf'
end

# pnpm
set -gx PNPM_HOME "/home/ra/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end