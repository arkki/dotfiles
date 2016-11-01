# Squash X number of commits and automatically populates commit message.
function gsquash
    git reset --soft HEAD~$argv;
    git merge --squash HEAD@\{1\};
    git commit;
end;
