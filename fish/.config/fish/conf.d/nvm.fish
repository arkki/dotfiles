if status --is-interactive; and type -q bass; and test -s ~/.nvm/nvm.sh
    if bass source ~/.nvm/nvm.sh --no-use ';' nvm alias default >/dev/null 2>&1
        bass source ~/.nvm/nvm.sh --no-use ';' nvm use default >/dev/null 2>&1
    end

    if not functions -q nvm
        function nvm --description "Node Version Manager"
            bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
        end
    end
end
