function __zellij_tab_name_cwd
    if type -q prompt_pwd
        prompt_pwd
    else
        string replace -- "$HOME" "~" "$PWD"
    end
end

function __zellij_tab_name_cwd_label
    echo "["(__zellij_tab_name_cwd)"]"
end

function __zellij_tab_name_rename --argument-names name
    set -q ZELLIJ; or return
    type -q zellij; or return
    command zellij action rename-tab "$name" >/dev/null 2>&1
end

function __zellij_tab_name_command --argument-names commandline
    for token in (string split " " -- $commandline)
        set -l token (string trim -- $token)

        test -n "$token"; or continue

        if string match -qr '^[A-Za-z_][A-Za-z0-9_]*=' -- $token
            continue
        end

        switch $token
            case command builtin exec env sudo time
                continue
        end

        set -l command_name (string split "/" -- $token)[-1]
        string trim --chars "\"';" -- $command_name
        return
    end
end

function __zellij_tab_name_prompt --on-event fish_prompt
    __zellij_tab_name_rename (__zellij_tab_name_cwd)
end

function __zellij_tab_name_preexec --on-event fish_preexec
    set -l command_name (__zellij_tab_name_command $argv[1])

    if test -n "$command_name"
        __zellij_tab_name_rename "$command_name "(__zellij_tab_name_cwd_label)
    end
end

function __zellij_tab_name_postexec --on-event fish_postexec
    __zellij_tab_name_rename (__zellij_tab_name_cwd)
end
