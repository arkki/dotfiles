#!/usr/bin/env fish

for folder in (ls -d ~/.dotfiles/*/)
    stow -d ~/.dotfiles (string replace -r '/.+/(.+)/' '$1' $folder)
end
