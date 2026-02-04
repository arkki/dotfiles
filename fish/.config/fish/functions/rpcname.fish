function rpcname
    string match -r 'RPC-[0-9]+' (git_branch_name)
end
