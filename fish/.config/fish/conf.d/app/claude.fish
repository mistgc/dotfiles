function claude
    if pgrep -f "litellm" > /dev/null
        set -g LiteLLM_PID $(cat /tmp/litellm.pid 2> /dev/null)
        if test -z $LiteLLM_PID
            pkill -f "litellm"
            sleep 1
            nohup litellm --port 4000 -c ~/.config/litellm/config.yaml >> /tmp/litellm.log 2>&1 &
            disown
            set -g LiteLLM_PID $last_pid
            echo $LiteLLM_PID > /tmp/litellm.pid
            sleep 1
        end
    else
        nohup litellm --port 4000 -c ~/.config/litellm/config.yaml >> /tmp/litellm.log 2>&1 &
        disown
        set -g LiteLLM_PID $last_pid
        echo $LiteLLM_PID > /tmp/litellm.pid
        sleep 1
    end

    echo "LiteLLM started with PID $LiteLLM_PID"

    set -g CLAUDE_BIN $(which claude)
    $CLAUDE_BIN "$argv"

    if test $(pgrep -c claude) -eq 0
        kill -9 $LiteLLM_PID
        rm -f /tmp/litellm.pid
    end
end

function litellm_stop
    if test -f /tmp/litellm.pid
        set -l pid (cat /tmp/litellm.pid)
        kill -9 $pid 2>/dev/null
        rm -f /tmp/litellm.pid
        echo "LiteLLM stopped (PID $pid)"
    else
        echo "LiteLLM not running"
    end
end
