## Git advanced commands
---
####
  - [git reset](https://www.atlassian.com/git/tutorials/undoing-changes/git-reset)
    - git reset is a powerful command that is used to undo local changes to the state of a Git repo
  - [git revert](https://www.atlassian.com/git/tutorials/undoing-changes/git-revert)
    - git revert simply creates a new commit that is the opposite of an existing commit. It leaves the files in the same state as if the commit that has been reverted never existed
  - [git cherry-pick](https://www.atlassian.com/git/tutorials/cherry-pick)
    - git cherry-pick is a powerful command that enables arbitrary Git commits to be picked by reference and appended to the current working HEAD. Cherry picking is the act of picking a commit from a branch and applying it to another. git cherry-pick can be useful for undoing changes. For example, say a commit is accidently made to the wrong branch. You can switch to the correct branch and cherry-pick the commit to where it should belong.
  - [git rebase](https://www.atlassian.com/git/tutorials/rewriting-history/git-rebase)
    - Rebasing is the process of moving or combining a sequence of commits to a new base commit. We generally do this when the commits of master branch have gone ahead from the time we branched a new feature branch and we need to rewrite branch's commit history.
  - [Difference between merge and rebase](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)
    - Rebase vs Merge. Rebasing and merging are both designed to integrate changes from one branch into another branch but in different ways. When you do rebase a feature branch onto master, you move the base of the feature branch to master branch's ending point. ... Merging adds a new commit to your history.