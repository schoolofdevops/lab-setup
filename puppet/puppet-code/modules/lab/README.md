### Lab setup software installation using puppet with chocolatey provider

**Requirements:-**

- chocolatey installed on puppet agent

  To install chocolatey using puppet forge:-

    >  puppet module install chocolatey-chocolatey

**1. Run module locally:**

   go to lab module then lab directory & execute this command

      puppet apply manifests/init.pp
    
**2. Run on remote register agent**     
    
       puppet agent --test
