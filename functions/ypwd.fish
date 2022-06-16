function ypwd --wraps='pwd | pbcopy' --description 'Copy current folder to clpboard'
    pwd | pbcopy $argv
end
