# git unfuck
a git alias that resets the current local and the remote branch to the second last commit, for when you've oopsed the last commit and already pushed it.

## the command

```sh
git reset --hard HEAD~1 && git push --force
```

This alias uses the `git reset` command to reset the current branch to the second last commit `(HEAD~1)`, thereby removing the last commit from the branch. The `--hard` option discards any changes in the working directory and index.


The `git push --force` command is used to force-push the reset branch to the remote repository, overwriting the previous commit. This is necessary because the branch's history has been rewritten, a regular `git push` would be rejected by the remote repository.
## installation

```sh
curl -L https://raw.githubusercontent.com/thorinaboenke/git_unfuck/main/install.sh | sudo bash
```

