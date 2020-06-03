#!/bin/sh
# prevent commit to local master branch

branch=`git symbolic-ref HEAD`
if [ "$branch" = "refs/heads/master" ]; then
    echo "pre-commit hook: Can not commit to the local master branch."
    exit 1
fi

exit 0
