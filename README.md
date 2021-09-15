### Rebase a branch to master on a forked repo

```
git rebase master YOUR_BRANCH
# DO NOT git pull BECAUSE IT SOMEHOW REVERTS THE REBASE
git push --force origin
```


### Add a second remote
```
git remote add cmcmarrow https://github.com/cmcmarrow/salt.git
git fetch cmcmarrow
git remote -vv
git checkout --track cmcmarrow/code_Page_for_shell ???
git checkout --track origin/code_Page_for_shell  ???

```

### "This branch is X commits ahead of UPSTREAM:master" 

#### If I want UPSTREAM and want to delete my local changes and commits:
```
git checkout master
git fetch upstream
git reset --hard upstream/master
git push --force
```

https://github.community/t/syncing-a-fork-leaves-me-one-commit-ahead-of-upstream-master/1435/3


### Resolve "You have not concluded your merge (MERGE_HEAD exists)"
Repeat:

    git merge --abort 
 
### SVN::revert a file with uncommited changes (only changed in my working copy) to the latest commit 
    git checkout filename

### SVN::unversion (remove from version control but leave local)
    git rm --cached FILE

and add file to .gitignore

### diff on file which is committed but not pushed
    git diff origin FILE

### see all commits on all branches that aren't pushed yet
Overview

    git diff --stat --cached origin/master

Show diff lines

    git diff --cached origin/master


### List branches with their latest commits and status
    git branch -avv


### Delete branch

    git branch -d FOO
    git push origin -d FOO

Other commands

    git cherry -v
    git diff 4ad879ee548630b6a9dd076d308acf2e667564ee^!

    git log --branches --not --remotes
    
### Undo commit  NOT pushed to remote
    git reset HEAD PATH_TO/FILE
    git reset HEAD~1
    git status


https://git-scm.com/docs/git-reset
    
### Undo add FILE
    git reset FILE
    
### Resolve "master branch and 'origin/master' have diverged"
    git log HEAD..origin/master
    git rebase origin/master
    git pull --rebase 
    
[from Stackoverflow](https://stackoverflow.com/questions/2452226/master-branch-and-origin-master-have-diverged-how-to-undiverge-branches)

### Create local branch for new things 

    git checkout -b NEW_THINGS 

    DO NOT ADD origin/master!!!!!!!!!!!!!!!!!! 
    git checkout -b NEW_THINGS origin/master


### Clone remote branch
Problem 1: `git clone` does not clone branches, but `git fetch origin` does.
Problem 2: `git fetch origin` does not clone branches if you did `git clone --depth=1`


    git fetch origin
    git brach -r         // show remote branches
          FIND! origin/B1
    git checkout B1
          VERIFY!    Branch 'B1' set up to track remote branch 'B1' from 'origin'.
          VERIFY!    Switched to a new branch 'B1'

### Update master branch of fork of salt
[Salt has this doc](https://docs.saltstack.com/en/latest/topics/development/contributing.html#keeping-salt-forks-in-sync)

        
THIS WORKS 

    git fetch --tags --all
    git pull upstream master

THIS DOES NOT WORK

    git pull --all
	
	
Rebase should not be needed because you should not work on master

    git checkout master
    git fetch upstream
    git merge --ff-only upstream/master || git pull --rebase origin master
    git push origin master
	

### Update non-master branch of fork of salt

YOUR MASTER BRANCH MUST NOT CONTAIN WORK

MAYBE THIS WORKS

    git pull --rebase


### SVN::revert all local changes

    git checkout .    | revert changes on your working copy
    git clean -n      | show delete
    git clean -f      | delete files
    git clean -fd     | delete file and folders


### Fork master has no changes but "This branch is X commits ahead of master"

    git reset --hard upstream/master
    git push --force

Don't pull in between

### Clone fork of salt and add upstream

    git clone               git@github.com:marbx/salt.git && cd salt
    git remote add upstream git@github.com:saltstack/salt.git
    git remote -vv
#### Fetch also tags

	git fetch --all
    git fetch --tags upstream
    git tag


### Setup fork of salt-community
    git clone               https://github.com/marbx/community.git && cd community
    git remote add upstream https://github.com/saltstack/community.git
    git remote -vv
    cd ..
    mv community salt_community


### Setup fork of salt-windows-msi
    git clone               git@github.com:marbx/salt-windows-msi.git && cd salt-windows-msi 
    git remote add upstream git@github.com:saltstack/salt-windows-msi.git

### Setup/update fork of libtorrent
    git clone    https://github.com/marbx/libtorrent.git && cd libtorrent
    git remote add upstream https://github.com/arvidn/libtorrent.git
    git fetch --all
    git pull upstream master
    git push

### Setup fork of pywin32
    git clone      https://github.com/marbx/pywin32.git && cd pywin32
    git remote add upstream https://github.com/mhammond/pywin32.git
    git remote -vv
     - - - - -
    pip install wheel
    python setup.py bdist_wheel 

### Setup fork of deluge
    git clone            https://github.com/marbx/deluge.git && cd deluge
    git remote add upstream https://github.com/deluge-torrent/deluge.git
    git remote -vv
    git fetch --all
    git pull upstream master
    git push


### Else
    git -Sfindme -p                                                   | show findme in all version
