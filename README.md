LearnGit
========
	
Install

    IF ON Debian:
      apt-get install git 
    IF ON MacOS 10.6:
      git Version 2.2.1 from http://git-scm.com/
    IF ON Windows:
      browse to https://git-scm.com/download/win
Setup

    git config --global user.name markuskramerIgitt
    git config --global user.email you@example.com
    git config --system core.editor emacs
    git config --global push.default simple
    git config --global http.proxy xyz
    
Download the first time  (password)

    IF YOU WANT TO STORE YOUR PASSWORD AS PLAIN TEXT:
      git clone https://markuskramerIgitt:*******@github.com/markuskramerIgitt/LearnGit.git
    ELSE:
      git clone https://github.com/markuskramerIgitt/LearnGit.git
      IF ON UNIX:
        git config --global credential.helper cache
        git config --global credential.helper "cache --timeout=3600"
      IF ON WINDOWS:
        git config --global credential.helper wincred

Download the first time    (branch)

    git clone -b 2015.5 --single-branch https://github.com/saltstack/salt.git

Download again

    git pull; 

Upload 

    git add .; git commit -a -m "."; git push


Add file gold.txt to the local "thingy"

    git add gold.txt


Undo add file gold.txt to the local "thingy"

    git reset HEAD gold.txt


Status (added files, unadded changes)

    git status


Diff what is not added   

    git diff 


Diff what is added but not "comitted".  

    git diff --cached

Diff what is "comitted" but not "pushed"?

     TODO
     TODO

Discard local changes? 

    git checkout FILE
    git checkout -- .

Show all tags (tags in Salt start with v)

    git tag -l
    

Links

https://jamesmckay.net/2016/02/signing-git-commits-with-gpg-on-windows/