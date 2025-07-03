#!/bin/bash

commitMessage=`git rev-list --max-count=1 --no-commit-header --format=%B HEAD`
worktree=`cat .git | cut -d ' ' -f 2`
rebaseTodo=`cat "${worktree}/rebase-merge/git-rebase-todo" | grep pick | cut -d ' ' -f 2`

newMessage=''
while IFS= read -r line; do
	if [[ "$line" =~ Issue:[[:space:]]([0-9]+) ]]; then
		issueNumber=${BASH_REMATCH[1]}
		line="Closes gh-${issueNumber}"
		if [[ ${issueNumber} == "46071" ]]; then
			line="See gh-${issueNumber}"
		else
			for pendingCommit in $rebaseTodo; do
				pendingCommitMessage=`git rev-list --max-count=1 --no-commit-header --format=%B "${pendingCommit}"`
				if [[ "$pendingCommitMessage" =~ Issue:[[:space:]]$issueNumber ]]; then
					line="See gh-${issueNumber}"
				fi
			done
		fi
	fi
	newMessage+="${line}"
	newMessage+=$'\n'
done <<< "$commitMessage"
git commit --amend -m "${newMessage}"

