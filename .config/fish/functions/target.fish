function target
    if test -n "$argv[1]"
        echo $argv[1] > /tmp/htb_target
        echo "🎯 Target: $argv[1]"
    else
        if test -f /tmp/htb_target
            rm /tmp/htb_target
            echo "🧹 Target removed."
        else
            echo "⚠️There was no set objective."
        end
    end
end
