#Labsetup_windows module

###Prerequisites to run this puppet module:-
- All packages that to be installed require on your local machine (exe/msi files) 
- Here it stored in directory
<pre>
    |
    |--puppet
    |       |
    |       |--modules
    |       |         |
    |       |         |--labsetup_windows
    |       |         |                 |
    |       |         |                 |--files
</pre>

###Puupet module is used to install packages:-

- git
- atom editor
- vagarant(version-1.8.1)
- virtualbox(version-5.0.20)


###To run module locally

          sudo puppet apply manifests/init.pp
