# Labsetup_mac
cookbook used to install packages for mac os:-

- brew
- wget
- atom editor
- git
- vagrant (version-1.8.1)
- virtualbox (version-5.0.20)

###Run cookbook locally:-

		chef-client --local-mode -r 'recipe[labsetup_mac]'


###On remote client/node:-
####Add to run list
<pre>
   "run_list": [
  "recipe[labsetup_mac]"
</pre>

####Run using:-

		chef-client -j /path/to/file.json

