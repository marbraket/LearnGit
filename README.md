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
    git clone https://markuskramerIgitt:*******@github.com/markuskramerIgitt/Magni.git
    git config --global http.proxy xyz
    git config --global push.default simple

Download

    git pull; 

Upload 

    git add .; git commit -a -m "."; git push
    git push --repo https://markuskramerIgitt:*******@github.com/markuskramerIgitt/Magni.git


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

