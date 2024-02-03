function tmf -a name -d "New tmux session from fuzzy search as work dir"
  set -l path (rg --hidden --files --null -L 2> /dev/null | xargs -0 dirname 2> /dev/null | uniq | fzf)
  
  set -l name
  if count $argv > /dev/null
    set name $argv
  else 
    set name (string join "/" $PWD $path)
  end

  set name (string replace -a '.' _ $name)

  tmux new -d -A -s $name -c $path 
  tmux a -t $name -c "#{pane_current_path}"
end
