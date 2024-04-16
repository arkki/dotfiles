function sshtmux
	ssh -t $argv "bash -c \"tmux attach -t default || tmux new -s default\""
end
