# Hack for reading fish scripts from conf.d, for older versions
# for file in ~/.config/fish/conf.d/*.fish
#	source $file
# end

# status --is-interactive; and source (jenv init -|psub)

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
