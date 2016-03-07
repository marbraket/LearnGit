LearnGit
========
	
Install Debian 

    apt-get install git 

Install MacOS 10.6

    git Version 2.2.1 from http://git-scm.com/

Setup

    git config --global user.name markuskramerIgitt
    git config --global user.email you@example.com
    git config --system core.editor emacs
    git config --global push.default simple
    git config --global http.proxy xyz
    IF YOU WANT TO STORE YOUR PASSWORD AS PLAIN TEXT:
       git clone https://markuskramerIgitt:*******@github.com/markuskramerIgitt/LearnGit.git
    ELSE:
      git clone https://github.com/markuskramerIgitt/LearnGit.git
      IF ON UNIX:
        git config --global credential.helper cache
        git config --global credential.helper "cache --timeout=3600"
      IF ON WINDOWS:
        git config --global credential.helper wincred

Download

    git pull; 

Upload 

    git add .; git commit -a -m "."; git push
    git push --repo https://markuskramerIgitt:*******@github.com/markuskramerIgitt/LearnGit.git


Status (added files, unadded changes)

    git status


Diff what is not added   

    git diff 


Diff what is added but not "comitted".  

    git diff --cached

Diff what is "comitted" but not "pushed"  ?????????????????????????????????????????????????????????????????????????


Discard local changes

    git checkout FILE
    git checkout -- .

