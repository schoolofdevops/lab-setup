#Labsetup_windows cookbook

###cookbook used to install packages for windows:-

- atom editor
- git
- vagrant (version-1.8.1)
- virtualbox (version-5.0.20)

###Default attributes 

- modify installation package path as per your requirement

		default['labsetup']['path '] = "C://'"
		
###Run cookbook locally:-

		chef-client --local-mode -r 'recipe[labsetup_windows]'


###On remote client/node:-
####Add to run list
<pre>
   "run_list": [
  "recipe[labsetup_windows]"
</pre>

####Run using:-

		chef-client -j /path/to/file.json

