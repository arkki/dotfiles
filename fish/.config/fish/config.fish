set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Less colors
set -x LESS_TERMCAP_mb (printf "\e[01;31m")
set -x LESS_TERMCAP_md (printf "\e[01;31m")
set -x LESS_TERMCAP_me (printf "\e[0m")
set -x LESS_TERMCAP_se (printf "\e[0m")
set -x LESS_TERMCAP_so (printf "\e[01;42;30m")    # Search highlight
set -x LESS_TERMCAP_ue (printf "\e[0m")
set -x LESS_TERMCAP_us (printf "\e[01;32m")

# Env variables
set -x EDITOR vim
set -x SHELL /usr/local/bin/fish
set -x GOPATH /usr/local/opt/go
set -x GOROOT /usr/local/opt/go/libexec

# Hack for reading fish scripts from conf.d, for older versions
for file in ~/.config/fish/conf.d/*.fish
	source $file
end
