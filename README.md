Summer 2014 TecBIO REU
======================

Fun with cilia, autoregressive modeling, and spectral graph theory. Because math is _fun!_

# Basics of Git

Here are a few commands that should get you up and running with github.

## git clone git@github.com:magsol/tecbio.git

This command "clones" the repository into your local machine, automatically creating a folder called "capstone" in your current directory.

## git status

Issue this at anytime to see the status of your local repository. It will list files that have been changed from the last commit, as well as files that are in your repository but which have not yet been added to version control.

## git add some_new_file.txt

When you create a new file in your repository, initially it is not under version control and will not appear in any commits you make. You have to explicitly place it under git control with this command.

## git commit file_you_want_to_commit.txt -m "Commit message."

Once you've done some editing to the codebase, you'll want to commit these changes to the repository. This is where the distinction between the local repository on your machine and the remote repository (e.g. on github) becomes important: this commits the changes to your *local* repository, with the accompanying message in quotes (usually you want this to be a description of what changes you're committing: new features, bug fixes, refactoring, etc).

## git push

This is how you sync your local repository with the remote one (e.g. github). When you've made one or more commits to your local repository, you can push these commits out to the remote repository with this command. All the commits will show up on the github web page, and your collaborators (i.e., me) will be able to see your changes.

## git pull

Get in the habit of issuing this command almost as often as `git status`. It will pull down any changes pushed by others to the remote repository into your local repository.

## Branching and merging

This is some advanced stuff that you won't need just yet but which is still incredibly useful. We'll go over this in detail later, but it allows multiple people to implement huge changes to the codebase without affecting the efforts of everyone else. In effect, branching allows you to "fork" off the codebase and implement any edits you want while others continue to commit to the "main" branch. You can even switch between branches to work on different versions of the same codebase simultaneously. Eventually, you'll want to merge the branches back together, which is a non-trivial task, but git makes it tractable. Here's a useful link: http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging

## Useful commands

`git branch -d <branchName>` : Deletes a local branch.

`git push origin --delete <branchName>` : Deletes a branch on github.
