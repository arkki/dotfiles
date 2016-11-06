# Hack for reading fish scripts from conf.d, for older versions
for file in ~/.config/fish/conf.d/*.fish
	source $file
end
