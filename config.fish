alias x exit
alias q exit

if status is-interactive
    # commands to run in interactive sessions can go here
    alias drop-citrix 'fd "com.citrix.*.plist" /Library/ -tf -X rm -rf'
end

