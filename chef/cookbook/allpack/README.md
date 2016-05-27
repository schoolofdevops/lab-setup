# allpack

TODO: Enter the cookbook description here.


###chef code to install lab_setup supporting packages for windows.

**It Installs:-**

1.virtualbox

2.vagrant

3.atom editor

4.git for windows


**Imp:-**

Inside recipes remote_file location is menstioned which tells where to store all packages, modify this path as per your requirements. 



**To run this cookbook locally:-**

     chef-client --local-mode -r 'recipe[allpack]'
 
 
**On remote node:**
 
 1. move inside "allpack dir"

 2. enter command
     
      > berks install 

      > berks upload

3.converge cookbook

      knife ssh "*:*" -x User_name -P password "sudo chef-client"

