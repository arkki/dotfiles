function sshtmux
	ssh -t $argv "bash -c \"tmux new -s base || tmux attach -t base\""
end
