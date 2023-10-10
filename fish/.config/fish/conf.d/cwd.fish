function cwd --description 'Copy current working directory to clipboard on macOS'
	set pwd \"(pwd)\";
	# set pwd (pwd | string replace -a ' ' '\ ');
	echo -n $pwd | pbcopy;
	echo -n $pwd copied to clipboard!
end
