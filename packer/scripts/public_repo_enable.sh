#!/bin/bash

 REPO="base updates extras epel"
 for repo in $(echo $REPO)
   do
      sudo yum-config-manager --enable $repo
 done     
 sudo yum clean all
 sudo yum makecache 
 exit 0