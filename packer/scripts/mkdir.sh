
REPO="chef docker java lamp puppet"
mkdir /usr/local/repo 
for dir in $(echo $REPO)
 do  
   mkdir /usr/local/repo/$dir
   chmod u+s /usr/local/repo/$dir
done


mkdir /tmp/install
mkdir /tmp/install/base  
#mkdir /tmp/install/net   
#mkdir /tmp/install/tcptr

