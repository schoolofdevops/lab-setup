# Labsetup_mac

###Prerequisites to run cookbook:-
- Install brew on your local machine without sudo/root previlleges using this command:-
   
		 /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

###cookbook used to install packages for mac os:-

- wget
- atom editor
- git
- vagrant (version-1.8.1)
- virtualbox (version-5.0.20)

###Run cookbook locally:-

	     	sudo chef-client --local-mode -r 'recipe[labsetup_mac]'


###On remote client/node:-
####Add to run list
<pre>
   "run_list": [
  "recipe[labsetup_mac]"
</pre>

####Run using:-

		chef-client -j /path/to/file.json

