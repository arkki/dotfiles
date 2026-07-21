abbr -a -- gs 'git status'
abbr -a -- gc 'git commit -m'
abbr -a -- df 'df -tH'
abbr -a -- di 'docker inspect'
abbr -a -- finder 'open -a Finder'
abbr -a -- dimgs 'docker images'
abbr -a -- dc 'docker compose'
abbr -a -- dm 'docker machine'
abbr -a -- gh 'git hist'
abbr -a -- gdt 'git difftool'
abbr -a -- dn 'docker network'
abbr -a -- drm 'docker rm'
abbr -a -- dps 'docker ps -a'
abbr -a -- drmi 'docker rmi'
abbr -a -- dv 'docker volume'
abbr -a -- cls clear
abbr -a -- laf 'ls -laFh'
abbr -a -- sourcetree 'open -a Sourcetree'
abbr -a -- ga 'git add'
abbr -a -- mux tmuxinator
abbr -a -- iterm 'open -a Iterm'
abbr -a -- devbox 'docker run -it --rm --name devbox --hostname devbox.localhost arkki/devbox /usr/bin/fish'
abbr -a -- devbox-edit 'docker run -it --name devbox --hostname devbox-edit.localhost arkki/devbox /usr/bin/fish'
abbr -a -- dexec 'docker exec -it -u root'
abbr -a -- dcps 'docker compose ps'
abbr -a -- bef 'bundle exec fastlane'
abbr -a -- dud 'du -h -d 1 | gsort -h | less'
abbr -a -- dclogs 'docker compose logs -f -t --no-color | lnav'
abbr -a -- kc kubectl
abbr -a -- mp multipass
abbr -a -- kcns 'kubectl config set-context --current --namespace='
abbr -a -- cargo-watch "cargo watch -q -c -w src/ -x 'run -q'"
abbr -a -- visualvm '/Applications/VisualVM.app/Contents/MacOS/visualvm --openfile'
abbr -a -- tf terraform
abbr -a -- oc 'OPENCODE_CONFIG_DIR="/Users/olli.niinioja/.config/opencode-relex" loadenv "$OPENCODE_CONFIG_DIR/.env" -- opencode'
# abbr -a -- oc 'OPENCODE_CONFIG_DIR="/Users/olli.niinioja/.config/opencode-relex" opencode'
abbr -a -- oc-old 'OPENCODE_CONFIG_DIR="/Users/olli.niinioja/.config/opencode-relex" loadenv /Users/olli.niinioja/.private/.env -- opencode'
abbr -a -- oc-bare 'OPENCODE_CONFIG_DIR="/Users/olli.niinioja/.config/opencode-bare" loadenv /Users/olli.niinioja/.private/.env -- opencode'
abbr -a -- z zellij
abbr -a -- kp keepassxc-cli
abbr -a -- cdf 'cd (rg --hidden --files --null -L 2> /dev/null | xargs -0 dirname 2> /dev/null | uniq | fzf)'
abbr -a -- rmf 'trash (rg --hidden --files --null -L 2> /dev/null | xargs -0 dirname 2> /dev/null | uniq | fzf)'
abbr -a -- rm trash
abbr -a -- tmd 'tmux new-session -A -s default'
abbr -a -- vim nvim
# abbr -a -- kpx 'keepassxc-cli clip -k /Users/olli.niinioja/Library/CloudStorage/OneDrive-RetailLogisticsExcellence-RelexOy/keepass/relex-key.keyx /Users/olli.niinioja/Library/CloudStorage/OneDrive-RetailLogisticsExcellence-RelexOy/keepass/relex-db.kdbx'
abbr -a -- kpx-search 'keepassxc-cli search -k /Users/olli.niinioja/Library/CloudStorage/OneDrive-RetailLogisticsExcellence-RelexOy/keepass/relex-key.keyx /Users/olli.niinioja/Library/CloudStorage/OneDrive-RetailLogisticsExcellence-RelexOy/keepass/relex-db.kdbx'

abbr -a -- l 'eza -lahF'
abbr -a -- ll 'eza -lah --classify=always --color=always | less -R'
