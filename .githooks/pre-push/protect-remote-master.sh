#!/bin/sh
# Prevent push to remote master branch

while read local_ref local_sha remote_ref remote_sha
do
	if [ "$remote_ref" = "refs/heads/master" ]; then
		echo "pre-push hook: Can not push to remote master branch."
		exit 1
	fi
done

exit 0
