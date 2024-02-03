abbr cdf 'cd (rg --hidden --files --null -L 2> /dev/null | xargs -0 dirname 2> /dev/null | uniq | fzf)'
abbr rmf 'trash (rg --hidden --files --null -L 2> /dev/null | xargs -0 dirname 2> /dev/null | uniq | fzf)'

