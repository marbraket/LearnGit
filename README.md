
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

### Retrieve remote tags from upstream
    git fetch --tags upstream
    git tag

### Delete branch

    git branch -d FOO
    git push origin -d FOO

Other commands

    git cherry -v
    git diff 4ad879ee548630b6a9dd076d308acf2e667564ee^!

    git log --branches --not --remotes
    
### Undo commit  NOT pushed to remote
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
    git checkout -b NEW_THINGS origin/master
    git push origin NEW_THINGS                                     

### Switch to remote branch (git clone does not clone branches) 
    git checkout -b BRANCH origin/BRANCH

### Update fork of salt-windows-msi and salt (first local, then Github)
    git pull upstream master
    git push origin

Why does pull --all not work?

    git fetch --tags --all
    git pull --all   DOES NOT WORK


### SVN::revert all local changes
    git checkout .    | revert changes on your working copy
    git clean -n      | show delete
    git clean -f      | delete files
    git clean -fd     | delete file and folders

### Setup fork of salt 
    git clone               https://github.com/markuskramerIgitt/salt.git
    git remote add upstream https://github.com/saltstack/salt.git
    git remote -vv

### Setup fork of salt-windows-msi
    git clone       https://github.com/markuskramerIgitt/salt-windows-msi.git
    git remote add upstream https://github.com/saltstack/salt-windows-msi.git

### Setup/update fork of libtorrent
    git clone    https://github.com/markuskramerIgitt/libtorrent.git
    git remote add upstream https://github.com/arvidn/libtorrent.git
    git fetch --all
    git pull upstream master
    git push

### Setup fork of pywin32
    git clone      https://github.com/markuskramerIgitt/pywin32.git
    git remote add upstream https://github.com/mhammond/pywin32.git
    git remote -vv
    git fetch --all
    git pull upstream master
    git push

### Setup fork of 
    git clone            https://github.com/markuskramerIgitt/deluge.git
    git remote add upstream https://github.com/deluge-torrent/deluge.git
    git remote -vv
    git fetch --all
    git pull upstream master
    git push


### Else
    git -Sfindme -p                                                   | show findme in all version
