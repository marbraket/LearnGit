

#### Setup salt

    git clone https://github.com/markuskramerIgitt/salt.git
    git remote add upstream https://github.com/saltstack/salt.git
    git remote -vv


#### Update salt

```

git fetch --tags --all
git pull upstream develop
git push


|----------------------------------------------------------------------------+---------------------------------------------------|
| * * * revert changes to my working copy                                    |                                                   |
| git checkout .                                                             | revert changes on your working copy               |
| git clean -n                                                               | show delete                                       | 
| git clean -f                                                               | delete files                                      |   
| git clean -fd                                                              | delete file and folders                           |   
| git checkout v2016.11.1                                                    | 2016.11.1       (tag is fixed point in time)      |
| git checkout develop                                                       | branch                                            |
| git remote update                                                          | 4 restart fork                                    |
| git reset --hard upstream/develop --                                       | 4 restart fork                                    |
| git push origin develop --force                                            | 4 restart fork                                    |
| git push origin +develop                                                   | 4 restart fork                                    |


|----------------------------------------------------------------------------+---------------------------------------------------|
| * * * * Setup local blob for salt-windows-msi                              |                                                   |
| git remote add upstream https://github.com/saltstack/salt-windows-msi.git  | 0.2 Define upstream for salt-windows-msi          |


|----------------------------------------------------------------------------+---------------------------------------------------|
| * * * * Update local blob for libtorrent                                   |                                                   |
| git clone https://github.com/arvidn/libtorrent.git                         | 0.1 Get local libtorrent repository               |
| git remote add upstream https://github.com/arvidn/libtorrent.git           | 0.2 Define source                                 |
| git fetch --all                                                            | 1     download metadata                           |
| git pull upstream master                                                   | 2     download from  Git                          |
| git push                                                                   | 3     update my github fork (Web-interface CANNOT |
| git checkout -b PIECE_OF_WORK upstream/develop                             | local branch for new things                       |
| git checkout -b PIECE_OF_WORK upstream/2015.8                              | local branch for bug fixes                        |
| git branch -d the_local_branch_you_want_to_delete                          |                                                   |
| git branch setup_py_should_not_print_each_file                             |                                                   |
| git checkout setup_py_should_not_print_each_file                           |                                                   |
| git status                                                                 |                                                   |
| git commit -a                                                              |                                                   |
| git log                                                                    |                                                   |
| git rebase upstream/develop                                                | put my commit back on top after getting all other |
| git push origin nssm_description                                           |                                                   |
| git push origin setup_py_should_not_print_each_file                        |                                                   |
| git rebase upstream/setup_py_should_not_print_each_file                    | put my commit back on top after getting all other |
| git checkout v2016.3.1                                                     |                                                   |
| git clean -fxd                                                             |                                                   |
| git checkout develop                                                       |                                                   |
| git cherry-pick 9a2ef46                                                    | setup_py_should_not_print_each_file               |


```