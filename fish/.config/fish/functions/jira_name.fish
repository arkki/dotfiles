function jira_name
    string match -r '(?:RPC|PLANPROD)-[0-9]+' (git_branch_name)
end
