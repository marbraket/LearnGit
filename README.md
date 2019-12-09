
## You have not concluded your merge (MERGE_HEAD exists)
 
Repeat:

    git merge --abort 
 
 
## SVN-Revert a file with uncommited changes (only changed in my working copy) to the latest commit 

    git checkout filename

## Remove on git but not local (unversion)

    git rm --cached FILE

and add file to .gitignore

### diff on file which is committed but not pushed

    git diff origin FILE

### see all commits on all branches that aren't pushed yet

Overview

    git diff --stat --cached origin/master

Show diff lines

    git diff --cached origin/master

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
    
### master branch and 'origin/master' have diverged
    
    git log HEAD..origin/master
    git rebase origin/master
    git pull --rebase 
    
[SO](https://stackoverflow.com/questions/2452226/master-branch-and-origin-master-have-diverged-how-to-undiverge-branches)


#### Setup salt 

    git clone https://github.com/markuskramerIgitt/salt.git
    git remote add upstream https://github.com/saltstack/salt.git
    git remote -vv


#### Local branch for new things in salt-windows-msi

    git checkout -b CLEANUP origin/master

#### Local branch for new things in salt

    git checkout -b PIECE_OF_WORK upstream/develop
    git push origin PIECE_OF_WORK                                     


#### Setup salt-enhancement-proposals

    git clone https://github.com/markuskramerIgitt/salt-enhancement-proposals.git
    git remote add upstream https://github.com/saltstack/salt-enhancement-proposals.git
   

#### Update salt-windows-msi (first local, then Github)

    git fetch --tags --all
    git pull --all
    git pull upstream master    
    git push
    
#### Update salt (first local, then Github) MASTER STATT DEVELOP 

    git fetch --tags --all
    git pull upstream develop
    git push origin

#### Checkout salt MASTER STATT DEVELOP

    git checkout master

#### Checkout tag (a fixed point in time) of salt

    git checkout v2016.11.1 


#### Revert changes

    git checkout .    | revert changes on your working copy
    git clean -n      | show delete
    git clean -f      | delete files
    git clean -fd     | delete file and folders

#### Bizarr, Restart fork?

    git remote update
    git reset --hard upstream/develop --
    git push origin develop --force
    git push origin +develop


#### REPO salt-windows-msi TASK setup
    git clone https://github.com/markuskramerIgitt/salt-windows-msi.git
    git remote add upstream https://github.com/saltstack/salt-windows-msi.git

####  REPO salt-windows-msi  TASK Update (first local, then Github)

    git pull upstream master
    git push

#### Setup/update libtorrent
    git clone https://github.com/arvidn/libtorrent.git
    git remote add upstream https://github.com/arvidn/libtorrent.git
    git fetch --all
    git pull upstream master
    git push


#### Else
   
    git checkout -b PIECE_OF_WORK upstream/2015.8                     | local branch for bug fixes
    git branch -d the_local_branch_you_want_to_delete                 |
    git branch setup_py_should_not_print_each_file                    |
    git checkout setup_py_should_not_print_each_file                  |
    git commit -a                                                     |
    git log                                                           |
    git rebase upstream/develop                                       | put my commit back on top after getting all other
    git push origin nssm_description                                  |
    git push origin setup_py_should_not_print_each_file               |
    git rebase upstream/setup_py_should_not_print_each_file           | put my commit back on top after getting all other
