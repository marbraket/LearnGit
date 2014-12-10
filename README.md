LearnMisc...
========

**Git**

    apt-get install git
    git config --global user.name markuskramerIgitt
    git config --system core.editor emacs
    git clone https://github.com/xyz.git
    git config --global http.proxy xyz
install

    git pull; 
download

    git add .; git commit -a -m "."; git push
mark for saving; save to local cache; upload to server



**VirtualBox**

Right Ctrl + Alt+Tab


**Salt install**

emacs /etc/apt/sources.list
deb http://debian.saltstack.com/debian/ wheezy-saltstack main
wget -q -O- "http://debian.saltstack.com/debian-salt-team-joehealy.gpg.key" | apt-key add -
apt-get update
apt-get install salt-master

