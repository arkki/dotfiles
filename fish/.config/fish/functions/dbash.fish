function dbash --wraps='docker exec'
    docker exec -it -u root $argv /bin/bash;
end
