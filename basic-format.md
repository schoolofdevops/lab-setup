#Lab Setup Instructions

###Requires:-
**1.Virtualbox**

**2. Vagrant**

**3. Git**

**4. Atom editor**

**5. Conemu**

###1. Virtualbox step by step installation:-
**For Windows**

1. Download virtualbox:- Download virtualbox binaries from official virtualbox site for windows machine depending on 32bit/64bit configuration.

   [https://www.virtualbox.org/wiki/Downloads]()


2. Once virtualbox executable is downloaded double click on.This will display installation welcome dialog box this will allow you to choose where to install virtualbox & additional virtualbox applications.
Choose default configuration & follow the instructions this will install virtualbox on your windows machine.

**For mac os**

1. Download Virtualbox .dmg file suitable to your mac os version.
2. Double click on the downloaded file, a windows will appear telling you to double click on "virtualbox.mpkg" file display on that window.
3. This start installer, allow you to choose where to install virtualbox. once it is done virtualbox icon appear in your application folder.

###2. Vagrant step by step installation:-

1. Installing vagrant is simple visit official vagarnt download page, depending on your host machine choose package & download it.

    [https://www.vagrantup.com/downloads.html]()

2. It automatically add vagrant to your system path, if not then logged out once & logged in it will be their.
3. once all done create a directory called vagrant using command line then inside that enter command
		
		`vagrant init`
This will create a file in your current directory with name vagrantfile.

4. Open this file looks at its content once their all necessary configuration require to setup vm. But most of are commented so depending on your need uncomment lines
5. Once this done now its time to install base box for your vm, depending on your need install base boxes from vagrant official base box images.
6. We will shown you one example, we are going to install ubuntu base box this can be done with command
   
   `vagrant init ubuntu/trusty64`
   
  this will install our base box image. once its done     check your vagrantfile ,you will notice it add base box there.
7. Now its time to run your machine, enter command
  
   `vagrant up`
 
 this will spin up your vm.
 
8. Now you can logged in into your machine with command

  `vagrant ssh`
  
9. To list out all the commands use by vagrant enter 
   
   `vagrant help`
   
###3. Git Installation:-

1. To install git on window visit page

   [https://git-scm.com/download/win]()
   
   this will directly start download git for windows.
   
2. Other way is to download github which provide both GUI & command line interface. It aslo work well with powershell. you can download github from here -
  
   [http://windows.github.com.]() 
   
###4. Atom Editor:-

1. To download Atom editor visit 
  
   [https://atom.io/]()
  
   select your package depends on your system from more packages & download appropriate one.
  
   **for windows direct executable:-**
  
   [https://github.com/atom/atom/releases/download/v1.7.4/AtomSetup.exe]()
    
   **windows zip package:-**
    
   [https://github.com/atom/atom/releases/download/v1.7.4/atom-windows.zip]()
    
   **mac zip package:-**
 
   [https://github.com/atom/atom/releases/download/v1.7.4/atom-mac.zip]()
   
###5. Conemu Installation:-  

1. Is a windows console emulator with multiple tabs.
2. Easy to download with .exe file or using zip package depends on system architecture.
3. reuirement windows 2000 or later

  exe package:-
 [http://www.fosshub.com/ConEmu.html/ConEmuSetup.150813g.exe]()
 
 zip package:-
 [http://www.fosshub.com/ConEmu.html/ConEmuPack.150813g.7z]()       
   
   
             
