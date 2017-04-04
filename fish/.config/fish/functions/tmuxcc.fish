function tmuxcc
    tmux -CC attach -t $argv; or tmux -CC new -s $argv
end
