function ndone --wraps='open -g "hammerspoon://task-completed?message=Done"' --description 'display notification'
    open -g "hammerspoon://task-completed?message=Done" $argv
end
