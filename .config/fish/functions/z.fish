function z
    nohup zathura $argv >/dev/null 2>&1 &
    disown
end
