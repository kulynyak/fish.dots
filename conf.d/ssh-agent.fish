if not pgrep ssh-agent | string collect >/dev/null
    eval (ssh-agent -c >/dev/null)
    set -gx SSH_AGENT_PID $SSH_AGENT_PID
    set -gx SSH_AUTH_SOCK $SSH_AUTH_SOCK
else
    set -e SSH_AGENT_PID
    set -e SSH_AUTH_SOCK
end
