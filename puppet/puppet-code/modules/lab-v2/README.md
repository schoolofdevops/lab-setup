###Install lab-setup software using puppet with pre install exe/msi file on host server


 **Run module locally**
  
     > puppet apply manifests\init.pp
     
  **With register puppet agent:-**
  
     > puppet agent --test

**Note:-**  

change souce location depends on your system path & requirements inside **init.pp**

**Files directory must  caintains all exe & msi files , which we have to transfer inside remote machine & then installation can be done.**
