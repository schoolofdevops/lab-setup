###Lab-setup softwaare install using puppet 

Here all the **exe** &  **msi** file present on puppetmaster , then transfer inti windows location & installation done.

**Directory stucture:-**

  +--etc/
      
      +-- puppet
        
           +-- module
           
                +-- lab-v2
                 
                    +-- files
                         (contain all packages exe & msi files)
                  
                    +-- manifests
                    
                        +-- init.pp
                            (contain code)
                            
                        
                            
  **Run module locally**
  
     > puppet apply manifests\init.pp
     
  **With register puppet agent:-**
  
     > puppet agent --test

**Note:-**  

change souce location depends on your system path & requirements

Files directory caintains all the exe & msi transfer to remote host & then installation can be done , so neccessary all executable & msi inside file directory
     
                    
