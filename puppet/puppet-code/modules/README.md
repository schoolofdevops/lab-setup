# lab-setup
###Puppet automation code for windows package installation using chocolatey

**Requirement:-**

Chocolatey should be prior install on remote host.


**Directory structure:-**

 
 +-- etc/
     
     +-- puppet
      
          +-- module
      
               +-- lab
       
                   +-- manifests
       
                       +-- init.pp


**To run module

1. Run on windows register agent :-    
    
     > puppet agent --test 
    
2. Run module locally on windows machine without registering agent:-

   just go to module directory inside lab & run this command

    > puppet apply manifests/init.pp

