set -gx PATH '~/.jenv/shims' $PATH
set -gx JENV_SHELL fish
set -gx JENV_LOADED 1
set -e JAVA_HOME

source "/usr/local/Cellar/jenv/0.5.7/libexec/completions/jenv.fish"

# /usr/local/Cellar/jenv/0.5.7/libexec/bin/jenv
# jenv rehash 2>/dev/null
# jenv refresh-plugins
function jenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case enable-plugin rehash shell shell-options
    source (jenv "sh-$command" $argv|psub)
  case '*'
    command jenv "$command" $argv
  end
end
