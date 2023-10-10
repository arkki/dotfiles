function lafl

	# Linux
        # ls --color=always -laFh | lessxfr $arvg;

	# OSX
	command env CLICOLOR_FORCE=1 ls -G -laFh | lessxfr $arvg;
end;
