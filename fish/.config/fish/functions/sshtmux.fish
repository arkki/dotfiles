function sshtmux
	ssh -t $argv "bash -c \"tmux attach -t base || tmux new -s base\""
end
