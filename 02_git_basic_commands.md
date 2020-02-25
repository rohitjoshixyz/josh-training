###  Click for [VIM editor commands](https://www.phy.ornl.gov/csep/unix_guide/node15.html)

---
## Git Commands

#### git config --global user.name "Rohit Joshi"

Configure the author name

#### git config --global user.email rohit.joshiadvanced@gmail.com

Configure the email address to be used with your commits

#### git init

Create a new local repository

#### git clone /path/to/repository

For a remote server, use

`git clone username@host:/path/to/repository`

	
#### git add <filename> and git add *

Add files	Add one or more files to staging (index)

#### git commit -m "Commit message" and git commit -a

Commit changes to head (but not yet to the remote repository)
Commit any files you've added with git add, and also commit any files you've changed since then

#### git push origin master

Send changes to the master branch of your remote repository

#### git status

Status	List the files you've changed and those you still need to add or commit

#### git remote add origin <server>

Connect to a remote repository	If you haven't connected your local repository to a remote server, add the server to be able to push to it

#### git remote -v

List all currently configured remote repositories

#### git checkout -b <branchname>

Create a new branch and switch to it

#### git checkout <branchname>

Switch from one branch to another	

#### git branch

List all the branches in your repo, and also tell you what branch you're currently in	

#### git branch -d <branchname>

Delete the feature branch

#### git push origin <branchname>

Push the branch to your remote repository, so others can use it

#### git push --all origin

Push all branches to your remote repository

#### git push origin :<branchname>

Delete a branch on your remote repository

#### git pull

Update from the remote repository	Fetch and merge changes on the remote server to your working directory

#### git merge <branchname>

To merge a different branch into your active branch	

#### git diff and git diff --base <filename> and git diff <sourcebranch> <targetbranch>

View all the merge conflicts
View the conflicts against the base file
Preview changes, before merging

#### git add <filename>

After you have manually resolved any conflicts, you mark the changed file

#### git tag 1.0.0 <commitID>

You can use tagging to mark a significant changeset, such as a release

#### git log

Lists the commit history. CommitId is the leading characters of the changeset ID, up to 10, but must be unique. Get the ID using git log.

#### git push --tags origin

Push all tags to remote repository

#### git push --tags origin


#### git checkout -- <filename>

Undo local changes. If you mess up, you can replace the changes in your working tree with the last content in head
Changes already added to the index, as well as new files, will be kept.

#### git fetch origin and then git reset --hard origin/master

Instead, to drop all your local changes and commits, fetch the latest history from the server and point your local master branch at it, do this

#### git grep "foo()"

Search	Search the working directory for foo()