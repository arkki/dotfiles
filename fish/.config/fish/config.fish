# Hack for reading fish scripts from conf.d, for older versions
# for file in ~/.config/fish/conf.d/*.fish
#	source $file
# end

eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
