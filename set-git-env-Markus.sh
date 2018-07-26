export HOME=$APPDATA
touch $APPDATA/.gitconfig
git config --global push.default simple
git config --global credential.helper wincred
git config --global user.name  markuskramerIgitt
git config --global user.email markuskramerIgitt@gmail.com
git config --global gpg.program "c:/Program Files (x86)/GnuPG/bin/gpg.exe"
git config --global user.signingkey 1C7577B4
git config --global commit.gpgsign true
echo ________________ git config --global --list ________________
     git config --global --list
echo ________________ git config  --list  ________________
     git config  --list
