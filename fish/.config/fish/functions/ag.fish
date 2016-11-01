function ag --description 'Ag, the silver surfer.'
	command ag --color-path '38;5;299' --color-line-number '38;5;39' \
            --color-match '38;5;164' --pager="less -XFR" $argv
end
