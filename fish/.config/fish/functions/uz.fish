function uz
    unzip $argv -d (string replace -r '\.[^.]*$' '' -- $argv)
end
