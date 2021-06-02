## 1 Create or checkout branch B1

    git checkout -b B1
    git checkout B1


## 2 Update origin/master

    git fetch origin
    git fetch upstream          ??
    git pull upstream master    ??
    

## 3 Interactive rebase B1 onto origin/master and squash

    git rebase -i origin/master    // to reduce my commits
    git rebase -i upsteam/master   ?? to stay up to date

(not covered: git rebase -i HEAD~4

Edit to

    pick 8888888 Commit message 1
    squash 8888888 Commit message 2
    squash 8888888 Commit message 3

## 4 push -f

You must `push -f` (after the first push) because you replace the remote head of your branch with your local, potentially overwriting a 3rd party head.



## Links
https://medium.com/@dirk.avery/the-definitive-git-rebase-guide-dbd7717f9437
