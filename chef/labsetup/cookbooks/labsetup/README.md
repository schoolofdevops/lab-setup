# labsetup
###For os x:-

####Prerequisites to run cookbook on mac:-

Install brew on your local machine without sudo/root previlleges using this command:-

      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
 
#####cookbook used to install packages for mac os:-

- wget
- atom editor
- git
- vagrant (version-1.8.1)
- virtualbox (version-5.0.20)

###For windows:-

#####cookbook used to install packages for windows:-

- atom editor
- git
- vagrant (version-1.8.1)
- virtualbox (version-5.0.20)

#####Default attributes  

- modify installation package path as per your requirement for windows

		default['labsetup']['path '] = "C://'"
		
###Run cookbook locally:-

		  chef-client --local-mode -r 'recipe[labsetup]'
		  
###Note:-
On os x run without sudo privilleges



